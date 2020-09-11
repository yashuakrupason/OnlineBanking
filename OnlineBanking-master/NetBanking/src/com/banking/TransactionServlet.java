package com.banking;
import com.banking.Database.*;
import javax.servlet.http.HttpServlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banking.Model.*;
@WebServlet("/TransactionServlet")
public class TransactionServlet extends HttpServlet {
	int TAmount;
	boolean output;
	String tid,rAccNo,Ttype,ifsc;
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException,NullPointerException {
		PrintWriter out = response.getWriter();
		
		rAccNo = (String)request.getParameter("rAccNo");
		Ttype = (String)request.getParameter("Ttype");
		TAmount = Integer.parseInt(request.getParameter("Amount"));
		ifsc = (String)request.getParameter("ifsc");
		System.out.println("  " + rAccNo+ Ttype);
		//getting username
		HttpSession session = request.getSession();
		CustomerModel cm = null;
		cm = (CustomerModel)session.getAttribute("userDetails");
		String username = (String)cm.getUsername();
		System.out.println("  " + username);
		
		
		DbOperation dbOperation = new DbOperation();
		int Bal = cm.getAmount();
		boolean RAcc = dbOperation.SearchAcc(rAccNo);
		System.out.println(RAcc+ " ");
		String ifscDB = dbOperation.SearchIfsc(rAccNo);
		System.out.println(ifscDB+ " "+ifsc);
		if(TAmount<=Bal && TAmount>0) {
			if(ifscDB.equals(ifsc) && RAcc) {
		
		// Generating transaction id
		Random rand = new Random();
		int random_num = 1000000 + rand.nextInt(9999999);
		tid = "txid" + random_num;
		System.out.println(tid);

		//Getting Current date
		DateFormat df = new SimpleDateFormat("yyyy-mm-dd");
		String tdate = df.format(new Date());
		
		// Setting all variables to model class
		TransactionModel tm = new TransactionModel();
		tm.setAmount(TAmount);
		tm.setDate(tdate);
		tm.setRAccount_no(rAccNo);
		tm.setStatus(0);
		tm.setTid(tid);
		tm.setTtype(Ttype);
		tm.setUser(username);
		try {
		
			output = dbOperation.insertTxnDetails(tm);
			
			}
		catch (Exception e) {
			// TODO Auto-generated catch block
            System.out.println("txn failed");
            RequestDispatcher rd = request.getRequestDispatcher("Transaction.jsp");
			rd.forward(request, response);
			output =false; 
            }
		String op;
		if(output==true) {
			op="true";
		}else {
			op="false";
		}
		request.setAttribute("output",op);
		if(output==true) {
			int t= dbOperation.TransferMoney(rAccNo,Bal,TAmount,username);
			System.out.println("txn processed"+t);
			request.setAttribute("tm",tm);
			 RequestDispatcher rd = request.getRequestDispatcher("Transaction_processing.jsp");
				rd.forward(request, response);
		}else {
			RequestDispatcher rd = request.getRequestDispatcher("Transaction.jsp");
			rd.forward(request, response);
		}
}
			//if accNo is not present
			else {
				request.setAttribute("txnS", "false");
				System.out.println("RAccNo not present");
				RequestDispatcher rd = request.getRequestDispatcher("Transaction.jsp");
				rd.forward(request, response);
			}
			}
		//if amount is <0 or >bal
		else {
			request.setAttribute("txnS", "false1");
			System.out.println("Amount not present");
			RequestDispatcher rd = request.getRequestDispatcher("Transaction.jsp");
			rd.forward(request, response);
			}
		}
}
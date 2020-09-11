package com.banking;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.banking.Database.DbOperation;
import com.banking.Model.CustomerModel;
import com.banking.Model.LoanModel;

@WebServlet("/Loan")
public class FetchLoan extends HttpServlet {
	String loan_type;
	float loan_amt, loan_dur, interest_rate, loan_amt_paid;
	int isVerified, loan_id;
	Connection conn;
	Statement stmt;
	LoanModel lm = null;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("Im here ");
		loan_type = request.getParameter("loan_type");
		loan_dur = Float.parseFloat(request.getParameter("loan_dur"));
		interest_rate = Float.parseFloat(request.getParameter("getInterest"));
		loan_amt = Float.parseFloat(request.getParameter("loan_amt"));

		System.out.println(loan_type);

		HttpSession session = request.getSession();
		CustomerModel cm = null;
		cm = (CustomerModel) session.getAttribute("userDetails");
		String username = (String) cm.getUsername();

		DbOperation dbOperation = new DbOperation();

		lm = new LoanModel();

		lm.setInterest_rate(interest_rate);
		lm.setIs_verified(0);
		lm.setLoan_duration(loan_dur);
		lm.setLoan_amt_paid(0);
		lm.setLoan_amt(loan_amt);
		lm.setLoan_type(loan_type);
		lm.setUsername(username);
		try {
			dbOperation.FetchLoanDetails(lm);
			RequestDispatcher rd = request.getRequestDispatcher("Services.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}

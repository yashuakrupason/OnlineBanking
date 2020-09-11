package com.banking;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.banking.Database.DbOperation;
import com.banking.Email.sendEmail;
import com.banking.Model.CustomerModel;

@WebServlet("/Register")
public class CustomerReg extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		System.out.println("called");

		String accno = request.getParameter("accno");
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
//		System.out.println(accno);
//		System.out.println(uname);
//		System.out.println(pass);

		CustomerModel cm = new CustomerModel();
		cm.setAccount_number(accno);
		cm.setUsername(uname);
		cm.setPassword(pass);
		cm.setIs_verified(0);
//		city = request.getParameter("city");
		boolean output;
//		request.setAttribute("Account_details", am);
		DbOperation dbOperation = new DbOperation();
		ServletConfig config = getServletConfig();
		String driver = config.getInitParameter("api");
		System.out.println(driver);

		try {
			// insertting into cusstomer Table by instatnatiating Db operation class
			output = dbOperation.customerSignup(cm);
//			System.out.println("insertok");
			sendEmail email = new sendEmail();
//			email.sendSimpleMessage(uname, "Verification", "You have been under verification process we will let you know after yours approved",driver);
			// Go to login Page
			RequestDispatcher rd = request.getRequestDispatcher("Login.jsp");
			rd.forward(request, response);

		} catch (Exception e) {
			// TODO Auto-generated catch block
//            System.out.println("okd");

			e.printStackTrace();
		}
	}
}

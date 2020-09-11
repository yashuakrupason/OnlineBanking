
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"><%@page import="com.banking.Database.db_con"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String user=request.getParameter("user");
int id=Integer.parseInt(request.getParameter("id"));

Connection con = null;
PreparedStatement ps = null;
Statement st=null;

try
{
	db_con connect = new db_con();
	con = connect.getConnection();
	
	 PreparedStatement st1 = con.prepareStatement("select * from Loan where Loan_id=?");
     st1.setInt(1, id); 
     
     ResultSet vbc=st1.executeQuery();
     vbc.next();
	float amount=Float.parseFloat(vbc.getString(2));
	System.out.println(amount);
	String sql="update loan set Is_VERIFIED=? where Loan_id=? and Username=?";
	ps = con.prepareStatement(sql);
    ps.setInt(1,1);
	ps.setInt(2, id);
	ps.setString(3,user);
	int i = ps.executeUpdate();
	
	System.out.println("Record Updated Successfully");
	
	PreparedStatement xs=con.prepareStatement("update bank_account set AMOUNT=AMOUNT+'"+amount+"' where ACCOUNT_MAIL= '"+user+"'");
	xs.executeUpdate();
	
	RequestDispatcher rd = request.getRequestDispatcher("LoanDisplay.jsp");
	rd.forward(request, response);
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</head>
</html>
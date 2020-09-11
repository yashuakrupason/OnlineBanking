<%@page import="com.banking.Database.db_con"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String uname=request.getParameter("uname");
String verified=request.getParameter("ver");
String acno=request.getParameter("acno");
if(uname != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
	db_con connect = new db_con();
	con = connect.getConnection();
	out.print(uname);
	out.print(verified);



	String sql="update customer set IS_VERIFIED=? where username=?";
	ps = con.prepareStatement(sql);
    ps.setString(2, uname);

	ps.setInt(1, Integer.parseInt(verified));

	


	int i = ps.executeUpdate();
if(i > 0)
{
	out.print("Record Updated Successfully");
	RequestDispatcher rd = request.getRequestDispatcher("Show_customers.jsp");
	rd.forward(request, response);
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(Exception e)
{
	e.printStackTrace();


}
}
%>
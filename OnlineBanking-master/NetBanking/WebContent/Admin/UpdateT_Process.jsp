
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"><%@page import="com.banking.Database.db_con"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<%
String uname=request.getParameter("un");
String tid=request.getParameter("tid");
String ttype=request.getParameter("ttype");
String date=request.getParameter("date");
String amt=request.getParameter("amt");
String racc=request.getParameter("racc");
String txns=request.getParameter("txns");
if(tid != null)
{
Connection con = null;
PreparedStatement ps = null;
try
{
	db_con connect = new db_con();
	con = connect.getConnection();
	out.print(uname);
	out.print(tid);
	out.print(ttype);
	out.print(amt);
	out.print(racc);
	out.print(date);
	out.print(txns);

	



	String sql="update transactions set TRANSACTION_STATUS=? where TRANS_ID=?";
	ps = con.prepareStatement(sql);
    ps.setString(2, tid);

	ps.setInt(1, Integer.parseInt(txns));

	


	int i = ps.executeUpdate();
if(i > 0)
{
	out.print("Record Updated Successfully");
	RequestDispatcher rd = request.getRequestDispatcher("Show_txn.jsp");
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

</head>
</html>
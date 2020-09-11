<%@page import="com.banking.Database.db_con"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
	db_con connect = new db_con();
	
	Connection conn1 = connect.getConnection();
	out.println(id); 

	PreparedStatement pst = conn1.prepareStatement("delete from transactions where TRANS_ID = ?");
    pst.setString(1, id);

     pst.executeUpdate();
	out.println("Data Deleted Successfully!");
	RequestDispatcher rd = request.getRequestDispatcher("Show_txn.jsp");
	rd.forward(request, response);

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
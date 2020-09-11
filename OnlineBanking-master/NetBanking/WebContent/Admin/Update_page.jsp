<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.banking.Database.db_con"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
	<jsp:include page="header.jsp" />
	<div class="container-fluid">
	<div class="row">
<%
String id = request.getParameter("id");


Connection conn = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
db_con connect = new db_con();
conn = connect.getConnection();
System.out.println("In Upadte");
PreparedStatement pst = conn.prepareStatement("select *  from customer where username = ?");
pst.setString(1, id);

resultSet = pst.executeQuery();
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="Update_process.jsp">

<br>
Username:<br>
<input type="text" name="uname" value="<%=resultSet.getString(1) %>">
<br>
Is_verified:<br>
<input type="text" name="ver" value="<%=resultSet.getString(3) %>">
<br>
Account Number:<br>
<input type="text" name="acno" value="<%=resultSet.getString(4) %>">
<br>

<input type="submit" value="submit">
</form>
<%
}
conn.close();
} catch (Exception e) {
	
e.printStackTrace();
}
%>
</div>
</div>
</body>
</html>
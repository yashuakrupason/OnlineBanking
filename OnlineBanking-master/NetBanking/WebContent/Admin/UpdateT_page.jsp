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
PreparedStatement pst = conn.prepareStatement("select *  from transactions where TRANS_ID = ?");
pst.setString(1, id);

resultSet = pst.executeQuery();
while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
<body>
<h1>Update data from database in jsp</h1>
<form method="post" action="UpdateT_Process.jsp">

<br>
Trans id:<br>
<input type="text" name="tid" value="<%=resultSet.getString(1) %>">
<br>
Trans_type:<br>
<input type="text" name="ttype" value="<%=resultSet.getString(2) %>">
<br>
Amount:<br>
<input type="text" name="amt" value="<%=resultSet.getString(3) %>">
<br>
Reciever Accno:<br>
<input type="text" name="racc" value="<%=resultSet.getString(4) %>">
<br>
Date:<br>
<input type="text" name="date" value="<%=resultSet.getString(5) %>">
<br>
Status:<br>
<input type="text" name="txns" value="<%=resultSet.getString(6) %>">
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
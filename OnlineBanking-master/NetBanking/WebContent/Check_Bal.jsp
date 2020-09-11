<%@page import="com.banking.Database.DbOperation"%>
<%@page import="com.banking.Model.CustomerModel"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
		<jsp:include page="header.jsp" />
	</div>
	<%! CustomerModel ac; %>

	<%
		ac = (CustomerModel) session.getAttribute("userDetails");
		String account_no = ac.getAccount_number();
		int amount=ac.getAmount();
		
	%>
	<div class="container h-100 d-flex justify-content-center">
		<div class="row vertical-center-row" style="margin-top: 50px;">
			<div class="alert alert-success col-md-6"
				role="alert">
				<h4 class="alert-heading">Success!</h4>
				<p>
					<strong>Here Is Your Account Balance!!</strong>
				</p>
				<p class="mb-0">
					<b>Account Number: </b>
					<%=account_no%>
				</p>
				<p class="mb-0">
					<b>Amount: </b>
					<%=amount%>
				</p>
			</div>
		</div>
		<!-- Footer start here -->
		
	</div>
</body>
</html>
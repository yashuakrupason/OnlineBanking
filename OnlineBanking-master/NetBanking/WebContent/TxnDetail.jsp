<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>Corporate Bank a Banking</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<meta name="keywords" content="Corporate Bank a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- .css files -->
	<link href="css/bars.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/font-awesome.css" />
<!-- //.css files -->
<!-- Default-JavaScript-File -->
	<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- //Default-JavaScript-File -->
<!-- fonts -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Ropa+Sans:400,400i&amp;subset=latin-ext" rel="stylesheet">
<!-- //fonts -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- //scrolling script -->
</head>
<!-- //Head -->
<!-- Body -->
<body>
	<div class="top-main">
		
		<div class="social-icons">
		<ul class="top-icons">
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
			<li><a href="Logout.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
		</ul>
		<div class="form-top">
		
		</div>
			<div class="clearfix"></div>
		</div>
			<div class="clearfix"></div>
	</div>
		<!-- Top-Bar -->
		<div class="top-bar">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
				<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="Services.jsp" >home</a></li>
							<li><a href="about" >about</a></li>
							<li><a href="Services.jsp" >services</a></li>
							
							<li><a href="#contact" class="scroll">contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="logo">
			<a href="index.html"><!--<i class="fa fa-inr" aria-hidden="true"></i>-->Corporate <span>bank</span></a>
		</div>

<%@ page import = "java.sql.*"%>
<%@ page import="com.banking.Model.*" %>
<%Class.forName("com.mysql.cj.jdbc.Driver");
 %>
 <% %>
 <H1 align="center">Transaction History</H1>
 <%HttpSession ses = request.getSession();
 	CustomerModel cm = null;
	cm = (CustomerModel)session.getAttribute("userDetails");
	String username = (String)cm.getUsername();
	System.out.println("  " + username);
 %>
 <%
 Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/bank?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC", "root", "");
 PreparedStatement st = conn.prepareStatement("select * from transactions where username='"+username+"'");
	ResultSet rs = st.executeQuery();
	
 %>
 <br><br><br>
 <table border="1" align="center" bgcolor="blue">
 <tr>
 <th>Reciever Acc NO</th>
 <th>Amount Transfered </th>
 <th>Date</th>
 <th>Transaction ID</th>
 <th>Transaction Type</th>
 <th>Transaction Status*</th>
 </tr>
 <%while(rs.next()){ %>
 <tr>
 <td><%=rs.getString(4) %></td>
  <td><%=rs.getString(3) %></td>
   <td><%=rs.getString(5) %></td>
    <td><%=rs.getString(1) %></td>
    <td><%=rs.getString(2) %></td>
     <td><%=rs.getString(6) %></td>
 </tr>
 
 <%} %>
 </table>
 <div>
 	<h5 align="center">*transaction status "0" means not yet conformed by bank "1" indicates Txn Success</h5> 
 	
 </div>
 <br><br>
	<label align="right"><a href="Services.jsp">Go Back To Services</a></label>
 
 <br><br><br>

<!-- contact -->
<section class="contact" id="contact">
	<div class="container">
		<div class="contact-heading">
			<h3>Contact us</h3>
		</div>
		<div class="contact-grids">
			<div class=" col-md-6 contact-form">
				<form action="#" method="post">
						<input type="text" placeholder="Subject" required=""/>
						<input type="text" placeholder="Your name" required=""/>
						<input type="email" placeholder="Your mail" required=""/>
						<textarea placeholder="Message" required=""></textarea>
						<div class="submit1">
							<input type="submit" value="submit">
						</div>
				</form>
			</div>
		
			<div class="clearfix"></div>
		</div>
	</div>
</section>
 <!-- Footer start here -->
		<jsp:include page="footer.jsp"></jsp:include>
 
 

 
</body>
</html>
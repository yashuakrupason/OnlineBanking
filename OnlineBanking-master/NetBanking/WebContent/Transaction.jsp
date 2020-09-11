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
							
							<li><a href="#contact" >contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="logo">
			<a href="index.html"><!--<i class="fa fa-inr" aria-hidden="true"></i>-->Corporate <span>bank</span></a>
		</div>

	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">Transfer Money</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form action="TransactionServlet" method="post">
							<div class="col-sm-12">
								<div class="row">
									
									<div class="col-sm-6 form-group">
										<label class="required">Enter Amount<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label> <input type="text"
											placeholder="Enter amount Here.." class="form-control"
											name="Amount" required>
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Enter Accno of Reciever<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label> <input type="text"
											placeholder="Enter accno" class="form-control"
											name="rAccNo" required>
									</div>
									<div class="col-sm-4 form-group">
										<label class="required">Transaction Type<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label>
										<div class="input-group-btn">
											<select class="form-control btn btn-default" name="Ttype" required>
												<option>to bank acc</option>
												<option>bill payment</option>
												<option>mobile recharge</option>
												
											</select>
										</div>
									</div><br><br>
									<div class="col-sm-6 form-group">
										<label class="required">Enter IFSC of Reciever<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span></label> <input type="text"
											placeholder="Enter ifsc" class="form-control"
											name="ifsc" required>
									</div>
								</div>
								
								<div class="form-group">
									<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span> Indicates
											required field</em> </span>
								</div>
								<div>
								<input type="submit" class="btn btn-lg btn-info">
								 <% if((String)request.getAttribute("txnS")=="false") {%>
								 alert("Acc No doesn't exist or ifsc code is Wrong");
								 <%} %>
								  <% if((String)request.getAttribute("txnS")=="false1") {%>
								 alert("Amount not acceptable");
								 <%} %>
								<% if((String)request.getAttribute("output") == "false"){
									%>
									alert("transaction failed!!! please do it again");
									<%} %>
							</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


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
		
	</div>
</body>
</html>
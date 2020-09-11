<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


	<!DOCTYPE html>
<html lang="en">
<!-- Head -->
<head>
<title>Corporate Bank </title>
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
		<div class="number">
			<h3><i class="fa fa-phone" aria-hidden="true"></i> +91 080 987 6541</h3>
			<div class="clearfix"></div>
		</div>
		<div class="social-icons">
		<ul class="top-icons">
			<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-pinterest-p" aria-hidden="true"></i></a></li>
			<li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
				<li><a href="index.jsp"><i class="fa fa-sign-out" aria-hidden="true"></i></a></li>
		</ul>
		<div class="form-top">
		  <form action="#" method="post" class="navbar-form navbar-left">
			<div class="form-group">
				<input type="search" class="form-control" placeholder="Search">
			</div>
				<button type="submit" class="btn btn-default"><i class="fa fa-search" aria-hidden="true"></i></button>
				<!-- <button type="submit" class="btn btn-default">Submit</button> -->
			</form>
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
							<li><a href="index.jsp" class="scroll">home</a></li>
							<li><a href="#about" class="scroll">about</a></li>
							
							<li><a href="#contact" class="scroll">contact</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
		<div class="logo">
			<a href="index.html"><!--<i class="fa fa-inr" aria-hidden="true"></i>-->Corporate <span>bank</span></a>
		</div>
		<!-- //Top-Bar -->
		<div class="banner-main jarallax">
			<div class="container">
				<div class="banner-inner">
					<div class="col-md-5 banner-left">
						<form action="Register" method="post">
						<h3>Start Your account</h3>
							<input type="text" placeholder="Account Number" name="accno" required=""/>
							<input type="email" placeholder="username" name="uname" required=""/>
							<input type="text" placeholder="Password" name="pass" required=""/>
							<div class="submit">
								<input type="submit" value="get started">
								
							</div>
							<div class="submit">
								<p>Already user?</p>
								<a href="Login.jsp" class="btn  btn-warning btn-lg">Login</a>
							</div>
						</form>
					</div>
					<div class="col-md-7 banner-right">
						<h1>Account Processing Steps !</h1>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Enter your Account Number</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Create a Username and Password</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Login with Your Username and Password</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Enjoy Our services Right Now</p>
							<div class="clearfix"></div>
							</div>
							<div class="banner-right-text">
								<div class="main-icon">
									<i class="fa fa-share" aria-hidden="true"></i>
								</div>
								<p>Once you created your Account it takes a day to get Activated!!</p>	
							<div class="clearfix"></div>
							</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
<!-- about -->
<section class="about" id="about">
	<div class="container">
	<div class="about-heading">
		<h2>About</h2>
	</div>
		<div class="about-grids">
		<div class="col-md-6 about-left">
			<img src="images/1.jpg" alt="" />
		</div>
		<div class="col-md-6 about-right">
			<h3>Corporation Bank was a public-sector banking company headquartered in Mangalore, India. 
				<p>The bank had a pan-Indian presence. Presently, the bank has a network of 2,432</p>
			 <p>fully automated CBS branches, 3,040 ATMs, and 4,724 branchless banking units across the country</p></h3>
			<div class="more">
				<a href="#" data-toggle="modal" data-target="#myModal">Read More</a>
			</div>
		</div>
		<div class="clearfix"></div>
		</div>
		</div>
</section>
<!-- //about -->


	
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
			<jsp:include page="footer.jsp"></jsp:include>

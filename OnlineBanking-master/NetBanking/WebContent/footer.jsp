<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!-- footer -->
<section class="footer">
	<div class="container">
		<div class="footer-grids">
			<div class="col-md-4 footer-grid1">
				<div class="logo1">
					<a href="index.html">Corporate <span>Bank</span></a>
				</div>
				<p> Donec in neque quis orci consequat lobortis. Sed non vestibulum mauris. Donec in neque quis orci</p>
				<p> Donec in neque quis orci consequat lobortis. Sed non vestibulum mauris. Donec in neque quis orci</p>
			</div>
			<div class="col-md-3 footer-grid2">
				<h4>Locations</h4>
				<p class="p1">Stoke Newington,London,</p>
				<p>Smith street,8814DM</p>
				<p class="p1">Paris,arrondissement</p>
				<p>on the Right Bank,2216TF</p>
				<p class="p1">Los Vegas,Nevada,</p>
				<p>Eiffel Tower road,2243FR</p>
			</div>
			<div class="col-md-2 footer-grid3">
				<h4>menu</h4>
					<p><a href="#index.html" class="scroll">home</a></p>
					<p><a href="#about" class="scroll">about</a></p>
					<p><a href="#services" class="scroll">services</a></p>
					<p><a href="#skills" class="scroll">skills</a></p>
					<p><a href="#team" class="scroll">team</a></p>
					<p><a href="#payment" class="scroll">payment</a></p>
					<p><a href="#blog" class="scroll">blog</a></p>
					<p><a href="#contact" class="scroll">contact</a></p>
			</div>
			<div class="col-md-3 footer-grid4">
				<h4>our links</h4>
				<p><a href="#">Funds transfer</a></p>
				<p><a href="#">Mobile banking</a></p>
				<p><a href="#">Deposits</a></p>
				<p><a href="#">New joint accounts</a></p>
				<p><a href="#">Internet online banking</a></p>
				<p><a href="#">Balance enquiry</a></p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</section>
<!-- //footer -->

<!-- copyright -->
<section class="copyright">
	<div class="agileits_copyright text-center">
			<p>� 2017 Corporate Bank. All rights reserved | Design by <a href="//w3layouts.com/" class="w3_agile">W3layouts</a></p>
	</div>
</section>
<!-- //copyright -->

	<script src="js/jarallax.js"></script>
	<script src="js/SmoothScroll.min.js"></script>
	<script type="text/javascript">
		/* init Jarallax */
		$('.jarallax').jarallax({
			speed: 0.5,
			imgWidth: 1366,
			imgHeight: 768
		})
	</script>

	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
	<script src="js/bars.js"></script>
</body>
<!-- //Body -->
</html>
<!-- //html -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.banking.Database.DbOperation"%>
<%@page import="com.banking.Model.CustomerModel"%>
<%@page import="java.sql.Connection"%>

		<jsp:include page="header.jsp" />
		<!-- //Top-Bar -->

	<%! CustomerModel ac; %>

	<%
		ac = (CustomerModel) session.getAttribute("userDetails");
		String account_no = ac.getAccount_number();
		int amount=ac.getAmount();
		
	%>
<!-- services -->
<section class="services" id="services">
	<div class="container">
		<div class="services-heading">
			<h3>services</h3>
		</div>
		<div class="service-grids">
			<div class="service-grid-top">
				<div class="col-md-4 service-grid-1" >
					<div class="service-grid-text" >
						<div class="icon">
							<i class="fa fa-usd" aria-hidden="true"></i>
						</div>
						<br>
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary"  style="cursor: pointer" data-toggle="modal" data-target="#exampleModalCenter">
 						 Check Account Balance</button>
 						 <br><br><br><br><br>
 						 <h5>Check your balance here!!!</h5>
 						 <!-- Modal -->
							<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							  <div class="modal-dialog modal-dialog-centered" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLongTitle">Account Balanace</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							       <h4 class="alert-heading">BaLance!</h4>
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
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>
													
					</div>
				</div>
			<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-money" aria-hidden="true"></i>
						</div>
						<h4>Transfer Money</h4><br><br><br><br>
						<label><a href="Transaction.jsp">Click here</a></label>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-university" aria-hidden="true"></i>
						</div>
						<h4>Transaction History</h4><br><br><br><br>
						<label><a href="TxnDetail.jsp">Click Here</a></label>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="service-grid-bottom">
					<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-briefcase" aria-hidden="true"></i>
						</div>
						<br><br><br><br><br>
						<h4>!!!Happy to help!!!</h4>
						<p></p>
					</div>
				</div>
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-money" aria-hidden="true"></i></div><br>
						<a href="LoanApplication.jsp" class="btn btn-primary">Apply For Loan</a>
						<br><br>
						<p>Exciting offers on House ,car,student and personal loans .</p>
					</div>
				</div>
				
				<div class="col-md-4 service-grid-1">
					<div class="service-grid-text">
						<div class="icon">
							<i class="fa fa-credit-card" aria-hidden="true"></i>
						</div>
						<br><br><br><br><br>
						<h4>!!!Happy to help!!!</h4>
						
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</section>
<!-- //services -->



<!-- //payment -->

	

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

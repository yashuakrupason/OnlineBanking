<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.banking.Database.DbOperation"%>
<%@page import="com.banking.Database.db_con"%>
<%@page import="java.sql.*"%>

<%@page import="com.banking.Model.CustomerModel"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap Simple Data Table</title>


		<jsp:include page="header.jsp" />
<div class="container-fluid">
    <div class="table-responsive">
        <div class="table-wrapper">
            <div class="table-title">
                <div class="row">
                    <div class="col-sm-8"><h2>Loan <b>Details</b></h2></div>
                    <div class="col-sm-4">
                        <div class="search-box">
                            <i class="material-icons">&#xE8B6;</i>
                            <input type="text" class="form-control" placeholder="Search&hellip;">
                        </div>
                    </div>
                </div>
            </div>
            <%
				Connection conn = null;
				Statement stmt = null;
				ResultSet rs = null;
				ResultSet r = null;

				%>
				 <!-- Modal -->
							<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
							  <div class="modal-dialog modal-dialog-centered" role="document">
							    <div class="modal-content">
							      <div class="modal-header">
							        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
							        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
							          <span aria-hidden="true">&times;</span>
							        </button>
							      </div>
							      <div class="modal-body">
							       <h4 class="alert-heading">Success!</h4>
										<%@page import="java.sql.*,java.util.*"%>
										<%
										String id=request.getParameter("id");
										System.out.println(id);
										try
										{
											db_con connect = new db_con();
										
											Connection conn1 = connect.getConnection();
											Statement st=conn1.createStatement();
											int i=st.executeUpdate("DELETE FROM customer WHERE username="+id);
											out.println(id); 
											out.println("Data Deleted Successfully!");
										}
										catch(Exception e)
										{
										System.out.print(e);
										e.printStackTrace();
										}
										%>
							      </div>
							      <div class="modal-footer">
							        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							      </div>
							    </div>
							  </div>
							</div>
            <table class="table table-striped table-hover table-bordered">
                <thead>
                    <tr>
                        
                         <th>Loan id <i class="fa fa-sort"></i></th>
                         <th>Loan Amount</th>
                         <th>Loan Duration</th>
                         <th>Type Of Loan</th>
                         <th>Interest Rate</th>
                         <th>Loan Amount Paid</th>
                        <th>Is_verified <i class="fa fa-sort"></i></th>
                       	<th>Username</th>
                       
                    </tr>
                </thead>
                <tbody>
                    <%
					try{
					
						db_con connect = new db_con();
						conn = connect.getConnection();

						stmt = conn.createStatement();

						 rs = stmt.executeQuery("select * from loan");
					while(rs.next()){
						
					%>
                     
                    <tr>
                        <td><%=rs.getString(1)%></td>
                        <td><%=rs.getString(2) %></td>
                        <td><%=rs.getString(3) %></td>
						<td><%=rs.getString(4) %></td>
						<td><%=rs.getString(5) %></td>
						<td><%=rs.getString(6) %></td>
						<td><%=rs.getString(7) %></td>
						<td><%=rs.getString(8) %></td>
                        <td>
                            <a href="#" class="view" title="View" data-toggle="tooltip" style="cursor: pointer" data-toggle="modal" data-target="#exampleModalCenter"><i class="material-icons">&#xE417;</i></a>
                           <a href="LoanUpdate.jsp?id=<%=rs.getString(1) %>&user=<%=rs.getString(8) %>"><i class="material-icons">&#xE254;</i></a>
                            <a href="LoanDelete.jsp?id=<%=rs.getString(1) %>"><i class="material-icons">&#xE872;</i></a>
                        </td>
                        
                    </tr>  
                    <%
						}
						conn.close();
						} catch (Exception e) {
						e.printStackTrace();
						}
						%>
                </tbody>
            </table>
           
        </div>
    </div>  
</div>   

		<jsp:include page="footer.jsp" />

</body>
</html>
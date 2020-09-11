<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>

<link rel="shortcut icon" type="image/png" href="image/favicon.png" />
<link rel="stylesheet" type="text/css" href="css/create_account.css">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/passwordChecker.js"></script>
</head>
<body>
<div class="col-lg-6 col-lg-offset-3">

	<h1 class="text-center text-primary"><strong>Apply for Loan</strong></h1>

<form action="Loan" method="POST" class="form-group">

<br><br>
<label for=" Type of Loan "><strong>Type of Loan</strong> </label>

<select id="loantype" name="loan_type" class="form-control" onchange="abc()">
	
<option value="Personal_Loan"><strong>Please Select One</strong></option>	
<option value="Personal_Loan"><strong>Personal Loan</strong></option>
<option value="Car_Loan"><strong>Car Loan</strong></option>
<option value="Mortages"><strong>Home Loan</strong> </option>
<option value="Student_Loan"> <strong>Student Loan</strong></option>
</select>

<br>

<label for="Loan Amount"> Enter the Loan Amount :</label>
<input type="text" class="form-control" id="loanamt" name="loan_amt" placeholder="Enter your loan Amount">
<br>

<label for=" Choose your Loan Duration"><strong>Choose Your Loan Duration :</strong></label>
<select id="duration" class="form-control" name="loan_dur">
<option value=0 class="form-control">No months Selected</option>
<option value=3 class="form-control">3 months</option>
<option value=6 class="form-control">6 months</option>
<option value=9 class="form-control">9 months</option>
<option value=12 class="form-control">12 months</option>
</select>

<br>
<label for=" Choose your interest rate "><strong> Choose your interest rate :</strong></label>
<select id="interest_rate" class="form-control" name="getInterest" onchange="gsw()">
<option id="opt0" class="form-control">No Option Selected</option>
</select>

<br>

<label><strong>Your interest rate appears here..</strong></label>

<input type="text" value="0.0" id="answer" class="form-control" disabled>

<br>
<input type="submit" class="btn btn-block btn-success form-control" value="Process Your Loan" >

</form>
</div>
</body>

<script type="text/javascript">
	let AllLoans={
	"Personal_Loan":[1.2,2.3,3.5,4.2],
	"Mortages":[3.1,6.3,7.5,7.8],
	"Student_Loan":[5.1,6.5,7.4,7.5],
	"Car_Loan":[3.9,5.6,6.7,7.0]
	};
	function abc(){
		let r=document.getElementById("loantype").value;
		let ase=document.getElementById("interest_rate");
		let str="<option id='opt0' class='form-control'>No Option Selected</option>" 
		for(let i=1;i<=AllLoans[r].length;i++){
			str+="<option>"+AllLoans[r][i-1].toString()+"</option>";
		}
		console.log(str);
		ase.innerHTML=str;
	}
	function gsw(){
		let p=document.getElementById("loanamt").value;
		let t=document.getElementById("duration").value;
		let r=document.getElementById("interest_rate").value;
		let re=document.getElementById("answer");



		if(p >0 &&t >0 && r >0){
			let w=p*Math.pow(1+r/100,t) - p;

			re.value="You will be charged "+w.toPrecision(4).toString()+" per month";
		}
		else{
			re.value="select a valid option ";
		}


	}


</script>
</html>


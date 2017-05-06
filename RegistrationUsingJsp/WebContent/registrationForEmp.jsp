<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
	
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
	crossorigin="anonymous"></script>	
<script>
	
	function validate(){
		
		var uname=document.getElementById("uname").value;
		var add=document.getElementById("add").value;
		var company=document.getElementById("comname").value;
		var ageformat=/^[0-9]\d*$/;
		var age=document.getElementById("age").value;
		
		if(uname==""){
			
			alert("enter emp_name ....")
			return false;
			
		}
		if(add==""){
			
			alert("enter address.. ");
			return false;
		}
		if(company==""){
			
			alret("enter company name")
			return false;
		}
		if(!age.match(ageformat) || age=="" ){
			
			alert("enter valid age");
			return false;
			
		}
		
		else{
			
			return true;
			
		}
	}





</script>
<style>
body {
	background: #FFFFF;
}

.form_bg {
	color: #666;
	padding: 40px;
	position: absolute;
	border: 1px solid #fff;
	margin: 20px 250px 10px 300px;
	background-color: #eee;

	
	border-radius: 10px;
	position: absolute;

	width: 450px;
	height: 600px;
}


</style>
</head>
<body>
	<div align="center">
		<div class="container">
			<div class="form_bg">
				<div class="row">
					
						<form action="RegistrationForEmp" method="post" onsubmit="return validate()">

							<h4>Employee Registration Form</h4>

							<div class="row" align="left">

								<div class="col-sm-6">Emp_Name:</div>
								<div class="col-sm-6">
									<input type="text" name="empname" value="" id="uname">
								</div>
							</div>
							<div class="row" align="left">
								<div class="col-sm-6">Address:</div>
								<div class="col-sm-6">
									<textarea rows="2" cols="20" name="address" id="add"></textarea>
								</div>
							</div>
							<div class="row" align="left">

								<div class="col-sm-6">Company_Name:</div>
								<div class="col-sm-6">
									<input type="text" name="comname" value="" id="comname">
								</div>
							</div>
							<div class="row" align="left">
								<div class="col-sm-6">Age:</div>
								<div class="col-sm-6">
									<input type="text" name="age" value="" id="age">
								</div>
							</div>

							<div class="row" align="left">
								<div class="col-sm-6">Gender:</div>
								<div class="col-sm-6">
									<div class="col-sm-3"  align="left">
									
										<input type="radio" name="gender" value="male">Male
										
									</div>
									<div class="col-sm-3" >
									
										<input type="radio" name="gender" value="female">Female
										
								</div>
							</div>
							</div>
							<div class="row" align="left">

								<div class="col-sm-6">Specialization:</div>
								<div class="col-sm-6">
									<div class="row-sm-1">
										<input type="checkbox" name="specialization" value="java">java
									</div>
									<div class="row-sm-1">
										<input type="checkbox" name="specialization" value=".net">.net
									</div>
									<div class="row-sm-1">
										<input type="checkbox" name="specialization" value="c">C
									</div>
									<div class="row-sm-1">
										<input type="checkbox" name="specialization" value="c++">C++
									</div>
									<div class="row-sm-1">
										<input type="checkbox" name="specialization" value="mysql">SQL
									</div>
									<div class="row-sm-1">
										<input type="checkbox" name="specialization" value="angular">Angular
									</div>
								</div>
							</div>

							<div class="row" align="left">
								<div class="col-sm-6">Language_known:</div>
								<div class="col-sm-6">
									<input type="text" name="language" value="">
								</div>

							</div>
							<div class="row" align="left">

								<div class="col-sm-6">Salary:</div>
								<div class="col-sm-6">
									<input type="text" name="salary" value="">
								</div>
							</div>
							<div class="row" align="left">

								<div class="col-sm-6">Email_Id:</div>
								<div class="col-sm-6">
									<input type="text" name="email">
								</div>
							</div>

							<div class="form-group">
								<input type="submit" class="btn btn-info" value="Submit">

							</div>
							<a href="PrintVlaueFromTable">view employee info</a>
						</form>
					</div>
				</div>
			</div>
		</div>

</body>
</html>
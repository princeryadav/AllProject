<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This is user registration</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script>
	function validation() {
		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var email = document.getElementById("email").value;
		var passformat = /^[A-Za-z]\w{3,14}$/;
		var password = document.getElementById("pass").value;
		var phone = document.getElementById("phone").value;
		if (!email.match(mailformat)) {
			alert("Enter valid email ");
			return false;
		}
		if (!password.match(passformat)) {
			
			alert("Enter valid password");
			return false;
			
		}
		if (phone === null) {
			
			alert("enter valid phone number")
			return false;
			
		} else {
			
			return true;
			
		}
	}
</script>

<style>
body {
	background: #FFFFF;
}

.form_bg {
	background-color: #eee;
	color: #666;
	padding: 40px;
	border-radius: 10px;
	position: absolute;
	border: 1px solid #fff;
	margin: auto;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 400px;
	height: 400px;
}
</style>
</head>
<body>
	<div align="center">
		<div class="container">
			<div class="row">
				<div class="form_bg">
					<form action="RegistrationForUser" method="post"
						onsubmit="return validation()">

						<h3>User Registration Form</h3>
						<div class="form-group">
							<input type="text" class="form-control" name="uname"
								placeholder="UserName" id="email">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="email"
								placeholder="Email_Id" id="email">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="password"
								placeholder="Password" id="pass">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" name="phone_no"
								placeholder="Phone_No" id="phone">
						</div>
						<div class="form-group">
							<input type="submit" value="Submit" class="btn btn-primary btn-block">
							<input type="Reset" value="Reset" class="btn btn-primary btn-block">
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>This is user login</title>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
	
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" 
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" 
	crossorigin="anonymous"></script>
	<script>
	
function Validate() { 
	
	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	var email=document.getElementById("email").value;
	var passformat= /^[A-Za-z]\w{3,14}$/;
	var password=document.getElementById("pass").value;

	if(!email.match(mailformat)) {
		alert("Enter valid email ");
		return false;
	}
		if(!password.match(passformat)){
			
			alert("Enter valid password");
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
	background-color: #eee;
	color: #666;
	padding: 20px;
	border-radius: 10px;
	position: absolute;
	border: 1px solid #fff;
	margin: auto;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 320px;
	height: 320px;
}

.align-center {
	text-align: center;
}
</style>
</head>
<body>
	<div align="center">
		<div class="container">
			<div class="row">
				<div class="form_bg">
					<form action="LoginForUser" method="post" onsubmit="return Validate() ">
						<h2>Login</h2>
						<div class="form-group">
							<input type="text" class="form-control" name="email" id="email"
								placeholder="Email_id" style="width: 220px;">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" name="password" id="pass"
								placeholder="Password" style="width: 220px;" >
						</div>
						<div class="form-group">
							<input type="submit" class="btn btn-primary btn-block" value="login" style="width: 220px;">
						</div>
						<div class="form-group">
							<a href="registrationForUser.jsp">Register here</a>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
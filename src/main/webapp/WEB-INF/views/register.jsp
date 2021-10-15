<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>todoAssist</title>
<!-- Bootstrap CSS-->
<link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
<!-- Font Awesome CSS-->
<link rel="stylesheet"
	href="vendor/font-awesome/css/font-awesome.min.css">
<!-- Custom Font Icons CSS-->
<link rel="stylesheet" href="css/font.css">
<!-- Google fonts - Muli-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
<!-- theme stylesheet-->
<link rel="stylesheet" href="css/style.default.css"
	id="theme-stylesheet">
<!-- Custom stylesheet - for your changes-->
<link rel="stylesheet" href="css/custom.css">
<!-- Favicon-->
<link rel="shortcut icon" href="img/favicon.ico">
</head>
<body>

	<div class="login-page">
		<div class="container d-flex align-items-center">
			<div class="form-holder has-shadow">
				<div class="row">
					<!-- Logo & Information Panel-->
					<div class="col-lg-6">
						<div class="info d-flex align-items-center">
							<div class="content">
								<div class="logo">
									<h1>My todo</h1>
								</div>
								<p>A list of tasks you need to complete, or things that you
									want to do</p>
							</div>
						</div>
					</div>
					<!-- Form Panel    -->
				
					<div class="col-lg-6 bg-white">
						<div class="form d-flex align-items-center">
							<div class="content">
								<form class="text-left form-validate" action="saveuser"
									method="post">
									<div class="form-group-material">
										<input id="register-firstName" type="text" name="firstname"
											required data-msg="Please enter your First name"
											class="input-material"> <label
											for="register-username" class="label-material">First
											Name</label>
									</div>
									<div class="form-group-material">
										<input id="register-lastName" type="text" name="lastname"
											required data-msg="Please enter your Last Name"
											class="input-material"> <label
											for="register-username" class="label-material">Last
											Name</label>
									</div>

									<div class="form-group-material">
										<label for="register-username" class="label-material">Date
											of Birth</label> <input id="register-dob" type="date" name="dob"
											required data-msg="Please enter your Date of Birth"
											class="input-material">

									</div>
									<div class="form-group-material">
										<input id="register-age" type="text" name="age" required
											data-msg="Please enter your username" class="input-material">
										<label for="register-username" class="label-material">Age</label>
									</div>
									<div class="form-group-material">
										<input id="register-mobileno" type="text" name="mobileno"
											required data-msg="Please enter your Mobile Number"
											class="input-material"> <label
											for="register-username" class="label-material">Mobile
											Number</label>
									</div>
									<div class="form-group-material">
										<input id="register-email" type="email" name="email" required
											data-msg="Please enter a valid email address"
											class="input-material"> <label for="register-email"
											class="label-material">Email Address </label>
									</div>
									<div class="form-group-material">
										<input id="register-password" type="password" name="password"
											required data-msg="Please enter your password"
											class="input-material"> <label
											for="register-password" class="label-material">Password
										</label>
									</div>
									
									<div class="form-group text-center">
										<input id="register" type="submit" value="Register"
											class="btn btn-primary">
									</div>

								</form>
								<small>Already have an account? </small><a href="/"
									class="signup">Login</a>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
	<!-- JavaScript files-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/popper.js/umd/popper.min.js">
		
	</script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/jquery.cookie/jquery.cookie.js">
		
	</script>
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
	<script src="js/front.js"></script>

</body>
</html>
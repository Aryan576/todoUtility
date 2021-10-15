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

<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">


</head>
<body>

	<%@include file="userheader.jsp"%>
	<div class="d-flex align-items-stretch">
		<!-- Sidebar Navigation-->
		<%@include file="usersidebar.jsp"%>
		<div class="page-content">
			<div class="page-header">
				<div class="container-fluid">
					<h2 class="h5 no-margin-bottom">My Profile</h2>
				</div>


			</div>

			<div class="col">

				<a href="userhome" class="btn btn-primary" style="margin-left: 2%"><i
					class="fas fa-angle-left"></i> &nbsp;Back</a> <a href="editprofile"
					class="btn btn-primary" style="margin-left: 80%"><i
					class="fas fa-user-edit"></i> &nbsp;Edit Profile</a> <br> <br>
				<br>
				<div class="col-lg-4 text-center" style="margin-left: 35%;">
					<div class="avatar mx-auto mb-4">
						<img src="img/avatar-6.jpg" class="rounded-circle img-fluid"
							alt="First sample avatar image"
							style="width: 150px; height: 150px;">
					</div>
					<h1>${user.firstname}${user.lastname}</h1>
				</div>



				<br>
				<div class="public-user-block block">
					<table>
						<tr>
							<td><strong><i class="fas fa-angle-right"></i>
									&nbsp;&nbsp;&nbsp;Email</strong></td>
							<td><strong>&nbsp;:&nbsp;</strong></td>
							<td><strong>${user.email}</strong><br></td>
						</tr>



						<tr>
							<td><strong><i class="fas fa-angle-right"></i>
									&nbsp;&nbsp;&nbsp;Birthday</strong></td>
							<td><strong>&nbsp;:&nbsp;</strong></td>
							<td><strong>${user.dob}</strong></td>
						</tr>
						<tr>
							<td><strong><i class="fas fa-angle-right"></i>
									&nbsp;&nbsp;&nbsp;Age</strong></td>
							<td><strong>&nbsp;:&nbsp;</strong></td>
							<td><strong>${user.age}</strong></td>
						</tr>
						<tr>
							<td><strong><i class="fas fa-angle-right"></i>
									&nbsp;&nbsp;&nbsp;MobileNo</strong></td>
							<td><strong>&nbsp;:&nbsp;</strong></td>
							<td><strong>${user.mobileno}</strong></td>
						</tr>

					</table>


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
	<script src="js/charts-home.js"></script>
	<script src="js/front.js"></script>
	<script type="text/javascript">
		function checkTime(i) {
			if (i < 10) {
				i = "0" + i;
			}
			return i;
		}

		function startTime() {
			var today = new Date();
			var h = today.getHours();
			var m = today.getMinutes();
			var s = today.getSeconds();
			// add a zero in front of numbers<10
			m = checkTime(m);
			s = checkTime(s);
			document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
			t = setTimeout(function() {
				startTime()
			}, 500);
		}
		startTime();
	</script>
	<script>
		var $rows = $('#table li');
		$('#search').keyup(function() {
			var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

			$rows.show().filter(function() {
				var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
				return !~text.indexOf(val);
			}).hide();
		});
	</script>
</body>
</html>
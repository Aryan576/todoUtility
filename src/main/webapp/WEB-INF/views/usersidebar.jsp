<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
	<nav id="sidebar">
		<!-- Sidebar Header-->




		<div class="sidebar-header d-flex align-items-center">

			<i class="fas fa-user-circle" style="font-size: 30px"></i>&nbsp;&nbsp;&nbsp;
			<div class="title">

				<h1 class="h5">${user.firstname}${user.lastname}</h1>
				<p>${user.email}</p>
			</div>
		</div>
		<div class="col">
			<input class="form-control" type="text"id="myInput" onkeyup="myFunction()"
				placeholder="Search" aria-label="Search">
		</div>
		<br>
		<!-- Sidebar Navidation Menus-->
		<span class="heading">Main</span>

		<ul id="myUL" class="list-unstyled">
			<li><a href="userhome"> <i class="fas fa-home"></i>Home
			</a></li>
			<li><a href="myday"> <i class="fas fa-sun"></i>MyDay
			</a></li>
			<li><a href="important"> <i class="fas fa-star"></i>Important
			</a></li>
			<li><a href="tasks"> <i class="fas fa-tasks"></i>Tasks
			</a></li>
			<li><a href="groups"> <i class="fas fa-users"></i>Groups
			</a></li>
			<li><a href="calendar"> <i class="far fa-calendar-alt"></i>Calendar
			</a></li>
			<li><a href="stickynotes"> <i class="fas fa-file-alt"></i>Sticky
					Notes
			</a></li>


		</ul>

	</nav>

	<script type="text/javascript">
		function myFunction() {
			var input, filter, ul, li, a, i, txtValue;
			input = document.getElementById("myInput");
			filter = input.value.toUpperCase();
			ul = document.getElementById("myUL");
			li = ul.getElementsByTagName("li");
			for (i = 0; i < li.length; i++) {
				a = li[i].getElementsByTagName("a")[0];
				txtValue = a.textContent || a.innerText;
				if (txtValue.toUpperCase().indexOf(filter) > -1) {
					li[i].style.display = "";
				} else {
					li[i].style.display = "none";
				}
			}
		}
	</script>
</body>
</html>
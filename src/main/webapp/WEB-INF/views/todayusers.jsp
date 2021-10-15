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


	<header class="header">
		<nav class="navbar navbar-expand-lg">
			<div class="search-panel">
				<div
					class="search-inner d-flex align-items-center justify-content-center">
					<div class="close-btn">
						Close <i class="fa fa-close"></i>
					</div>
					<form id="searchForm" action="#">
						<div class="form-group">
							<input type="search" name="search"
								placeholder="What are you searching for...">
							<button type="submit" class="submit">Search</button>
						</div>
					</form>
				</div>
			</div>
			<div
				class="container-fluid d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<!-- Navbar Header-->
					<a href="adminhome" class="navbar-brand">
						<div class="brand-text brand-big visible text-uppercase">
							<strong class="text-primary">todo</strong><strong>Assist</strong>
						</div>
						<div class="brand-text brand-sm">
							<strong class="text-primary">TD</strong><strong>A</strong>
						</div>
					</a>
					<!-- Sidebar Toggle Btn-->
					<button class="sidebar-toggle">
						<i class="fas fa-bars"></i>
					</button>
				</div>
				<div class="right-menu list-inline no-margin-bottom">
					<div class="list-inline-item">
						<!-- Time format -->
						<div id="time" style="font-size: 25px;"></div>
					</div>
					<!-- 
					<div class="list-inline-item">
						Search form
						<input class="form-control" type="text" placeholder="Search"
							aria-label="Search">
					</div> -->


					<div class="list-inline-item dropdown">
						<a id="navbarDropdownMenuLink1" href="http://example.com"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							class="nav-link messages-toggle"><i
							class="fas fa-check-square" style="font-size: 20px;"></i><span
							class="badge dashbg-1">5</span></a>
						<div aria-labelledby="navbarDropdownMenuLink1"
							class="dropdown-menu messages" style="display: none;">
							<a href="#" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong>Active Users</strong>
								</div>

							</a> <a href="#"
								class="dropdown-item message d-flex align-items-center">
								<div class="profile">
									<img src="img/avatar-3.jpg" alt="..." class="img-fluid">
									<div class="status online"></div>
								</div>
								<div class="content">
									<strong class="d-block">Nadia Halsey</strong><span
										class="d-block">lorem ipsum dolor sit amit</span><small
										class="date d-block">9:30am</small>
								</div>
							</a><a href="#"
								class="dropdown-item message d-flex align-items-center">
								<div class="profile">
									<img src="img/avatar-2.jpg" alt="..." class="img-fluid">
									<div class="status away"></div>
								</div>
								<div class="content">
									<strong class="d-block">Peter Ramsy</strong><span
										class="d-block">lorem ipsum dolor sit amit</span><small
										class="date d-block">7:40am</small>
								</div>
							</a><a href="activeusers" class="dropdown-item text-center message">
								<strong>See All Users <i class="fa fa-angle-right"></i>
							</strong>
							</a>
						</div>
					</div>






					<div class="list-inline-item logout">
						<a id="logout" href="/" style="font-size: 22px" class="nav-link">Logout
							<i class="icon-logout"></i>
						</a>
					</div>

				</div>
			</div>
		</nav>
	</header>
	<div class="d-flex align-items-stretch">
		<!-- Sidebar Navigation-->
		<nav id="sidebar">
			<!-- Sidebar Header-->




			<div class="sidebar-header d-flex align-items-center">

				<i class="fas fa-user-circle" style="font-size: 30px"></i>&nbsp;&nbsp;&nbsp;
				<div class="title">

					<h1 class="h5">Devesh Sheth</h1>
					<p>deveshssheth2018@gmail.com</p>
				</div>
			</div>
			<div class="col">
				<input class="form-control" type="text" id="myInput" onkeyup="myFunction()"
					placeholder="Search" aria-label="Search">
			</div>
			<br>
			<!-- Sidebar Navidation Menus-->
			<span class="heading">Main</span>

			<ul id="myUL" class="list-unstyled">
				<li><a href="adminhome"> <i class="fas fa-home"></i>Home
				</a></li>
				<li class="active"><a href="todayusers"> <i
						class="fas fa-calendar-check"></i>Today User
				</a></li>
				<li><a href="activeusers"> <i class="fas fa-check-circle"></i>Active
						User
				</a></li>
				<li><a href="adminusers"> <i class="fas fa-users"></i>Users
				</a></li>
				<li><a href="admincalendar"> <i class="far fa-calendar-alt"></i>Calendar
				</a></li>
				<li><a href="adminnotes"> <i class="fas fa-file-alt"></i>Sticky
						Notes
				</a></li>


			</ul>

		</nav>


		<!-- Sidebar Navigation end-->
		<div class="page-content">
			<div class="page-header">
				<div class="container-fluid">
					<h2 class="h5 no-margin-bottom">Today's Users</h2>
				</div>
			</div>

			<div class="col">
				<div class="container">
					<input class="form-control" type="text" id="searchuser"
						placeholder="Search User" aria-label="Search">
				</div>
				<ul id="user" style="list-style-type: none;">
					<br>

					<li><div class="public-user-block block">
							<div class="row d-flex align-items-center">
								<div class="col-lg-4 d-flex align-items-center">
									<div class="order profile">
										<img src="img/avatar-1.jpg" alt="..." class="img-fluid"
											style="width: 50px; height: 50px; border-radius: 5px">
										&nbsp;&nbsp;&nbsp;
									</div>
									<a href="#" class="name"><strong class="d-block">User
											1</strong></a>
								</div>
								<div class="col-lg-4 text-center"></div>
								<div class="col-lg-4">
									<div class="details d-flex">
										<div class="item"></div>
										<div class="item"></div>

									</div>
									<div class="item">

										<a id="navbarDropdownMenuLink2" style="margin-left: 230%"
											href="http://example.com" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"
											class="nav-link tasks-toggle"><i
											class="fas fa-info-circle" style="font-size: 20px"></i></a>
										<div aria-labelledby="navbarDropdownMenuLink2"
											class="dropdown-menu tasks-list">
											<a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>Email
														:&nbsp;&nbsp;&nbsp;deveshssheh2018@gmail.com</strong>
												</div>
											</a> <a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>Date of Birth
														:&nbsp;&nbsp;&nbsp;12-10-2000</strong>
												</div>
											</a> <a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>Age :&nbsp;&nbsp;&nbsp;16</strong>
												</div>
											</a> <a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>MobileNo :&nbsp;&nbsp;&nbsp;+91 9856856854</strong>
												</div>
											</a>

										</div>


									</div>

								</div>
							</div>
						</div></li>


					<li><div class="public-user-block block">
							<div class="row d-flex align-items-center">
								<div class="col-lg-4 d-flex align-items-center">
									<div class="order profile">
										<img src="img/avatar-2.jpg" alt="..." class="img-fluid"
											style="width: 50px; height: 50px; border-radius: 5px">
										&nbsp;&nbsp;&nbsp;
									</div>
									<a href="#" class="name"><strong class="d-block">User
											2</strong></a>
								</div>
								<div class="col-lg-4 text-center"></div>
								<div class="col-lg-4">
									<div class="details d-flex">
										<div class="item"></div>
										<div class="item"></div>

									</div>
									<div class="item">

										<a id="navbarDropdownMenuLink2" style="margin-left: 230%"
											href="http://example.com" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"
											class="nav-link tasks-toggle"><i
											class="fas fa-info-circle" style="font-size: 20px"></i></a>
										<div aria-labelledby="navbarDropdownMenuLink2"
											class="dropdown-menu tasks-list">
											<a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>Email
														:&nbsp;&nbsp;&nbsp;deveshssheh2018@gmail.com</strong>
												</div>
											</a> <a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>Date of Birth
														:&nbsp;&nbsp;&nbsp;12-10-2000</strong>
												</div>
											</a> <a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>Age :&nbsp;&nbsp;&nbsp;16</strong>
												</div>
											</a> <a class="dropdown-item">
												<div class="text d-flex justify-content-between">
													<strong>MobileNo :&nbsp;&nbsp;&nbsp;+91 9856856854</strong>
												</div>
											</a>

										</div>


									</div>

								</div>
							</div>
						</div></li>
				</ul>
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
		var $row = $('#user li');
		$('#searchuser').keyup(function() {
			var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

			$row.show().filter(function() {
				var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
				return !~text.indexOf(val);
			}).hide();
		});
	</script>

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
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
							class="nav-link messages-toggle"><i class="fas fa-check-square" style="font-size: 20px;"></i><span
							class="badge dashbg-1">5</span></a>
						<div aria-labelledby="navbarDropdownMenuLink1"
							class="dropdown-menu messages" style="display: none;">
							<a href="#" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong>Active Users</strong>
								</div>

							</a>
							
							<a href="#"
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
							</a><a href="activeusers" class="dropdown-item text-center message"> <strong>See
									All Users <i class="fa fa-angle-right"></i>
							</strong></a>
						</div>
					</div>
					
					
					
					

					<div class="list-inline-item logout">
						<a id="logout" href="/" style="font-size: 22px"
							class="nav-link">Logout <i class="icon-logout"></i></a>
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
				<input class="form-control" type="text" id="search"
					placeholder="Search" aria-label="Search">
			</div>
			<br>
			<!-- Sidebar Navidation Menus-->
			<span class="heading">Main</span>

			<ul id="table" class="list-unstyled">
				<li class="active"><a href="adminhome"> <i
						class="fas fa-home"></i>Home
				</a></li>
				<li><a href="todayusers"> <i class="fas fa-calendar-check"></i>Today
						User
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
					<h2 class="h5 no-margin-bottom">Dashboard</h2>
				</div>
			</div>
			<section class="no-padding-top no-padding-bottom">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-3 col-sm-6">
							<div class="statistic-block block">
								<div
									class="progress-details d-flex align-items-end justify-content-between">
									<div class="title">
										<div class="icon">
											<i class="far fa-calendar-check"></i>
										</div>
										<strong>Today's Users</strong>
									</div>
									<div class="number dashtext-1">20</div>
								</div>
								<div class="progress progress-template">
									<div role="progressbar" style="width: 20%" aria-valuenow="30"
										aria-valuemin="0" aria-valuemax="100"
										class="progress-bar progress-bar-template dashbg-1"></div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="statistic-block block">
								<div
									class="progress-details d-flex align-items-end justify-content-between">
									<div class="title">
										<div class="icon">
											<i class="far fa-check-circle"></i>
										</div>
										<strong>Active Users</strong>
									</div>
									<div class="number dashtext-2">58</div>
								</div>
								<div class="progress progress-template">
									<div role="progressbar" style="width: 58%" aria-valuenow="70"
										aria-valuemin="0" aria-valuemax="100"
										class="progress-bar progress-bar-template dashbg-2"></div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="statistic-block block">
								<div
									class="progress-details d-flex align-items-end justify-content-between">
									<div class="title">
										<div class="icon">
											<i class="fas fa-users"></i>
										</div>
										<strong>Total Users</strong>
									</div>
									<div class="number dashtext-3">140</div>
								</div>
								<div class="progress progress-template">
									<div role="progressbar" style="width: 80%" aria-valuenow="55"
										aria-valuemin="0" aria-valuemax="100"
										class="progress-bar progress-bar-template dashbg-3"></div>
								</div>
							</div>
						</div>
						<div class="col-md-3 col-sm-6">
							<div class="statistic-block block">
								<div
									class="progress-details d-flex align-items-end justify-content-between">
									<div class="title">
										<div class="icon">
											<i class="fas fa-tasks"></i>
										</div>
										<strong>Tasks</strong>
									</div>
									<div class="number dashtext-4">205</div>
								</div>
								<div class="progress progress-template">
									<div role="progressbar" style="width: 25%" aria-valuenow="35"
										aria-valuemin="0" aria-valuemax="100"
										class="progress-bar progress-bar-template dashbg-4"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<section class="no-padding-bottom">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-4">
							<div class="bar-chart block no-margin-bottom">
								<canvas id="barChartExample1"></canvas>
							</div>
							<div class="bar-chart block">
								<canvas id="barChartExample2"></canvas>
							</div>
						</div>
						<div class="col-lg-8">
							<div class="line-cahrt block">
								<canvas id="lineCahrt"></canvas>
							</div>
						</div>
					</div>
				</div>
			</section>


			<!-- <section class="no-padding-bottom">
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-6">
							<div class="checklist-block block">
								<div class="title">
									<strong>To Do List</strong>
								</div>
								<div class="checklist">
									<div class="item d-flex align-items-center">
										<input type="checkbox" id="input-1" name="input-1"
											class="checkbox-template"> <label for="input-1">Breakfast</label>
									</div>
									<div class="item d-flex align-items-center">
										<input type="checkbox" id="input-1" name="input-1"
											class="checkbox-template"> <label for="input-1">College</label>
									</div>
									<div class="item d-flex align-items-center">
										<input type="checkbox" id="input-1" name="input-1"
											class="checkbox-template"> <label for="input-1">Lunch</label>
									</div>
									<div class="item d-flex align-items-center">
										<input type="checkbox" id="input-1" name="input-1"
											class="checkbox-template"> <label for="input-1">Newspaper</label>
									</div>



								</div>
							</div>
						</div>
						<div class="col-lg-6">
							 <div class="block margin-bottom-sm">
								<div class="title">
									<strong>Today's Task</strong>
								</div>
								<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>#</th>
												<th>Task Name</th>
												<th>StartDate</th>
												<th>EndDate</th>
												<th>Timing</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<th scope="row">1</th>
												<td>Breakfast</td>
												<td>12-10-21</td>
												<td>15-10-21</td>
												<td>7:00am</td>
											</tr>
											<tr>
												<th scope="row">2</th>
												<td>College</td>
												<td>12-10-21</td>
												<td>15-10-21</td>
												<td>9:00am</td>
											</tr>
											<tr>
												<th scope="row">3</th>
												<td>Lunch</td>
												<td>12-10-21</td>
												<td>15-10-21</td>
												<td>1:30pm</td>
											</tr>
											<tr>
												<th scope="row">4</th>
												<td>Newspaper</td>
												<td>12-10-21</td>
												<td>15-10-21</td>
												<td>5:30pm</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div> 
						</div>
					</div>
				</div>
			</section> -->

			<footer class="footer">
				<div class="footer__block block no-margin-bottom">
					<div class="container-fluid text-center">
						<!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
						<p class="no-margin-bottom">
							Made with <i class="fas fa-heart"></i> by me.
						</p>
					</div>
				</div>
			</footer>
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
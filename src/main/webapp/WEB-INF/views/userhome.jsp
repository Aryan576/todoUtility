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


	<%@include file="userheader.jsp"%>
	<div class="d-flex align-items-stretch">
		<!-- Sidebar Navigation-->
		<%@include file="usersidebar.jsp"%>

	


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
										<strong>Today's Task</strong>
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
											<i class="far fa-star"></i>
										</div>
										<strong>Important Tasks</strong>
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
											<i class="fas fa-tasks"></i>
										</div>
										<strong>My Tasks</strong>
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
											<i class="fas fa-users"></i>
										</div>
										<strong>My Groups</strong>
									</div>
									<div class="number dashtext-4">25</div>
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


			<section class="no-padding-bottom">
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
			</section>

			<footer class="footer">
				<div class="footer__block block no-margin-bottom">
					<div class="container-fluid text-center">
						<!-- Please do not remove the backlink to us unless you support us at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
						<p class="no-margin-bottom">Made with <i class="fas fa-heart"></i> by me.</p>
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
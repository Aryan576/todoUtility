<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDoAssist</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="assets/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="assets/css/custom.css">
<link rel='shortcut icon' type='image/x-icon'
	href='assets/img/favicon.ico' />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
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
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">




			<%@include file="adminheader.jsp"%>



			<!-- Main Content -->
			<div class="main-content">
				<section class="section">
					<div class="row ">
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">New Users</h5>
													<h2 class="mb-3 font-18">25</h2>
													<p class="mb-0">
														<span class="col-green"></span>
													</p>
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/TodayUser.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Active Users</h5>
													<h2 class="mb-3 font-18">87</h2>
													<!-- <p class="mb-0"><span class="col-orange">09%</span> Decrease</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/ActiveUser.png" alt="">
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Users</h5>
													<h2 class="mb-3 font-18">128</h2>
													<!--  <p class="mb-0"><span class="col-green">18%</span>
                            Increase</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/TotalUser.jpg" alt="" height="108px">

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<div class="card-statistic-4">
									<div class="align-items-center justify-content-between">
										<div class="row ">
											<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pr-0 pt-3">
												<div class="card-content">
													<h5 class="font-15">Tasks</h5>
													<h2 class="mb-3 font-18">1,128</h2>
													<!--  <p class="mb-0"><span class="col-green">18%</span>
                            Increase</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/AdminTasks.jpg" alt="" height="108px">

												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col">
							<div class="card">
								<div class="card-header">
									<h4>Pie Chart</h4>
								</div>
								<div class="card-body">

									<canvas id="pieChart"
										style="display: block; height: 187px; width: 366px;"></canvas>

								</div>
							</div>
						</div>
						<div class="col">
							<div class="card">
								<div class="card-header">
									<h4>Line Chart</h4>
								</div>
								<div class="card-body">
									<canvas id="lineChart"></canvas>
								</div>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-12">
							<div class="card">
								<div class="card-header">
									<h4>Users</h4>
									<div class="card-header-form">
										<form>
											<div class="input-group">
												<input type="text" class="form-control" id="searchtask"
													placeholder="Search">
												<div class="input-group-btn">
													<button class="btn btn-primary">
														<i class="fas fa-search"></i>
													</button>
												</div>
											</div>
										</form>
									</div>
								</div>
								<div class="card-body p-0">
									<div class="table-responsive">
										<table class="table table-striped">
											<tr>

												<th>First Name</th>
												<th>Last Name</th>
												<th>Email</th>
												<th>Date of Birth</th>
												<th>Age</th>
												<th>Mobile Number</th>
												<th>Action</th>
											</tr>
											<tbody id="task">
												<tr>

													<td>Devesh</td>
													<td>Sheth</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856258652</td>
													<td><span class="badge badge-success">Online</span></td>

												</tr>
												<tr>
													<td>Aryan</td>
													<td>Sheth</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856258652</td>
													<td><span class="badge badge-secondary">Offline</span></td>

												</tr>
												<tr>

													<td>Devesh</td>
													<td>Sheth</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856258652</td>
													<td><span class="badge badge-success">Online</span></td>

												</tr>
												<tr>

													<td>Devesh</td>
													<td>Sheth</td>
													<td>deveshssheth2018@gmail.com</td>
													<td>16-09-2000</td>
													<td>21</td>
													<td>9856258652</td>
													<td><span class="badge badge-secondary">Offline</span></td>

												</tr>
											</tbody>
											<tr>
												<td colspan="7" style="text-align: center;"><a
													href="totalusers"
													class="card-footer card-link text-center small">View
														All</a></td>
											</tr>
											<br>
										</table>

									</div>

								</div>
							</div>
						</div>
					</div>

				</section>
			</div>
		</div>
	</div>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

	<script type="text/javascript">
		//pie
		var ctxP = document.getElementById("pieChart").getContext('2d');
		var myPieChart = new Chart(ctxP,
				{
					type : 'pie',
					data : {
						labels : [ "Tasks", "ActiveUsers", "TotalUsers",
								"TodayUsers" ],
						datasets : [ {
							data : [ 300, 50, 100, 80 ],
							backgroundColor : [ "#6610f2", "#7c4dff",
									"#b388ff", "#311b92" ],
							hoverBackgroundColor : [ "#6610f2", "#7c4dff",
									"#b388ff", "#311b92" ]
						} ]
					},
					options : {
						responsive : true
					}
				});
	</script>
	<script type="text/javascript">
		//line
		var ctxL = document.getElementById("lineChart").getContext('2d');
		var myLineChart = new Chart(ctxL, {
			type : 'line',
			data : {
				labels : [ "January", "February", "March", "April", "May",
						"June", "July", "August", "September", "October",
						"November", "December" ],
				datasets : [ {
					label : "Tasks",
					data : [ 65, 59, 80, 81, 56, 55, 40, 80, 81, 56, 55, 40 ],
					backgroundColor : [ 'rgba(105, 0, 132, .2)', ],
					borderColor : [ 'rgba(200, 99, 132, .7)', ],
					borderWidth : 2
				}, {
					label : "Users",
					data : [ 28, 48, 40, 19, 86, 27, 90, 40, 19, 86, 27, 90 ],
					backgroundColor : [ 'rgba(0, 137, 132, .2)', ],
					borderColor : [ 'rgba(0, 10, 130, .7)', ],
					borderWidth : 2
				} ]
			},
			options : {
				responsive : true
			}
		});
	</script>
	<script>
		var $rows = $('#task tr');
		$('#searchtask').keyup(function() {
			var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

			$rows.show().filter(function() {
				var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
				return !~text.indexOf(val);
			}).hide();
		});
	</script>
</body>
</html>
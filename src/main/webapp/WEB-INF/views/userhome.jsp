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




			<%@include file="userheader.jsp"%>



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
													<h5 class="font-15">Today's Task</h5>
													<h2 class="mb-3 font-18">25</h2>
													<p class="mb-0">
														<span class="col-green"></span>
													</p>
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/TodayTask.jpg" alt="">
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
													<h5 class="font-15">Important Task</h5>
													<h2 class="mb-3 font-18">17</h2>
													<!-- <p class="mb-0"><span class="col-orange">09%</span> Decrease</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/ImportantTask.png" alt="">
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
													<h5 class="font-15">My Tasks</h5>
													<h2 class="mb-3 font-18">2,128</h2>
													<!--  <p class="mb-0"><span class="col-green">18%</span>
                            Increase</p> -->
												</div>
											</div>
											<div class="col">
												<div class="banner-img">
													<img src="assets/img/MyTask.jpg" alt="">

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
									<h4>Today's Task</h4>
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
												<th class="text-center">
													<div
														class="custom-checkbox custom-checkbox-table custom-control">
														<input type="checkbox" data-checkboxes="mygroup"
															data-checkbox-role="dad" class="custom-control-input"
															id="checkbox-all"> <label for="checkbox-all"
															class="custom-control-label">&nbsp;</label>
													</div>
												</th>
												<th>Task Name</th>
												<th>Description</th>
												<th>Assign Date</th>
												<th>Due Date</th>
												<th>Time</th>
												<th>Action</th>
											</tr>
											<tbody id="task">
												<tr>
													<td class="p-0 text-center">
														<div class="custom-checkbox custom-control">
															<input type="checkbox" data-checkboxes="mygroup"
																class="custom-control-input" id="checkbox-1"> <label
																for="checkbox-1" class="custom-control-label"
																data-toggle="tooltip" title="Complete Task"></label>
														</div>
													</td>
													<td>Lunch</td>
													<td>abc</td>
													<td>2018-01-20</td>
													<td>2019-05-28</td>
													<td>7:00 AM</td>
													<td><a href="#" class="btn btn-icon btn-primary"><i
															class="far fa-edit" data-toggle="tooltip"
															title="Edit Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-danger"><i
															class="fas fa-trash-alt" data-toggle="tooltip"
															title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-light" data-toggle="tooltip"
														title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td class="p-0 text-center">
														<div class="custom-checkbox custom-control">
															<input type="checkbox" data-checkboxes="mygroup"
																class="custom-control-input" id="checkbox-2"> <label
																for="checkbox-2" class="custom-control-label"
																data-toggle="tooltip" title="Complete Task"></label>
														</div>
													</td>
													<td>Lunch</td>

													<td>abc</td>
													<td>2018-01-20</td>
													<td>2019-05-28</td>
													<td>7:00 AM</td>
													<td><a href="#" class="btn btn-icon btn-primary"><i
															class="far fa-edit" data-toggle="tooltip"
															title="Edit Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-danger"><i
															class="fas fa-trash-alt" data-toggle="tooltip"
															title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-light" data-toggle="tooltip"
														title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td class="p-0 text-center">
														<div class="custom-checkbox custom-control">
															<input type="checkbox" data-checkboxes="mygroup"
																class="custom-control-input" id="checkbox-3"> <label
																for="checkbox-3" class="custom-control-label"
																data-toggle="tooltip" title="Complete Task"></label>
														</div>
													</td>
													<td>Lunch</td>

													<td>abc</td>
													<td>2018-01-20</td>
													<td>2019-05-28</td>
													<td>7:00 AM</td>
													<td><a href="#" class="btn btn-icon btn-primary"><i
															class="far fa-edit" data-toggle="tooltip"
															title="Edit Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-danger"><i
															class="fas fa-trash-alt" data-toggle="tooltip"
															title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-light" data-toggle="tooltip"
														title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td class="p-0 text-center">
														<div class="custom-checkbox custom-control">
															<input type="checkbox" data-checkboxes="mygroup"
																class="custom-control-input" id="checkbox-4"> <label
																for="checkbox-4" class="custom-control-label"
																data-toggle="tooltip" title="Complete Task"></label>
														</div>
													</td>
													<td>Lunch</td>

													<td>abc</td>
													<td>2018-01-20</td>
													<td>2019-05-28</td>
													<td>7:00 AM</td>
													<td><a href="#" class="btn btn-icon btn-primary"><i
															class="far fa-edit" data-toggle="tooltip"
															title="Edit Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-danger"><i
															class="fas fa-trash-alt" data-toggle="tooltip"
															title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-light" data-toggle="tooltip"
														title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
													</td>
												</tr>
												<tr>
													<td class="p-0 text-center">
														<div class="custom-checkbox custom-control">
															<input type="checkbox" data-checkboxes="mygroup"
																class="custom-control-input" id="checkbox-5"> <label
																for="checkbox-5" class="custom-control-label"
																data-toggle="tooltip" title="Complete Task"></label>
														</div>
													</td>
													<td>Lunch</td>

													<td>abc</td>
													<td>2018-01-20</td>
													<td>2019-05-28</td>
													<td>7:00 AM</td>
													<td><a href="#" class="btn btn-icon btn-primary"><i
															class="far fa-edit" data-toggle="tooltip"
															title="Edit Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-danger"><i
															class="fas fa-trash-alt" data-toggle="tooltip"
															title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
														class="btn btn-icon btn-light" data-toggle="tooltip"
														title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
													</td>
												</tr>
											</tbody>
											<tr>
												<td colspan="7" style="text-align: center;"><a
													href="myday"
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
						labels : [ "TodayTask", "ImportantTask", "MyTasks",
								],
						datasets : [ {
							data : [ 50, 80, 100],
							backgroundColor : [ "#6610f2", "#7c4dff",
									"#b388ff"],
							hoverBackgroundColor : [ "#6610f2", "#7c4dff",
									"#b388ff"]
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
				datasets : [ /* {
					label : "Tasks",
					data : [ 65, 59, 80, 81, 56, 55, 40, 80, 81, 56, 55, 40 ],
					backgroundColor : [ 'rgba(105, 0, 132, .2)', ],
					borderColor : [ 'rgba(200, 99, 132, .7)', ],
					borderWidth : 2
				}, */ {
					label : "Tasks",
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
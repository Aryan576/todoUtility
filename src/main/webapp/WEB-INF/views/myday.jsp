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
</head>
<body>
	<div class="loader"></div>
	<div id="app">
		<div class="main-wrapper main-wrapper-1">

			<%@include file="userheader.jsp"%>

			<!-- Main Content -->
			<div class="main-content">

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">


								<h4>Today's Task</h4>
								<div class="card-header-action">
									<h4>
										<a href="userhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ MyDay
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>



				<div style="float: right;">
					<form>
						<div class="input-group">
							<input type="text" class="form-control" id="searchtask"
								placeholder="Search Task">
							<!-- <div class="input-group-btn">
								<button class="btn btn-primary">
									<i class="fas fa-search"></i>
								</button>
							</div> -->
						</div>
					</form>
				</div>
				<br> <br> <br>



				<!--Delete Task -->
				<div class="modal fade" id="modalPush" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-notify modal-info" role="document">
						<!--Content-->
						<div class="modal-content text-center">
							<!--Header-->
							<div class="modal-header d-flex justify-content-center"
								style="background-color: red; color: #fff; font-size: 15px">
								<p class="heading">Delete Task</p>
							</div>

							<!--Body-->
							<div class="modal-body">

								<i class="fas fa-exclamation-triangle"
									style="font-size: 40px; color: red"></i> <br> <br>
								<p>Are you sure want to delete the task?</p>

							</div>

							<!--Footer-->
							<div class="modal-footer flex-center">
								<a href="important" class="btn btn-danger">Confirm</a> <a
									type="button" class="btn btn-outline-danger waves-effect"
									data-dismiss="modal">Close</a>
							</div>
						</div>
						<!--/.Content-->
					</div>
				</div>


				<!-- Complete Task -->
				<div class="modal fade" id="modalPush1" tabindex="-1" role="dialog"
					aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog modal-notify modal-info" role="document">
						<!--Content-->
						<div class="modal-content text-center">
							<!--Header-->
							<div class="modal-header d-flex justify-content-center"
								style="background-color: green; color: #fff; font-size: 15px">
								<p class="heading">Complete Task</p>
							</div>

							<!--Body-->
							<div class="modal-body">

								<i class="fa fa-check-circle"
									style="font-size: 40px; color: green"></i> <br> <br>
								<p>Are you sure want to complete the task?</p>

							</div>

							<!--Footer-->
							<div class="modal-footer flex-center">
								<a href="important" class="btn btn-success">Confirm</a> <a
									type="button" class="btn btn-outline-success waves-effect"
									data-dismiss="modal">Close</a>
							</div>
						</div>
						<!--/.Content-->
					</div>
				</div>


				<div id="task">

					<h5>
						<div class="row">
							<div class="col-12">
								<div class="card card-primary">
									<div class="card-header">
										<div
											class="custom-checkbox custom-checkbox-table custom-control">
											<input type="checkbox" data-checkboxes="mygroup"
												data-checkbox-role="dad" class="custom-control-input"
												id="checkbox-all"> <label for="checkbox-all"
												class="custom-control-label" data-toggle="modal"
												data-target="#modalPush1">&nbsp;</label>
										</div>
										&nbsp;&nbsp;
										<h4>Task Name 1</h4>
										<div class="card-header-action">
											<a href="#" class="btn btn-icon btn-primary"><i
												class="far fa-edit" data-toggle="tooltip" title="Edit Task"></i></a>&nbsp;&nbsp;
											<a href="#" class="btn btn-icon btn-danger"><i
												class="fas fa-trash-alt" data-toggle="modal"
												data-target="#modalPush" title="Delete Task"></i></a>&nbsp;&nbsp;
											<a href="#" class="btn btn-icon btn-light"
												data-toggle="tooltip" title="Mark as Important"><i
												class="fas fa-star"></i></a>&nbsp;&nbsp;
										</div>
									</div>
									<div class="card-body">
										<div class="row">

											<div class="col">
												<p style="font-size: 15px">In the Afternoon</p>
											</div>
											<div class="col">
												<p style="font-size: 15px">
													<b style="color: green">29-10-2021</b> - <b
														style="color: red">5-11-2021</b>
												</p>
											</div>
											<div class="col">
												<p style="font-size: 15px; color: orange">
													<b>1:00 PM</b>
												</p>
											</div>

										</div>


									</div>

								</div>
							</div>
						</div>
					</h5>



					<h5>
						<div class="row">
							<div class="col-12">
								<div class="card card-success">
									<div class="card-header">
										<div
											class="custom-checkbox custom-checkbox-table custom-control">
											<input type="checkbox" data-checkboxes="mygroup"
												data-checkbox-role="dad" class="custom-control-input"
												id="checkbox-all"> <label for="checkbox-all"
												class="custom-control-label">&nbsp;</label>
										</div>
										&nbsp;&nbsp;
										<h4>Task Name</h4>
										<div class="card-header-action">
											<a href="#" class="btn btn-icon btn-primary"><i
												class="far fa-edit" data-toggle="tooltip" title="Edit Task"></i></a>&nbsp;&nbsp;
											<a href="#" class="btn btn-icon btn-danger"><i
												class="fas fa-trash-alt" data-toggle="tooltip"
												title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
												class="btn btn-icon btn-light" data-toggle="tooltip"
												title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
										</div>
									</div>
									<div class="card-body">
										<div class="row">

											<div class="col">
												<p style="font-size: 15px">In the Afternoon</p>
											</div>
											<div class="col">
												<p style="font-size: 15px">
													<b style="color: green">29-10-2021</b> - <b
														style="color: red">5-11-2021</b>
												</p>
											</div>
											<div class="col">
												<p style="font-size: 15px; color: orange">
													<b>1:00 PM</b>
												</p>
											</div>

										</div>


									</div>

								</div>
							</div>
						</div>
					</h5>




					<h5>
						<div class="row">
							<div class="col-12">
								<div class="card card-danger">
									<div class="card-header">
										<div
											class="custom-checkbox custom-checkbox-table custom-control">
											<input type="checkbox" data-checkboxes="mygroup"
												data-checkbox-role="dad" class="custom-control-input"
												id="checkbox-all"> <label for="checkbox-all"
												class="custom-control-label">&nbsp;</label>
										</div>
										&nbsp;&nbsp;
										<h4>Task Name</h4>
										<div class="card-header-action">
											<a href="#" class="btn btn-icon btn-primary"><i
												class="far fa-edit" data-toggle="tooltip" title="Edit Task"></i></a>&nbsp;&nbsp;
											<a href="#" class="btn btn-icon btn-danger"><i
												class="fas fa-trash-alt" data-toggle="tooltip"
												title="Delete Task"></i></a>&nbsp;&nbsp; <a href="#"
												class="btn btn-icon btn-light" data-toggle="tooltip"
												title="Mark as Important"><i class="fas fa-star"></i></a>&nbsp;&nbsp;
										</div>
									</div>
									<div class="card-body">
										<div class="row">

											<div class="col">
												<p style="font-size: 15px">In the Afternoon</p>
											</div>
											<div class="col">
												<p style="font-size: 15px">
													<b style="color: green">29-10-2021</b> - <b
														style="color: red">5-11-2021</b>
												</p>
											</div>
											<div class="col">
												<p style="font-size: 15px; color: orange">
													<b>1:00 PM</b>
												</p>
											</div>

										</div>


									</div>

								</div>
							</div>
						</div>
					</h5>

				</div>

			</div>

		</div>
	</div>

	<script>
		var $rows = $('#task h5');
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
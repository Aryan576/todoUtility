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

			<%@include file="adminheader.jsp"%>

			<!-- Main Content -->
			<div class="main-content">

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">


								<h4>Users</h4>
								<div class="card-header-action">
									<h4>
										<a href="adminhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ Users
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>


				 <br>

				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-header">
								<h4>Total Users</h4>
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
									<table class="table table-hover">
										<thead>
											<tr>

												<th>First Name</th>
												<th>Last Name</th>
												<th>Email</th>
												<th>Date of Birth</th>
												<th>Age</th>
												<th>Mobile Number</th>
												<th>Action</th>
											</tr>
										</thead>
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
										
										<br>
									</table>

								</div>

							</div>
						</div>
					</div>
				</div>
			</div>




		</div>

	</div>
	</div>

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
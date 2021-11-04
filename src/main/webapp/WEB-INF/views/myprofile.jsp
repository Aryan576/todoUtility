<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ToDoAssist</title>
<!-- General CSS Files -->
<link rel="stylesheet" href="/assets/css/app.min.css">
<!-- Template CSS -->
<link rel="stylesheet" href="/assets/css/style.css">
<link rel="stylesheet" href="/assets/css/components.css">
<!-- Custom style CSS -->
<link rel="stylesheet" href="/assets/css/custom.css">
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


								<h4>MyProfile</h4>
								<div class="card-header-action">
									<h4>
										<a href="userhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ MyProfile
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>



				<div class="col">
					<div class="card">
						<div class="padding-20">
							<ul class="nav nav-tabs" id="myTab2" role="tablist">
								<li class="nav-item"><a class="nav-link active"
									id="home-tab2" data-toggle="tab" href="#about" role="tab"
									aria-selected="true">About</a></li>
								<li class="nav-item"><a class="nav-link" id="profile-tab2"
									data-toggle="tab" href="#settings" role="tab"
									aria-selected="false">Setting</a></li>
								<li class="nav-item"><a class="nav-link" id="profile-tab2"
									data-toggle="tab" href="#changepassword" role="tab"
									aria-selected="false">Change Password</a></li>
							</ul>
							<div class="tab-content tab-bordered" id="myTab3Content">
								<div class="tab-pane fade active show" id="about"
									role="tabpanel" aria-labelledby="home-tab2">

									<div class="card-header">
										<h4>Personal Details</h4>
									</div>
									<div class="card-body">
										<div class="py-4">
											<p class="clearfix">
												<span class="float-left"> Full Name </span> <span
													class="float-right text-muted"> ${user.firstname} ${user.lastname} </span>
											</p>
											<p class="clearfix">
												<span class="float-left"> Birthday </span> <span
													class="float-right text-muted"> ${user.dob} </span>
											</p>
											<p class="clearfix">
												<span class="float-left"> Mail </span> <span
													class="float-right text-muted"> ${user.email} </span>
											</p>
											<p class="clearfix">
												<span class="float-left"> Phone </span> <span
													class="float-right text-muted"> <a href="#">${user.mobileno}</a>
												</span>
											</p>
											<p class="clearfix">
												<span class="float-left"> Age </span> <span
													class="float-right text-muted"> <a href="#">${user.age}</a>
												</span>
											</p>
										</div>
									</div>


									
								</div>
								<div class="tab-pane fade" id="settings" role="tabpanel"
									aria-labelledby="profile-tab2">
									<form method="post" class="needs-validation">
										<div class="card-header">
											<h4>Edit Profile</h4>
										</div>
										<div class="card-body">
											<div class="row">
												<div class="form-group col-md-6 col-12">
													<label>First Name</label> <input type="text"
														class="form-control" value="${user.firstname}" disabled="disabled">
													
												</div>
												<div class="form-group col-md-6 col-12">
													<label>Last Name</label> <input type="text"
														class="form-control" value=" ${user.lastname}" disabled="disabled">
													
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-7 col-12">
													<label>Birthday</label> <input type="email"
														class="form-control" value=" ${user.dob}" disabled="disabled">
													
												</div>
												<div class="form-group col-md-5 col-12">
													<label>Age</label> <input type="text" class="form-control"
														value=" ${user.age}" disabled="disabled">
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-7 col-12">
													<label>Email</label> <input type="email"
														class="form-control" value=" ${user.email}">
													<div class="invalid-feedback">Please fill in the
														email</div>
												</div>
												<div class="form-group col-md-5 col-12">
													<label>Phone</label> <input type="tel" class="form-control"
														value=" ${user.mobileno}">
												</div>
											</div>
											
											


										</div>
										<div class="card-footer text-right">
											<button class="btn btn-primary">Save Changes</button>
										</div>
									</form>
								</div>


								<div class="tab-pane fade" id="changepassword" role="tabpanel"
									aria-labelledby="profile-tab2">
									<form method="post" class="needs-validation">
										<div class="card-header">
											<h4>Change Password</h4>
										</div>
										<div class="card-body">
											<div class="row">
												<div class="form-group col-md-6 col-12">
													<label>Old Password</label> <input type="password"
														class="form-control" value="${user.password}">
													
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6 col-12">
													<label>New Password</label> <input type="password"
														class="form-control" value="">
													<div class="invalid-feedback">Please fill in the New
														Password</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group col-md-6 col-12">
													<label>Confirm New Password</label> <input type="password"
														class="form-control" value="">
													<div class="invalid-feedback">Please fill in the
														Confirm New Password</div>
												</div>

											</div>


										</div>
										<div class="card-footer text-right">
											<button class="btn btn-primary">Save Changes</button>
										</div>
									</form>
								</div>


							</div>
						</div>
					</div>
				</div>




			</div>
		</div>
	</div>

</body>
</html>
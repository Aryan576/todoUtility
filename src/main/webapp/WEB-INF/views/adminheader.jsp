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
</head>
<body>
	
			<div class="navbar-bg"></div>
			<nav class="navbar navbar-expand-lg main-navbar sticky">
				<div class="form-inline mr-auto">
					<ul class="navbar-nav mr-3">
						<li><a href="#" data-toggle="sidebar"
							class="nav-link nav-link-lg
									collapse-btn"> <i
								data-feather="align-justify"></i></a></li>
						<li><a href="#" class="nav-link nav-link-lg fullscreen-btn">
								<i data-feather="maximize"></i>
						</a></li>
						<li>
							<!-- <form class="form-inline mr-auto">
								<div class="search-element">
									<input class="form-control" type="search" placeholder="Search"
										aria-label="Search" data-width="200">
									<button class="btn" type="submit">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</form> -->
						</li>
					</ul>
				</div>
				<ul class="navbar-nav navbar-right">
				
				<li>
				<p id="currentTime" style="font-size: 25px;margin-top: 12%;font-weight: 500;color: #000"></p>
				
						</li>
				
				
					<li class="dropdown dropdown-list-toggle"><a href="#"
						data-toggle="dropdown" class="nav-link nav-link-lg message-toggle"><i class="far fa-calendar-check" style="color: #000"></i> <!-- <span class="badge headerBadge1">
								6 </span> --> </a>
						<div
							class="dropdown-menu dropdown-list dropdown-menu-right pullDown">
							<div class="dropdown-header">
								New Users
								<div class="float-right">
									<a href="#">Mark All As Read</a>
								</div>
							</div>
							<div class="dropdown-list-content dropdown-list-message">
								 <!-- <a href="#" class="dropdown-item"> <span
									class="dropdown-item-avatar text-white"> <img
										alt="image" src="assets/img/users/user-2.png"
										class="rounded-circle">
								</span> <span class="dropdown-item-desc"> <span
										class="message-user">Sarah Smith</span> <span
										class="time messege-text">Client Requirements</span> <span
										class="time">2 Days Ago</span>
								</span>
								</a> -->
							</div>
							<div class="dropdown-footer text-center">
								<a href="#">View All <i class="fas fa-chevron-right"></i></a>
							</div>
						</div></li>
					<li class="dropdown dropdown-list-toggle"><a href="#"
						data-toggle="dropdown"
						class="nav-link notification-toggle nav-link-lg"><i class="far fa-check-circle" style="color: #000"></i> </a>
						<div
							class="dropdown-menu dropdown-list dropdown-menu-right pullDown">
							<div class="dropdown-header">
								Active Users
								<div class="float-right">
									<a href="#">Mark All As Read</a>
								</div>
							</div>
							<div class="dropdown-list-content dropdown-list-icons">
								<!--  <a href="#" class="dropdown-item"> <span
									class="dropdown-item-icon bg-info text-white"> <i
										class="fas
												fa-bell"></i>
								</span> <span class="dropdown-item-desc"> Welcome to Otika
										template! <span class="time">Yesterday</span>
								</span>
								</a> -->
							</div>
							<div class="dropdown-footer text-center">
								<a href="#">View All <i class="fas fa-chevron-right"></i></a>
							</div>
						</div></li>
					<li class="dropdown"><a href="#" data-toggle="dropdown"
						class="nav-link dropdown-toggle nav-link-lg nav-link-user"> <i class="fas fa-user" style="color: #000;margin-top: 14%"></i> <span
							class="d-sm-none d-lg-inline-block"></span></a>
						<div class="dropdown-menu dropdown-menu-right pullDown">
							<div class="dropdown-title">Hello Admin</div>
							<!-- <a href="profile.html" class="dropdown-item has-icon"> <i
								class="far
										fa-user"></i> Profile
							</a>  -->
							
							<a href="auth-login.html"
								class="dropdown-item has-icon text-danger"> <i
								class="fas fa-sign-out-alt"></i> Logout
							</a>
						</div></li>
				</ul>
			</nav>
			<div class="main-sidebar sidebar-style-2">
				<aside id="sidebar-wrapper">
					<div class="sidebar-brand">
						<a href="adminhome"><img alt="image" src="assets/img/todologo.png" class="header-logo"> <span class="logo-name">TODOAssist</span>
						</a>
					</div>
					<ul class="sidebar-menu">
						<li class="menu-header" style="font-size: 13px">Main</li>
						<li class="dropdown"><a href="adminhome" class="nav-link"><i
								class="fas fa-home" style="font-size: 20px"></i><span>Dashboard</span></a></li>

						<li class="dropdown"><a href="todayusers" class="nav-link"><i
								class="fas fa-calendar-check" style="font-size: 20px"></i><span>New User</span></a></li>

						<li class="dropdown"><a href="activeusers" class="nav-link"><i
								class="fas fa-check-circle" style="font-size: 20px"></i><span>Active User</span></a></li>

						<li class="dropdown"><a href="totalusers" class="nav-link"><i
								class="fas fa-users" style="font-size: 20px"></i><span>Users</span></a></li>

						<li class="dropdown"><a href="admincalendar" class="nav-link"><i
								class="far fa-calendar-alt" style="font-size: 20px"></i><span>Calendar</span></a></li>

						<li class="dropdown"><a href="adminnotes" class="nav-link"><i
								class="fas fa-file-alt" style="font-size: 20px"></i><span>Notes</span></a></li>

						


					</ul>
				</aside>
			</div>
			<div class="settingSidebar">
					<a href="javascript:void(0)" class="settingPanelToggle"> <i
						class="fa fa-spin fa-cog"></i>
					</a>
					<div class="settingSidebar-body ps-container ps-theme-default">
						<div class=" fade show active">
							<div class="setting-panel-header">Setting Panel</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Select Layout</h6>
								<div class="selectgroup layout-color w-50">
									<label class="selectgroup-item"> <input type="radio"
										name="value" value="1"
										class="selectgroup-input-radio select-layout" checked>
										<span class="selectgroup-button">Light</span>
									</label> <label class="selectgroup-item"> <input type="radio"
										name="value" value="2"
										class="selectgroup-input-radio select-layout"> <span
										class="selectgroup-button">Dark</span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Sidebar Color</h6>
								<div class="selectgroup selectgroup-pills sidebar-color">
									<label class="selectgroup-item"> <input type="radio"
										name="icon-input" value="1"
										class="selectgroup-input select-sidebar"> <span
										class="selectgroup-button selectgroup-button-icon"
										data-toggle="tooltip" data-original-title="Light Sidebar"><i
											class="fas fa-sun"></i></span>
									</label> <label class="selectgroup-item"> <input type="radio"
										name="icon-input" value="2"
										class="selectgroup-input select-sidebar" checked> <span
										class="selectgroup-button selectgroup-button-icon"
										data-toggle="tooltip" data-original-title="Dark Sidebar"><i
											class="fas fa-moon"></i></span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Color Theme</h6>
								<div class="theme-setting-options">
									<ul class="choose-theme list-unstyled mb-0">
										<li title="white" class="active">
											<div class="white"></div>
										</li>
										<li title="cyan">
											<div class="cyan"></div>
										</li>
										<li title="black">
											<div class="black"></div>
										</li>
										<li title="purple">
											<div class="purple"></div>
										</li>
										<li title="orange">
											<div class="orange"></div>
										</li>
										<li title="green">
											<div class="green"></div>
										</li>
										<li title="red">
											<div class="red"></div>
										</li>
									</ul>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<div class="theme-setting-options">
									<label class="m-b-0"> <input type="checkbox"
										name="custom-switch-checkbox" class="custom-switch-input"
										id="mini_sidebar_setting"> <span
										class="custom-switch-indicator"></span> <span
										class="control-label p-l-10">Mini Sidebar</span>
									</label>
								</div>
							</div>
							<div class="p-15 border-bottom">
								<div class="theme-setting-options">
									<label class="m-b-0"> <input type="checkbox"
										name="custom-switch-checkbox" class="custom-switch-input"
										id="sticky_header_setting"> <span
										class="custom-switch-indicator"></span> <span
										class="control-label p-l-10">Sticky Header</span>
									</label>
								</div>
							</div>
							<div class="mt-4 mb-4 p-3 align-center rt-sidebar-last-ele">
								<a href="#"
									class="btn btn-icon icon-left btn-primary btn-restore-theme">
									<i class="fas fa-undo"></i> Restore Default
								</a>
							</div>
						</div>
					</div>
				</div>
				
		</div>
	</div>

	<!-- General JS Scripts -->
	<script src="assets/js/app.min.js"></script>
	<!-- JS Libraies -->
	<script src="assets/bundles/apexcharts/apexcharts.min.js"></script>
	<!-- Page Specific JS File -->
	<script src="assets/js/page/index.js"></script>
	<!-- Template JS File -->
	<script src="assets/js/scripts.js"></script>
	<!-- Custom JS File -->
	<script src="assets/js/custom.js"></script>
	<script type="text/javascript">
	window.onload = function() {
		  clock();  
		    function clock() {
		    var now = new Date();
		    var TwentyFourHour = now.getHours();
		    var hour = now.getHours();
		    var min = now.getMinutes();
		    var sec = now.getSeconds();
		    var mid = 'PM';
		    if (min < 10) {
		      min = "0" + min;
		    }
		    if (hour > 12) {
		      hour = hour - 12;
		    }    
		    if(hour==0){ 
		      hour=12;
		    }
		    if(TwentyFourHour < 12) {
		       mid = 'AM';
		    }     
		  document.getElementById('currentTime').innerHTML =     hour+':'+min+' '+mid ;
		    setTimeout(clock, 1000);
		    }
		}

	</script>
	
</body>
</html>
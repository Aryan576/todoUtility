<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
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


								<h4>Add Task</h4>
								<div class="card-header-action">
									<h4>
										<a href="userhome"><b style="color: blue">Dashboard</b></a>
										&nbsp;/ AddTask
									</h4>

								</div>

							</div>

						</div>
					</div>
				</div>

				<div class="row">

					<div class="col">
						<div class="card">
							<form action="addTasks" method="post">
								<div class="card-header">
									<h4>Task Registration</h4>
								</div>
								<input type="hidden" name="userid" value="${user.userid}">
								<div class="card-body">
									<div class="form-group">
										<label>Task Name</label> <input type="text" placeholder="Enter the Task Name"
											class="form-control" name="taskname"
											required>
										
									</div>
									<div class="form-group">
										<label>Description</label> <input type="text" placeholder="Enter the Task Description"
											class="form-control" name="description"
											required>
										
									</div>
									<div class="form-group">
										<label>Start Date</label> <input type="date" placeholder="Enter the Start Date"
											class="form-control" pattern="\d{1,2}/\d{1,2}/\d{4}" name="startDate"
											required>
										
									</div>
									<div class="form-group">
										<label>End Date</label> <input type="date" placeholder="Enter the End date"
											class="form-control" pattern="\d{1,2}/\d{1,2}/\d{4}" name="endDate"
											required>
										
									</div>
									<div class="form-group">
										<label>Time</label> <input type="time" placeholder="Enter the Task Time"
											class="form-control" name="tasktime"
											required>
										
									</div>
								</div>
								<div class="card-footer text-right">
									<button type="submit"  class="btn btn-primary">Submit</button>
								</div>
							</form>
						</div>
						
					</div>

				</div>

				

				<div class="settingSidebar">
					<a href="javascript:void(0)" class="settingPanelToggle"> <i
						class="fa fa-spin fa-cog"></i>
					</a>
					<div class="settingSidebar-body ps-container ps-theme-default"
						tabindex="2" style="overflow: hidden; outline: none;">
						<div class=" fade show active">
							<div class="setting-panel-header">Setting Panel</div>
							<div class="p-15 border-bottom">
								<h6 class="font-medium m-b-10">Select Layout</h6>
								<div class="selectgroup layout-color w-50">
									<label class="selectgroup-item"> <input type="radio"
										name="value" value="1"
										class="selectgroup-input-radio select-layout" checked="">
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
										class="selectgroup-input select-sidebar" checked=""> <span
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
					<div id="ascrail2001" class="nicescroll-rails nicescroll-rails-vr"
						style="width: 8px; z-index: 999; cursor: default; position: absolute; top: 0px; left: 272px; height: 745.6px; display: none;">
						<div class="nicescroll-cursors"
							style="position: relative; top: 0px; float: right; width: 6px; height: 0px; background-color: rgb(66, 66, 66); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-radius: 5px;"></div>
					</div>
					<div id="ascrail2001-hr"
						class="nicescroll-rails nicescroll-rails-hr"
						style="height: 8px; z-index: 999; top: 737.6px; left: 0px; position: absolute; cursor: default; display: none;">
						<div class="nicescroll-cursors"
							style="position: absolute; top: 0px; height: 6px; width: 0px; background-color: rgb(66, 66, 66); border: 1px solid rgb(255, 255, 255); background-clip: padding-box; border-radius: 5px;"></div>
					</div>
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
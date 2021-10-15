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

<style>
.popup {
	width: 90%;
	padding: 15px;
	left: 0;
	margin-left: 5%;
	border: 1px solid rgb(1, 82, 73);
	border-radius: 10px;
	color: rgb(1, 82, 73);
	background: #22252A;
	position: absolute;
	top: 15%;
	box-shadow: 5px 5px 5px #000;
	z-index: 10001;
	font-weight: 700;
	text-align: center;
}

.overlay {
	position: fixed;
	width: 100%;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background: rgba(0, 0, 0, .85);
	z-index: 10000;
	display: none;
}

@media ( min-width : 768px) {
	.popup {
		width: 66.66666666%;
		margin-left: 16.666666%;
	}
}

/* Star Mark */
.rating-wrapper label {
	display: inline-block;
	margin-bottom: 17%;
	width: 25px;
	position: relative;
	cursor: pointer;
}

.rating-wrapper input {
	display: none;
}

.rating-wrapper label:before {
	content: "\2605";
	position: absolute;
	font-size: 30px;
	display: inline-block;
	top: 0;
	left: 0;
}

.rating-wrapper label:after {
	content: "\2605";
	position: absolute;
	font-size: 30px;
	display: inline-block;
	top: 0;
	left: 0;
	color: #DB6574;
	opacity: 0;
}

.rating-wrapper label:hover:after {
	opacity: 1;
}

.rating-wrapper input:checked ~label:after {
	opacity: 1;
}
</style>
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
					<!-- <form id="searchForm" action="#">
						<div class="form-group">
							<input type="search" name="search"
								placeholder="What are you searching for...">
							<button type="submit" class="submit">Search</button>
						</div>
					</form> -->
				</div>
			</div>
			<div
				class="container-fluid d-flex align-items-center justify-content-between">
				<div class="navbar-header">
					<!-- Navbar Header-->
					<a href="index.html" class="navbar-brand">
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


					<div class="list-inline-item dropdown">
						<a id="navbarDropdownMenuLink1" href="http://example.com"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							class="nav-link messages-toggle"><i
							class="fas fa-hourglass-half"></i><span class="badge dashbg-2">2</span></a>
						<div aria-labelledby="navbarDropdownMenuLink1"
							class="dropdown-menu messages">
							<a href="#" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong>Pending Task</strong>
								</div>

							</a>

						</div>
					</div>

					<div class="list-inline-item dropdown">
						<a id="navbarDropdownMenuLink1" href="http://example.com"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							class="nav-link messages-toggle"><i class="fas fa-bullhorn"></i><span
							class="badge dashbg-1">2</span></a>
						<div aria-labelledby="navbarDropdownMenuLink1"
							class="dropdown-menu messages">
							<a href="#" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong>Upcoming Task</strong>
								</div>

							</a>

						</div>
					</div>
					<!-- Tasks-->
					<div class="list-inline-item dropdown">
						<a id="navbarDropdownMenuLink2" href="http://example.com"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							class="nav-link tasks-toggle"><i
							class="fas fa-calendar-check"></i><span class="badge dashbg-3">2</span></a>
						<div aria-labelledby="navbarDropdownMenuLink2"
							class="dropdown-menu tasks-list">
							<a href="#" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong>Task Notification</strong>
								</div>

							</a>
						</div>
					</div>
					<!-- Tasks end-->
					<!-- Log out               -->
					<div class="list-inline-item dropdown">
						<a id="navbarDropdownMenuLink2" href="http://example.com"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
							class="nav-link tasks-toggle"><i class="fas fa-user"></i></a>
						<div aria-labelledby="navbarDropdownMenuLink2"
							class="dropdown-menu tasks-list">
							<a href="myprofile" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong><i class="fas fa-user"></i>&nbsp;&nbsp;&nbsp;My
										Profile</strong>
								</div>

							</a> <a href="editprofile" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong><i class="fas fa-user-edit"></i>&nbsp;&nbsp;&nbsp;Edit
										Profile</strong>
								</div>

							</a> <a href="/" class="dropdown-item">
								<div class="text d-flex justify-content-between">
									<strong><i class="fas fa-power-off"></i>&nbsp;&nbsp;&nbsp;Logout

									</strong>
								</div>

							</a>

						</div>
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
				<input class="form-control" type="text"  id="myInput" onkeyup="myFunction()"
					placeholder="Search" aria-label="Search">
			</div>
			<br>
			<!-- Sidebar Navidation Menus-->
			<span class="heading">Main</span>
			<ul id="myUL" class="list-unstyled">
				<li><a href="userhome"> <i class="fas fa-home"></i>Home
				</a></li>
				<li class="active"><a href="myday"> <i class="fas fa-sun"></i>MyDay
				</a></li>
				<li><a href="important"> <i class="fas fa-star"></i>Important
				</a></li>
				<li><a href="tasks"> <i class="fas fa-tasks"></i>Tasks
				</a></li>
				<li><a href="groups"> <i class="fas fa-users"></i>Groups
				</a></li>
				<li><a href="calendar"> <i class="far fa-calendar-alt"></i>Calendar
				</a></li>
				<li><a href="stickynotes"> <i class="fas fa-file-alt"></i>Sticky
						Notes
				</a></li>

			</ul>
		</nav>
		<div class="page-content">
			<div class="page-header">
				<div class="container-fluid">
					<h2 class="h5 no-margin-bottom">MyDay</h2>
				</div>


			</div>
			<div class="overlay" id="dialog-container">
				<div class="popup">
					<h1>
						<i class="fas fa-exclamation-triangle" style="color: #DB6574;"></i>
					</h1>
					<br>
					<h4 style="color: #8A8D93;">Delete</h4>
					<p style="color: #8A8D93;">Are you sure want to delete ?</p>
					<div class="text-right">
						<button class="btn btn-light" id="cancel">
							<b>Cancel</b>
						</button>
						&nbsp;&nbsp;
						<button class="btn btn-primary" id="confirm">
							<b>&nbsp;Delete&nbsp;</b>
						</button>
					</div>
				</div>
			</div>

			<div class="overlay" id="container-check">
				<div class="popup">
					<h1>
						<i class="fas fa-exclamation-triangle" style="color: #FFC107;"></i>
					</h1>
					<br>
					<h4 style="color: #8A8D93;">Confirm</h4>
					<p style="color: #8A8D93;">Are you sure that your task is
						completed ?</p>
					<div class="text-right">
						<button class="btn btn-light" id="cancel-check">
							<b>Cancel</b>
						</button>
						&nbsp;&nbsp;
						<button class="btn btn-primary" id="confirm-check">
							<b>&nbsp;Confirm&nbsp;</b>
						</button>
					</div>
				</div>
			</div>



			<div class="col">
				<div class="container">
					<input class="form-control" type="text" id="searchtask"
						placeholder="Search Task" aria-label="Search">
				</div>
				<br>
				<ul id="task" style="list-style-type: none;">
					<li><div class="public-user-block block">
							<div class="row d-flex align-items-center">
								<div class="col-lg-4 d-flex align-items-center">
									<div class="order">
										<input type="checkbox" id="show-dialog-check" id="input-1"
											name="input-1" class="checkbox-template">
										&nbsp;&nbsp;&nbsp;
									</div>
									<a href="#" class="name"><strong class="d-block">Task
											1</strong></a>
								</div>
								<div class="col-lg-4 text-center"></div>
								<div class="col-lg-4">
									<div class="details d-flex">
										<div class="item"></div>
										<div class="item">

											<a id="navbarDropdownMenuLink2" style="margin-left: 10%"
												href="http://example.com" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false"
												class="nav-link tasks-toggle"><i
												class="fas fa-info-circle" style="font-size: 20px"></i></a>
											<div aria-labelledby="navbarDropdownMenuLink2"
												class="dropdown-menu tasks-list">
												<a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>Description :&nbsp;&nbsp;&nbsp;good for
															health</strong>
													</div>
												</a> <a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>StartDate :&nbsp;&nbsp;&nbsp;12-10-21</strong>
													</div>
												</a> <a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>EndDate :&nbsp;&nbsp;&nbsp;16-10-21</strong>
													</div>
												</a> <a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>Time :&nbsp;&nbsp;&nbsp;12:00am</strong>
													</div>
												</a>



											</div>

										</div>
										<div class="rating-wrapper item">

											&nbsp; <i id="btn-show-dialog"
												style="cursor: pointer; font-size: 18px"
												class="fas fa-trash-alt"></i>&nbsp; <input type="radio"
												name="rating" id="star-1"><label for="star-1"
												style="width: 20px;"></label>

										</div>


									</div>

								</div>
							</div>
						</div></li>



					<li><div class="public-user-block block">
							<div class="row d-flex align-items-center">
								<div class="col-lg-4 d-flex align-items-center">
									<div class="order">
										<input type="checkbox" id="btn-show-dialog-check" id="input-1"
											name="input-1" class="checkbox-template">
										&nbsp;&nbsp;&nbsp;
									</div>
									<a href="#" class="name"><strong class="d-block">Task
											2</strong></a>
								</div>
								<div class="col-lg-4 text-center"></div>
								<div class="col-lg-4">
									<div class="details d-flex">
										<div class="item"></div>
										<div class="item">

											<a id="navbarDropdownMenuLink2" style="margin-left: 10%"
												href="http://example.com" data-toggle="dropdown"
												aria-haspopup="true" aria-expanded="false"
												class="nav-link tasks-toggle"><i
												class="fas fa-info-circle" style="font-size: 20px"></i></a>
											<div aria-labelledby="navbarDropdownMenuLink2"
												class="dropdown-menu tasks-list">
												<a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>Description :&nbsp;&nbsp;&nbsp;good for
															health</strong>
													</div>
												</a> <a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>StartDate :&nbsp;&nbsp;&nbsp;12-10-21</strong>
													</div>
												</a> <a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>EndDate :&nbsp;&nbsp;&nbsp;16-10-21</strong>
													</div>
												</a> <a class="dropdown-item">
													<div class="text d-flex justify-content-between">
														<strong>Time :&nbsp;&nbsp;&nbsp;12:00am</strong>
													</div>
												</a>



											</div>

										</div>
										<div class="rating-wrapper item">

											&nbsp; <i id="btn-show-dialog"
												style="cursor: pointer; font-size: 18px"
												class="fas fa-trash-alt"></i>&nbsp; <input type="radio"
												name="rating" id="star-1"><label for="star-1"
												style="width: 20px;"></label>

										</div>


									</div>

								</div>
							</div>
						</div></li>
			</div>
			</ul>
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
		<script>
			// Call function when show dialog btn is clicked
			document.getElementById("btn-show-dialog").onclick = function() {
				show_dialog_delete()
			};
			var overlayme = document.getElementById("dialog-container");

			function show_dialog_delete() {
				/* A function to show the dialog window */
				overlayme.style.display = "block";
			}

			// If confirm btn is clicked , the function confim() is executed
			document.getElementById("confirm").onclick = function() {
				confirm_delete()
			};
			function confirm_delete() {
				/* code executed if confirm is clicked */
				overlayme.style.display = "none";
			}

			// If cancel btn is clicked , the function cancel() is executed
			document.getElementById("cancel").onclick = function() {
				cancel_delete()
			};
			function cancel_delete() {
				/* code executed if cancel is clicked */
				overlayme.style.display = "none";
			}
		</script>
		<script>
			// Call function when show dialog btn is clicked
			document.getElementById("show-dialog-check").onclick = function() {
				show_dialog_check()
			};
			var overlayme1 = document.getElementById("container-check");

			function show_dialog_check() {
				/* A function to show the dialog window */
				overlayme1.style.display = "block";
			}

			// If confirm btn is clicked , the function confim() is executed
			document.getElementById("confirm-check").onclick = function() {
				confirm()
			};
			function confirm() {
				/* code executed if confirm is clicked */
				overlayme1.style.display = "none";
			}

			// If cancel btn is clicked , the function cancel() is executed
			document.getElementById("cancel-check").onclick = function() {
				cancel()
			};
			function cancel() {
				/* code executed if cancel is clicked */
				overlayme1.style.display = "none";
			}
		</script>

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
				document.getElementById('time').innerHTML = h + ":" + m + ":"
						+ s;
				t = setTimeout(function() {
					startTime()
				}, 500);
			}
			startTime();
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

		<script>
			var $rows = $('#task li');
			$('#searchtask').keyup(
					function() {
						var val = $.trim($(this).val()).replace(/ +/g, ' ')
								.toLowerCase();

						$rows.show().filter(
								function() {
									var text = $(this).text().replace(/\s+/g,
											' ').toLowerCase();
									return !~text.indexOf(val);
								}).hide();
					});
		</script>
</body>
</html>
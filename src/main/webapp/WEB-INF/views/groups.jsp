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
</style>
</head>
<body>


		<%@include file="userheader.jsp"%>
	<div class="d-flex align-items-stretch">
		<!-- Sidebar Navigation-->
		<%@include file="usersidebar.jsp"%>
		<div class="page-content">
			<div class="page-header">
				<div class="container-fluid">
					<h2 class="h5 no-margin-bottom">List of Group</h2>
				</div>


			</div>

			<div class="col">

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

				<form class="form-validate">
					<div class="form-group">
						<label for="groupname" class="form-control-label"
							class="label-material">Group Name</label> <input id="groupname"
							type="text" placeholder="Enter the name of Group" name="taskname"
							class="form-control" required
							data-msg="Please enter your Group Name" class="input-material">

					</div>

					<div class="form-group">

						<input type="submit" value="Create Group" class="btn btn-primary">
					</div>
				</form>



				<div class="container">
					<input class="form-control" type="text" id="searchgroup"
						placeholder="Search Group" aria-label="Search">
				</div>
				<ul id="group" style="list-style-type: none;">
					<br>


					<li><div class="public-user-block block">
							<div class="row d-flex align-items-center">
								<div class="col-lg-4 d-flex align-items-center">

									<a href="#" class="name"><strong class="d-block">Group
											1</strong></a>
								</div>

								<div class="col-lg-4 text-center"></div>
								<div class="col-lg-4">
									<div class="details d-flex">
										<div class="item"></div>
										<div class="item"></div>
										<div class="item">
											<i class="fas fa-edit"
												style="font-size: 18px;; cursor: pointer;"></i>&nbsp;<i
												id="btn-show-dialog" style="cursor: pointer"
												class="fas fa-trash-alt" style="font-size: 18px;"></i>&nbsp;
											<a href="#exampledropdownDropdowngrp1" aria-expanded="false"
												data-toggle="collapse"> <i
												class="fas fa-chevron-circle-down"
												style="font-size: 18px; cursor: pointer;"></i>
											</a>&nbsp;

										</div>
									</div>
								</div>
								<ul id="exampledropdownDropdowngrp1"
									class="collapse list-unstyled ">
									<br>
									<div class="input-group">
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text"
											class="form-control" placeholder="Enter the new work"
											required data-msg="Please enter your Group Name"
											class="input-material">
										<div class="input-group-append">
											<button type="button" class="btn btn-primary">Create
												Work</button>
										</div>
									</div>


									<br>
									<li><a href="#" class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
											class="fas fa-angle-right"></i> <span style="font-size: 18px"><b>Abc</b></span></a></li>
									<li><a href="#" class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
											class="fas fa-angle-right"></i> <span style="font-size: 18px"><b>Xyz</b></span></a></li>

								</ul>
							</div>
						</div></li>

					<li><div class="public-user-block block">
							<div class="row d-flex align-items-center">
								<div class="col-lg-4 d-flex align-items-center">

									<a href="#" class="name"><strong class="d-block">Group
											2</strong></a>
								</div>

								<div class="col-lg-4 text-center"></div>
								<div class="col-lg-4">
									<div class="details d-flex">
										<div class="item"></div>
										<div class="item"></div>
										<div class="item">
											<i class="fas fa-edit"
												style="font-size: 18px; cursor: pointer;"></i>&nbsp;<i
												class="fas fa-trash-alt"
												style="font-size: 18px; cursor: pointer"></i>&nbsp; <a
												href="#exampledropdownDropdowngrp2" aria-expanded="false"
												data-toggle="collapse"> <i
												class="fas fa-chevron-circle-down"
												style="font-size: 18px; cursor: pointer"></i>
											</a>

										</div>
									</div>
								</div>
								<ul id="exampledropdownDropdowngrp2"
									class="collapse list-unstyled ">

									<br>
									<li><a href="#" class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
											class="fas fa-angle-right"></i> <span style="font-size: 18px"><b>Abc</b></span></a></li>
									<li><a href="#" class="name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<i
											class="fas fa-angle-right"></i> <span style="font-size: 18px"><b>Xyz</b></span></a></li>

								</ul>
							</div>
						</div></li>
				</ul>
			</div>
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
		<script>
			// Call function when show dialog btn is clicked
			document.getElementById("btn-show-dialog").onclick = function() {
				show_dialog()
			};
			var overlayme = document.getElementById("dialog-container");

			function show_dialog() {
				/* A function to show the dialog window */
				overlayme.style.display = "block";
			}

			// If confirm btn is clicked , the function confim() is executed
			document.getElementById("confirm").onclick = function() {
				confirm()
			};
			function confirm() {
				/* code executed if confirm is clicked */
				overlayme.style.display = "none";
			}

			// If cancel btn is clicked , the function cancel() is executed
			document.getElementById("cancel").onclick = function() {
				cancel()
			};
			function cancel() {
				/* code executed if cancel is clicked */
				overlayme.style.display = "none";
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
			var $rows = $('#group li');
			$('#searchgroup').keyup(
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
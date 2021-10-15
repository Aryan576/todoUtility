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
					<form id="searchForm" action="#">
						<div class="form-group">
							<input type="search" name="search"
								placeholder="What are you searching for...">
							<button type="submit" class="submit">Search</button>
						</div>
					</form>
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
					<!-- 
					<div class="list-inline-item">
						Search form
						<input class="form-control" type="text" placeholder="Search"
							aria-label="Search">
					</div> -->


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

							</a>

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
</body>
</html>
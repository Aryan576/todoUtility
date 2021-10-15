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
textarea{
min-height: 600px;
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
					<h2 class="h5 no-margin-bottom">My Notes</h2>
				</div>


			</div>

			<div class="col">


				<form method="post">
					<textarea id="mytextarea"></textarea>
				</form>
				<!-- <button id="bottone" onclick="myFunc()">Ok</button> -->

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
		<script
			src="https://cdn.tiny.cloud/1/nklzzr80nbh42fu5eby0d4ipfkv57tp61il9if12c53ie9le/tinymce/5/tinymce.min.js"
			referrerpolicy="origin"></script>
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
		<script>
			var $rows = $('#table li');
			$('#search').keyup(
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
		<script type="text/javascript">
			tinymce.init({
				selector : "#mytextarea"
			});

			function myFunc() {
				console.log(document.getElementById("mytextarea").value);
			}
		</script>
</body>
</html>
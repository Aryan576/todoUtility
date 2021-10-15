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

<!-- Bootstrap CSS -->

<link href="./calendar-styles.min.css" rel="stylesheet" />


<style>
#calendar .calendar-view .moment-today {
	border: 2px solid #00ff90 !important;
}

#calendar .calendar-view>.list {
	flex-basis: auto;
	height: auto;
	display: none;
}

#calendar .calendar-view>.list h5 {
	background-color: #fff;
	padding: 3px 5px 5px;
	margin: -8px -8px 8px -8px;
}

#calendar .calendar-view>.list.show-only-list {
	display: block;
}

#calendar .calendar-view .bg-0 {
	background-color: #343a40;
}

#calendar .calendar-view .bg-1 {
	background-color: #007bff;
}

#calendar .calendar-view .bg-2 {
	background-color: #6610f2;
}

#calendar .calendar-view .bg-3 {
	background-color: #6f42c1;
}

#calendar .calendar-view .bg-4 {
	background-color: #e83e8c;
}

#calendar .calendar-view .bg-5 {
	background-color: #dc3545;
}

#calendar .calendar-view .bg-6 {
	background-color: #fd7e14;
}

#calendar .calendar-view .bg-7 {
	background-color: #ffc107;
}

#calendar .calendar-view .bg-8 {
	background-color: #28a745;
}

#calendar .calendar-view .bg-9 {
	background-color: #20c997;
}

#calendar .calendar-view .bg-10 {
	background-color: #17a2b8;
}

#calendar .calendar-view .bg-11 {
	background-color: #f8f9fa;
}

#calendar .calendar-view .bg-12 {
	background-color: #fff;
}

#calendar .calendar-view .bg-13 {
	background-color: #343a40;
}

#calendar .calendar-view .bg-14 {
	background-color: #007bff;
}

#calendar .calendar-view .bg-15 {
	background-color: #6c757d;
}

#calendar .calendar-view .bg-16 {
	background-color: #28a745;
}

#calendar .calendar-view .bg-17 {
	background-color: #17a2b8;
}

#calendar .calendar-view .bg-18 {
	background-color: #ffc107;
}

#calendar .calendar-view .bg-19 {
	background-color: #dc3545;
}

@media ( max-width : 991px) {
	.display-4 {
		font-size: 1.5rem;
	}
	.day h5 {
		background-color: #eee;
		padding: 3px 5px 5px;
		margin: -8px -8px 8px -8px;
	}
	.date {
		padding-left: 4px;
	}
	.calendar-view>div {
		display: none;
	}
	.calendar-view>div.show-only-list {
		display: block;
	}
	.calendar-view>div.show-only-list .events-holder>a {
		display: block;
		border-radius: .25rem;
		width: 100%;
	}
}

@media ( min-width : 992px) {
	#calendar .calendar-view .day.grid {
		min-height: 9vw;
	}
	#calendar .calendar-view .day.grid h5 small {
		display: none;
	}
	#calendar .calendar-view .day.grid .events-holder a {
		width: 25px;
		height: 25px;
		border-radius: 15px;
		margin-right: 2px;
	}
	#calendar .calendar-view .day.grid .events-holder .course-name {
		display: none;
	}
	#calendar .calendar-view .day.calendar-prior-months-date h5 small {
		display: none;
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
					<h2 class="h5 no-margin-bottom">Calendar</h2>
				</div>


			</div>



			<div class="container">

				<div class="container-fluid calendar" id="calendar">
					<header>
						<div class="row">
							<div
								class="col-sm-9 d-flex justify-content-between align-items-center my-2">
								<!-- Calendar "prev" button -->
								<button data-toggle="calendar" data-action="prev"
									class="btn btn-indigo"
									style="background-color: #864DD9; color: #fff">
									<i class="fa fa-chevron-left"></i>
								</button>

								<h4 class="calendar-current-date display-4 text-center"
									data-day-format="MM/DD/YYYY" data-week-format="MM/DD/YYYY"
									data-month-format="MMMM, YYYY"></h4>

								<!-- Calendar "next" button -->
								<button data-toggle="calendar" data-action="next"
									class="btn btn-indigo"
									style="background-color: #864DD9; color: #fff">
									<i class="fa fa-chevron-right"></i>
								</button>
							</div>

							<div
								class="col-sm-3 d-flex justify-content-between align-items-center my-2">
								<button data-toggle="calendar" data-action="grid"
									class="btn btn-indigo d-none d-lg-block"
									style="background-color: #864DD9; color: #fff">
									<i class="fa fa-calendar"></i>
								</button>

								<button data-toggle="calendar" data-action="list"
									class="btn btn-indigo d-none d-lg-block"
									style="background-color: #864DD9; color: #fff">
									<i class="fa fa-list"></i>
								</button>

								<!-- Calendar "today" button -->
								<button data-toggle="calendar" data-action="today"
									class="btn btn-indigo"
									style="background-color: #864DD9; color: #fff">
									<b>Today</b>
								</button>
							</div>
						</div>

						<div style="background-color: #282B2F"
							class="row d-none d-lg-flex p-1 text-white">
							<h5 class="col-sm p-1 text-center">Sunday</h5>
							<h5 class="col-sm p-1 text-center">Monday</h5>
							<h5 class="col-sm p-1 text-center">Tuesday</h5>
							<h5 class="col-sm p-1 text-center">Wednesday</h5>
							<h5 class="col-sm p-1 text-center">Thursday</h5>
							<h5 class="col-sm p-1 text-center">Friday</h5>
							<h5 class="col-sm p-1 text-center">Saturday</h5>
						</div>
					</header>
				</div>
				<br />
			</div>



		</div>

	</div>
	<script type="text/javascript"
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://momentjs.com/downloads/moment.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/underscore.js/1.9.1/underscore-min.js"></script>
	<script>
		var debugMode = true;
		var showUEConsoleLog = true;

		var apiDebugEndPoint = 'http://localhost:54384/api/lm-classes';
		var apiLiveEndPoint = 'http://cranesapi.venturiscc.com:65000/api/lm-classes';

		var apiEndPoint = debugMode ? apiDebugEndPoint : apiLiveEndPoint;

		$(document).ready(function() {
			$('#calendar').calendar();
		});

		(function($) {

			var Calendar = function(elem, options) {
				this.elem = elem;
				this.options = $.extend({}, Calendar.DEFAULTS, options);
				this.init();
			};

			Calendar.DEFAULTS = {
				datetime : undefined,
				dayFormat : 'DDD',
				weekFormat : 'DDD',
				monthFormat : 'MM/DD/YYYY',
				view : undefined
			};

			Calendar.prototype.init = function() {

				if (!this.options.datetime || this.options.datetime === 'now') {
					this.options.datetime = moment();
				}

				if (!this.options.view) {
					this.options.view = 'month';
				}

				this.initScaffold().initStyle().render();
			};

			Calendar.prototype.initScaffold = function() {

				var $elem = $(this.elem), $view = $elem.find('.calendar-view'), $currentDate = $elem
						.find('.calendar-current-date');

				if (!$view.length) {

					this.view = document.createElement('div');
					this.elem.appendChild(this.view);
				} else {

					this.view = $view[0];
				}

				if ($currentDate.length > 0) {

					var dayFormat = $currentDate.data('day-format'), weekFormat = $currentDate
							.data('week-format'), monthFormat = $currentDate
							.data('month-format');

					this.currentDate = $currentDate[0];

					if (dayFormat) {
						this.options.dayFormat = dayFormat;
					}
					if (weekFormat) {
						this.options.weekFormat = weekFormat;
					}
					if (monthFormat) {
						this.options.monthFormat = monthFormat;
					}
				}
				return this;
			};

			Calendar.prototype.initStyle = function() {
				return this;
			};

			Calendar.prototype.render = function() {
				switch (this.options.view) {
				case 'day':
					this.renderDayView();
					break;
				case 'week':
					this.renderWeekView();
					break;
				case 'month':
					this.renderMonthView();
					break;
				default:
					this.renderMonth();
				}
			};

			Calendar.prototype.renderDayView = function() {
				//$(this.elem).append('Day View');
			};

			Calendar.prototype.renderWeekView = function() {
				//$(this.elem).append('Week View');
			};

			Calendar.prototype.renderMonthView = function() {

				var datetime = this.options.datetime.clone(), month = datetime
						.month();

				datetime.startOf('month').startOf('week');

				var $view = $(this.view);

				var rows = document.createElement('div');
				rows.className = 'calendar-view row border border-right-0 border-bottom-0';

				$view.html('');

				var week = 0, i;
				var endOfMonthMarker = false;

				while (week < 6) {

					for (i = 0; i < 7; i++) {

						var dateHolder = document.createElement('div');

						var dateHolderScafold = document.createElement('h5');
						dateHolderScafold.className = 'row align-items-center';

						var dateHolder_Date = document.createElement('span');
						dateHolder_Date.className = 'date col-1';
						dateHolder_Date.appendChild(document
								.createTextNode(datetime.format('D')));
						dateHolderScafold.appendChild(dateHolder_Date);

						var dateHolder_Day = document.createElement('small');
						dateHolder_Day.className = 'col text-center text-muted';
						dateHolder_Day.appendChild(document
								.createTextNode(datetime.format('dddd')));
						dateHolderScafold.appendChild(dateHolder_Day);

						var dateHolder_Span = document.createElement('span');
						dateHolder_Span.className = 'col-1';
						dateHolderScafold.appendChild(dateHolder_Span);

						dateHolder.appendChild(dateHolderScafold);

						var eventHolder = document.createElement('div');
						eventHolder.className = 'events-holder d-flex align-content-end flex-wrap';

						dateHolder.appendChild(eventHolder);

						if (month !== datetime.month()) {

							dateHolder.className = 'calendar-prior-months-date day col-lg p-2 border border-left-0 border-top-0 text-truncate d-none d-lg-inline-block bg-light text-muted';
						} else {

							var dateClass = datetime.date() + '-'
									+ (datetime.month() + 1) + '-'
									+ datetime.year();
							var weekEnd = i === 0 || i === 6 ? ' weekend ' : '';

							dateHolder.className = 'day col-lg p-2 border border-left-0 border-top-0 text-truncate grid '
									+ weekEnd
									+ dateClass
									+ ' '
									+ (isToday(datetime) ? 'moment-today' : '');
						}

						rows.appendChild(dateHolder);
						datetime.add(1, 'day');

						if (month !== datetime.month() && week >= 4 && i === 6) {
							endOfMonthMarker = true;
						}
					}

					var weekEndDiv = document.createElement('div');
					weekEndDiv.className = 'w-100';
					rows.appendChild(weekEndDiv);

					week++;

					if (endOfMonthMarker)
						break;
				}

				$view[0].appendChild(rows);

				if (this.currentDate) {
					$(this.currentDate).html(
							this.options.datetime
									.format(this.options.monthFormat));
				}

				var monthValue = datetime.month();
				var yearValue = datetime.year();

				if (datetime.month() === 0) {
					monthValue = 12;
					yearValue--;
				}

				this.fetchMonthlyEvents(monthValue, yearValue);
			};

			Calendar.prototype.fetchMonthlyEvents = function(month, year) {

				var $this = this;
				$this.renderDailyEvents(data);

			};

			Calendar.prototype.renderDailyEvents = function(data) {

				_
						.each(
								data.EventsList,
								function(v, k, obj) {

									var dateSelector = '.' + v.StartDate
											+ '> .events-holder';
									var dateTemplate = v.StartDate === v.EndDate ? 'Date: '
											+ v.StartDate
											: v.StartDate + ' - ' + v.EndDate;

									var tooltipTemplate = '<div>' + '<div>'
											+ v.CourseName + '</div>' + '<hr>'
											+ '<div>' + v.CityTownSuburb + ', '
											+ v.StateProvince + '</div>'
											+ '<div>Availibility: '
											+ v.Availibility + '</div>'
											+ '<div>' + dateTemplate + '</div>'
											+ '<div>Time: ' + v.StartTime
											+ ' - ' + v.EndTime + '</div>'
											+ '</div>';

									var eventTemplate = '<a class="event p-1 pl-2 pr-2 mb-1 text-truncate small bg-' + v.ColourCode + ' text-white" data-toggle="tooltip" data-placement="top" data-html="true" title="' + tooltipTemplate + '">'
											+ '<span class="course-name text-truncate small text-white">'
											+ v.CourseName + '</span>' + '</a>';

									$(dateSelector).parent().addClass(
											'show-only-list');
									$(dateSelector).append(eventTemplate);
								});

				// Activate Tooltips
				$('#calendar .event').tooltip();
			};

			Calendar.prototype.next = function() {
				switch (this.options.view) {
				case 'day':
					this.options.datetime.add(1, 'day');
					this.render();
					break;
				case 'week':
					this.options.datetime.endOf('week').add(1, 'day');
					this.render();
					break;
				case 'month':
					this.options.datetime.endOf('month').add(1, 'day');
					this.render();
					break;
				default:
					break;
				}
			};

			Calendar.prototype.prev = function() {
				switch (this.options.view) {
				case 'day':
					break;
				case 'week':
					break;
				case 'month':
					this.options.datetime.startOf('month').subtract(1, 'day');
					this.render();
					break;
				default:
					break;
				}
			};

			Calendar.prototype.today = function() {
				this.options.datetime = moment();
				this.render();
			};

			Calendar.prototype.grid = function() {

				$('#calendar > header').children('div:last').addClass(
						'd-lg-flex');
				$('#calendar .calendar-view > div').removeClass('list')
						.addClass('grid');
				$('#calendar .day small').addClass('d-sm-none');
				$('#calendar .day > p').addClass('d-sm-none');
				$('#calendar .calendar-view .events-holder').addClass('d-flex');
				$('#calendar .calendar-view .events-holder > a').removeClass(
						'd-block rounded');
				$('.calendar-prior-months-date').addClass('d-lg-inline-block');
			};

			Calendar.prototype.list = function() {

				$('#calendar > header').children('div:last').removeClass(
						'd-lg-flex');
				$('#calendar .calendar-view > div').removeClass('grid')
						.addClass('list');
				$('#calendar .day small').removeClass('d-sm-none');
				$('#calendar .day > p').removeClass('d-sm-none');
				$('#calendar .calendar-view .events-holder').removeClass(
						'd-flex');
				$('#calendar .calendar-view .events-holder > a').addClass(
						'd-block rounded');
				$('.calendar-prior-months-date').removeClass(
						'd-lg-inline-block');
			};

			var isToday = function(DateToCheck) {

				return DateToCheck.date() === moment().date()
						&& DateToCheck.month() === moment().month()
						&& DateToCheck.year() === moment().year();
			};

			function Plugin(option) {

				return this
						.each(function() {

							var $this = $(this), data = $this
									.data('bs.calendar'), options = typeof option === 'object'
									&& option;

							if (!data && option !== 'weekend') {
								data = new Calendar(this, options);
								$this.data('bs.calendar', data);
							}

							switch (option) {
							case 'today':
								data.today();
								break;
							case 'prev':
								data.prev();
								break;
							case 'next':
								data.next();
								break;
							case 'grid':
								data.grid();
								break;
							case 'list':
								data.list();
								break;
							default:
								break;
							}
						});
			}

			var noConflict = $.fn.calendar;

			$.fn.calendar = Plugin;
			$.fn.calendar.Constructor = Calendar;

			$.fn.calendar.noConflict = function() {
				$.fn.calendar = noConflict;
				return this;
			};

			// Calendar Events
			$('[data-toggle="calendar"]')
					.click(
							function() {

								var $this = $(this), $elem = $this
										.parents('.calendar'), action = $this
										.data('action');

								if (action) {
									$elem.calendar(action);
								}
							});

		})(jQuery);

		var data = {
			"EventsList" : [
					{
						"EventId" : "EVT-37431-C3EQQF",
						"CourseId" : 2,
						"CourseName" : "Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "23-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "23-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 4,
						"CityTownSuburb" : "KITIMAT",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 5,
						"ColourCode" : 0
					},
					{
						"EventId" : "EVT-37389-ADNY11",
						"CourseId" : 4,
						"CourseName" : "In-House Instructor Training",
						"StartDate" : "23-10-2019",
						"StartTime" : "8:30",
						"EndDate" : "23-10-2019",
						"EndTime" : "4:30",
						"CityTownId" : 2,
						"CityTownSuburb" : "CASSIDY (NANAIMO)",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 10,
						"ColourCode" : 1
					},
					{
						"EventId" : "EVT-37615-K64XTI",
						"CourseId" : 1,
						"CourseName" : "Aerial Work Platform (Non OSSA) Operator Training",
						"StartDate" : "24-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "24-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 11,
						"CityTownSuburb" : "EDMONTON",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 5,
						"ColourCode" : 5
					},
					{
						"EventId" : "EVT-37497-FI7OMG",
						"CourseId" : 3,
						"CourseName" : "Fall Protection Training (FPG - Interprovincial)",
						"StartDate" : "24-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "24-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 8,
						"CityTownSuburb" : "CALGARY",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 13,
						"ColourCode" : 6
					},
					{
						"EventId" : "EVT-37358-0Q5OUT",
						"CourseId" : 1,
						"CourseName" : "Aerial Work Platform (Non OSSA) Operator Training",
						"StartDate" : "25-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "25-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 1,
						"CityTownSuburb" : "COQUITLAM",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 5,
						"ColourCode" : 5
					},
					{
						"EventId" : "EVT-37395-4NSE1T",
						"CourseId" : 2,
						"CourseName" : "Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "25-10-2019",
						"StartTime" : "8:30",
						"EndDate" : "25-10-2019",
						"EndTime" : "4:30",
						"CityTownId" : 2,
						"CityTownSuburb" : "CASSIDY (NANAIMO)",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 9,
						"ColourCode" : 0
					},
					{
						"EventId" : "EVT-37332-SZPAPC",
						"CourseId" : 2,
						"CourseName" : "Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "26-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "26-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 1,
						"CityTownSuburb" : "COQUITLAM",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 3,
						"ColourCode" : 0
					},
					{
						"EventId" : "EVT-37558-6NGE05",
						"CourseId" : 2,
						"CourseName" : "Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "28-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "28-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 9,
						"CityTownSuburb" : "KELOWNA",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 7,
						"ColourCode" : 0
					},
					{
						"EventId" : "EVT-37385-P7VDVX",
						"CourseId" : 1,
						"CourseName" : "Aerial Work Platform (Non OSSA) Operator Training",
						"StartDate" : "29-10-2019",
						"StartTime" : "8:30",
						"EndDate" : "29-10-2019",
						"EndTime" : "4:30",
						"CityTownId" : 2,
						"CityTownSuburb" : "CASSIDY (NANAIMO)",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 2,
						"ColourCode" : 5
					},
					{
						"EventId" : "EVT-37415-XZGJ81",
						"CourseId" : 1,
						"CourseName" : "Aerial Work Platform (Non OSSA) Operator Training",
						"StartDate" : "29-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "29-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 3,
						"CityTownSuburb" : "PRINCE GEORGE",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 8,
						"ColourCode" : 5
					},
					{
						"EventId" : "EVT-38873-986VRF",
						"CourseId" : 1,
						"CourseName" : "Aerial Work Platform (Non OSSA) Operator Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "8:30",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:30",
						"CityTownId" : 2,
						"CityTownSuburb" : "CASSIDY (NANAIMO)",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 10,
						"ColourCode" : 5
					},
					{
						"EventId" : "EVT-38325-0BA77E",
						"CourseId" : 2,
						"CourseName" : "Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 15,
						"CityTownSuburb" : "CAMBRIDGE",
						"StateProvinceId" : 5,
						"StateProvince" : "ON",
						"Availibility" : 7,
						"ColourCode" : 0
					},
					{
						"EventId" : "EVT-37504-DQ0V2G",
						"CourseId" : 4,
						"CourseName" : "In-House Instructor Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 8,
						"CityTownSuburb" : "CALGARY",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 2,
						"ColourCode" : 1
					},
					{
						"EventId" : "EVT-37571-JHFJJI",
						"CourseId" : 6,
						"CourseName" : "Telehandler/Variable Reach Rough Terrain Forklift Operator Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 9,
						"CityTownSuburb" : "KELOWNA",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 5,
						"ColourCode" : 7
					},
					{
						"EventId" : "EVT-38752-EPZED9",
						"CourseId" : 7,
						"CourseName" : "Skid Steer Loader Operator Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 1,
						"CityTownSuburb" : "COQUITLAM",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 7,
						"ColourCode" : 9
					},
					{
						"EventId" : "EVT-38094-3911Y9",
						"CourseId" : 13,
						"CourseName" : "Practical Rigging Training (AB)",
						"StartDate" : "30-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 8,
						"CityTownSuburb" : "CALGARY",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 10,
						"ColourCode" : 12
					},
					{
						"EventId" : "EVT-38327-3N7EL6",
						"CourseId" : 16,
						"CourseName" : "Blended Online - Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "12:29",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 15,
						"CityTownSuburb" : "CAMBRIDGE",
						"StateProvinceId" : 5,
						"StateProvince" : "ON",
						"Availibility" : 10,
						"ColourCode" : 13
					},
					{
						"EventId" : "EVT-38326-R5M0MA",
						"CourseId" : 18,
						"CourseName" : "Blended Online - Stand-Up Reach Truck Operator Training",
						"StartDate" : "30-10-2019",
						"StartTime" : "12:29",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 15,
						"CityTownSuburb" : "CAMBRIDGE",
						"StateProvinceId" : 5,
						"StateProvince" : "ON",
						"Availibility" : 10,
						"ColourCode" : 14
					},
					{
						"EventId" : "EVT-38126-05LC7C",
						"CourseId" : 22,
						"CourseName" : "ALS - Elevated Work Platform (OSSA)",
						"StartDate" : "30-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "30-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 13,
						"CityTownSuburb" : "FORT MCMURRAY",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 1,
						"ColourCode" : 4
					},
					{
						"EventId" : "EVT-38372-Y4UUBQ",
						"CourseId" : 1,
						"CourseName" : "Aerial Work Platform (Non OSSA) Operator Training",
						"StartDate" : "31-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "31-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 9,
						"CityTownSuburb" : "KELOWNA",
						"StateProvinceId" : 1,
						"StateProvince" : "BC",
						"Availibility" : 7,
						"ColourCode" : 5
					},
					{
						"EventId" : "EVT-37634-KJR31N",
						"CourseId" : 2,
						"CourseName" : "Counterbalanced/Vertical Mast Forklift Operator Training",
						"StartDate" : "31-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "31-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 11,
						"CityTownSuburb" : "EDMONTON",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 1,
						"ColourCode" : 0
					},
					{
						"EventId" : "EVT-38114-3VQSY2",
						"CourseId" : 20,
						"CourseName" : "ALS - Counterbalanced/Vertical Mast and Telehandler/Rough Terrain Forklift Operator Training",
						"StartDate" : "31-10-2019",
						"StartTime" : "7:59",
						"EndDate" : "31-10-2019",
						"EndTime" : "4:00",
						"CityTownId" : 13,
						"CityTownSuburb" : "FORT MCMURRAY",
						"StateProvinceId" : 3,
						"StateProvince" : "AB",
						"Availibility" : 1,
						"ColourCode" : 8
					} ],
			"LastUpdated" : "23-10-2019"
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
			document.getElementById('time').innerHTML = h + ":" + m + ":" + s;
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

</body>
</html>
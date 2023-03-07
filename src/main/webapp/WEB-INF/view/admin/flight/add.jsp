<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
	<div class="col-lg-12">
		<section class="panel color2">
			<header class="panel-heading text-center">
				<h1>Add Flight</h1>
			</header>
			<div class="panel-body">
				<form method="post" action="/admin/flight/save">
					<div class="form-group">
						<label for="name">Flight Code</label> <input type="text"
							class="form-control" id="flight_code" name="flight_code">
					</div>
			</div>
			<div class="form-group">
				<label for="">Airplane:</label> <select id="inputState"
					class="form-control" name="departure_airport">
					<c:forEach items="${flightSeat.airplane}" var="airplane">
						<option value="${airplane.airplane_name}">${airplane.airplane_name}</option>
					</c:forEach>
				</select>

			</div>
			<div class="form-group">
				<label for="area">Flight Name</label> <input type="text"
					class="form-control" id="flight_name" name="flight_name">
			</div>

			<div class="form-group">
				<label for="">Departure Airport:</label> <select id="inputState"
					class="form-control" name="departure_airport">
					<c:forEach items="${flightSeat.airport}" var="airport">
						<!-- 					<option selected>Select A Country</option> -->
						<option value="${airport.name}">${airport.name}</option>
					</c:forEach>
				</select>

			</div>


			<div class="form-group">
				<label for="">Arrival Airport:</label> <select id="inputState"
					class="form-control" name="arrival_airport">
					<c:forEach items="${flightSeat.airport}" var="airport">
						<!-- 					<option selected>Select A Country</option> -->
						<option value="${airport.name}">${airport.name}</option>
					</c:forEach>
				</select>
			</div>


			<div class="form-group">
				<label for="area">Departing Date</label> <input type="date"
					class="form-control" id="departing_date" name="departing_date">
			</div>

			<!--  <div class="form-group">
				<label for="area">Departing Time</label> <input type="text"
					class="form-control" id="departing_time" name="departing_time">
			</div> -->


			<div class="form-group">
				<label for="area">Arrival Date</label> <input type="date"
					class="form-control" id="arrival_date" name="arrival_date">
		<!--  	</div>
			<div class="form-group">
				<label for="area">Arrival Time</label> <input type="text"
					class="form-control" id="arrival_time" name="arrival_time">
			</div>
			-->

			<div class="container bg-light">
				<div class="col-md-12 text-center">
					<button type="submit" class="btn btn-primary">Submit</button>

				</div>
			</div>
			</form>
	</div>
	</section>
</div>
</div>

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
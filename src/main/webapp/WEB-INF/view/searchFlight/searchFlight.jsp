<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<br />
<br />
<div class="container-fluid">
	<div role="tabpanel" class="tab-pane active " id="">
		<div class="col-lg-12">
			<h1 style="text-align: center">Flight List</h1>
			<table id="flightTable" class="table table-striped table-hover">
				<tr>
					<th>Flight Code</th>
					<th>Airline</th>
					<th>Departure Airport</th>
					<th>Arrival Airport</th>
					<th>Departing Date</th>
					<th>Departing Time</th>
					<th>Arrival Date</th>
					<th>Arrival Time</th>
					<th>Action</th>

				</tr>
				<c:forEach items="${flight.fList}" var="f">
					<tr>
						<td>${f.flight_code}</td>
						<td>${f.airline}</td>
						<td>${f.departure_airport}</td>
						<td>${f.arrival_airport}</td>
						<td>${f.departing_date}</td>
						<td>${f.departing_time}</td>
						<td>${f.arrival_date}</td>
						<td>${f.arrival_time}</td>
						<td><a class="btn btn-primary"
							href="/home/booking/information/${f.id}">Book Now</a> &nbsp;
							&nbsp;</td>
					</tr>
				</c:forEach>

			</table>
		</div>
	</div>
</div>
<br />
<br />
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>
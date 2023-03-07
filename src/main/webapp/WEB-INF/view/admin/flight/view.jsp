<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Flight List</h1>
		<table id="flightTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Flight Code</th>
					<th>Airline</th>
					<th>Departure Airport</th>
					<th>Arrival Airport</th>
					<th>Departing Date</th>
					<th>Departing Time</th>
					<th>Arrival Date</th>
					<th>Arrival Time</th>
					<th>Airplane</th>
					<th>Flight Name</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${flight}" var="f">
					<tr>
						<td>${f.flight_code}</td>
						<td>${f.airline}</td>
						<td>${f.departure_airport}</td>
						<td>${f.arrival_airport}</td>
						<td>${f.departing_date}</td>
						<td>${f.departing_time}</td>
						<td>${f.arrival_date}</td>
						<td>${f.arrival_time}</td>
						<td>${f.airpalne}</td>
						<td>${f.flight_name}</td>
						<td><a class="btn btn-primary"
							href="/admin/flight/update/${f.id}">Edit</a> &nbsp; &nbsp; <a
							class="btn btn-danger" href="/admin/flight/delete/${f.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>

<script>
	$('#flightTable').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>


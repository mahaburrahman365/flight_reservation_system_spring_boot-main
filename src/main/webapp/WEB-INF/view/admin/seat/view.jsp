
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Seat List</h1>
		<table id="seatTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Flight Name</th>
					<th>Seat No</th>
					<th>Seat Code</th>
					<th>Seat Class</th>
					<th>Seat Charge</th>
					<th>Action</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach items="${seat}" var="seat">
					<tr>
						<td>${seat.flight_name}</td>
						<td>${seat.seat_no}</td>
						<td>${seat.seat_code}</td>
						<td>${seat.seat_class}</td>
						<td>${seat.seat_charge}</td>

						<td><a class="btn btn-primary"
							href="/admin/seat/update/${seat.id}">Edit</a> &nbsp; &nbsp; <a
							class="btn btn-danger" href="/admin/seat/delete/${seat.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>



<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
<script>
	$('#seatTable').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>


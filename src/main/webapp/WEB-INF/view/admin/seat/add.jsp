<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<br />
<br />
<header class="panel-heading text-center">
	<h1>Seat Add</h1>
</header>
<div role="tabpanel" class="tab-pane active container" id="flights">
	<form method="post" action="/admin/seat/save">
		<!-- 		flight -->


		<div class="form-group">
			<label for="">Flight Name:</label> <select id="flight_code"
				class="form-control" name="flight_code">
				<c:forEach items="${flight}" var="flight">
					<option value="${flight.flight_code}">${flight.flight_name}</option>
				</c:forEach>
			</select> <input type="hidden" name="flight_name" id="flight_name" /> <input
				type="hidden" name="seat_status" id="seat_status" value="0" />

		</div>

		<input type="text" name="seat_no" class="form-control" id="seat_no"
			placeholder="Seat No" /><br /> <input type="number" name="seat_code"
			class="form-control" id="seat_code" placeholder="Seat Code" /><br />
		<label for="class">Class:</label> <select
			class="browser-default custom-select" name="seat_class">
			<option value="Economy">Economy</option>
			<option value="First">First</option>
			<option value="Business">Business</option>
		</select><br />
		<br /> <input type="number" name="seat_charge" class="form-control"
			id="seat_charge" placeholder="Seat Charge" /><br />

		<div class="container bg-light">
			<div class="col-md-12 text-center">
				<button type="submit" class="btn btn-primary">Submit</button>

			</div>
		</div>
		<%--     									                                         <input type="hidden" class="form-control"value="${flight.id}" id="flight_id" name="flight_id"> --%>

	</form>
</div>

<br />
<br />
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>

<script>
	$("#flight_name").val($("#flight_code :selected").text());
	$("#flight_code").on("change", function() {
		$("#flight_name").val($("#flight_code :selected").text());
	})
</script>

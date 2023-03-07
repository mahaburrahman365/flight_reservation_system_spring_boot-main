
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<br />
<br />
<header class="panel-heading text-center">
	<h1>Seat Update</h1>
</header>
<div role="tabpanel" class="tab-pane active container" id="flights">
	<form method="post" action="/admin/seat/update">

		<!-- 		<div class="form-group"> -->
		<!-- 			<label for="">Flight Name:</label> <select id="flight_name" -->
		<!-- 				class="form-control" name="flight_name"> -->
		<%-- 				<c:forEach items="${flight}" var="fs"> --%>
		<%-- 					<option value="${fs.flight_name}">${fs.flight_name}</option> --%>
		<%-- 				</c:forEach> --%>
		<!-- 			</select> -->

		<!-- 		</div> -->

		<input type="text" name="seat_no" class="form-control" id="seat_no"
			placeholder="Seat No" value="${seat.seat_no}" /><br /> <input
			type="number" name="seat_code" class="form-control" id="seat_code"
			placeholder="seat code" value="${seat.seat_code}" /><br /> <label
			for="class">Class:</label> <select
			class="browser-default custom-select" value="${seat.seat_code}"
			name="seat_class">
			<option value="Economy">Economy</option>
			<option value="First">First</option>
			<option value="Business">Business</option>
		</select><br /> <br /> <input type="number" name="seat_charge"
			class="form-control" id="seat_charge" value="${seat.seat_charge}"
			placeholder="seat charge" /><br /> <input type="hidden" name="id"
			value="${seat.id}" /><br />

		<div class="container bg-light">
			<div class="col-md-12 text-center">
				<button type="submit" class="btn btn-primary">Update</button>

			</div>
		</div>

	</form>
</div>

<br />
<br />

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
<script>
	// var flname =  "${data.flight_name}";
	// $("#flight_name option[value='"+flname+"']").attr("selected", true);
</script>

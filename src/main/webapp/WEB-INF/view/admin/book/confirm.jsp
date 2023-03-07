
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Book Confirm</h1>
		<table id="airportTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Flight Code</th>
					<th>Flight Name</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Passport No</th>
					<th>Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookConfirm}" var="bookConfirm">
					<tr>
						<td>${bookConfirm.flight_code}</td>
						<td>${bookConfirm.flight_name}</td>
						<td>${bookConfirm.fname}</td>
						<td>${bookConfirm.lname}</td>
						<td>${bookConfirm.temail}</td>
						<td>${bookConfirm.tpassport_no}</td>
						<td style="color: green;">${bookConfirm.status}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>


<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Book Request</h1>
		<table id="airportTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Flight Code</th>
					<th>Flight Name</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Passport No</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${bookRequest}" var="bookRequest">
					<tr>
						<td>${bookRequest.flight_code}</td>
						<td>${bookRequest.flight_name}</td>
						<td>${bookRequest.fname}</td>
						<td>${bookRequest.lname}</td>
						<td>${bookRequest.temail}</td>
						<td>${bookRequest.tpassport_no}</td>
						<td><a class="btn btn-primary"
							href="/admin/book/approved/${bookRequest.id}">Approve</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>

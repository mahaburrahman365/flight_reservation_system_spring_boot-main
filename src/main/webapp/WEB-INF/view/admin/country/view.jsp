
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Country List</h1>
		<table id="countryTable" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>City Name</th>
					<th>Latitude</th>
					<th>Longitude</th>
					<th>Country</th>
					<th>City Code</th>
					<th>Action</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${country}" var="country">
					<tr>
						<td>${country.city_name}</td>
						<td>${country.latitude}</td>
						<td>${country.longitude}</td>
						<td>${country.country}</td>
						<td>${country.city_code}</td>
						<td><a class="btn btn-primary"
							href="/admin/country/update/${country.id}">Edit</a> <a
							class="btn btn-danger" href="/admin/country/delete/${country.id}">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
<script>
	$('#countryTable').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>
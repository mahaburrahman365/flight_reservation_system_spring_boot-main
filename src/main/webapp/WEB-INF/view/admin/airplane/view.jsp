<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<div role="tabpanel" class="tab-pane active " id="">
	<div class="col-lg-12">
		<h1 style="text-align: center">Airplane List</h1>
		<table id="airplane" class="table table-striped table-hover">
			<thead>
				<tr>
					<th>Airplane Name</th>
					<th>Owner</th>
					<th>Model</th>
					<th>Engine</th>
					<th>Flight Charge</th>
					<th>Action</th>


				</tr>
			</thead>
			<tbody>
				<c:forEach items="${airplanes}" var="airplan">
					<tr>
						<td>${airplan.airplane_name}</td>
						<td>${airplan.owner}</td>
						<td>${airplan.model}</td>
						<td>${airplan.engine}</td>
						<td>${airplan.capacity}</td>
						<td><a class="btn btn-primary"
							href="/admin/airplane/update/${airplan.id}">Edit</a> &nbsp;
							&nbsp; <a class="btn btn-danger"
							href="/admin/airplane/delete/${airplan.id}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
<script>
	$('#airplane').DataTable({
		"paging" : true,
		"ordering" : true,
		"info" : true
	});
</script>
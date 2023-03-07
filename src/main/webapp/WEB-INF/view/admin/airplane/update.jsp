<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
	<div class="col-lg-12">
		<section class="panel color2">
			<header class="panel-heading text-center">
				<h1>Update Airplane</h1>
			</header>
			<div class="panel-body">
				<form method="post" action="/admin/airplane/update">
					<div class="form-group">
						<label for="airplane_name">Airplane Name:</label> <input
							type="text" class="form-control"
							value="${airplanes.airplane_name}" id="airplane_name"
							name="airplane_name">
					</div>
					<div class="form-group">
						<label for="owner">Owner:</label> <input type="text"
							class="form-control" value="${airplanes.owner}" id="owner"
							name="owner">
					</div>
					<div class="form-group">
						<label for="model">Model:</label> <input type="text"
							class="form-control" value="${airplanes.model}" id="model"
							name="model">
					</div>
					<div class="form-group">
						<label for="engine">Engine:</label> <input type="text"
							class="form-control" value="${airplanes.engine}" id="engine"
							name="engine">
					</div>

					<div class="form-group">
						<label for="capacity">Capacity:</label> <input type="number"
							class="form-control" value="${airplanes.capacity}" id="capacity"
							name="capacity">
					</div>
					<input type="hidden" name="id" value="${airplanes.id}" /><br />
					<div class="container bg-light">
						<div class="col-md-12 text-center">
							<button type="submit" class="btn btn-primary">Update</button>

						</div>
					</div>


				</form>
		</section>
	</div>
</div>
<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
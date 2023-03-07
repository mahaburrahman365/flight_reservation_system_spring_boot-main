
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
	<div class="col-lg-12">
		<section class="panel color2">
			<header class="panel-heading text-center">
				<h1>Add Airport</h1>
			</header>

			<div class="panel-body">
				<form method="post" action="/admin/airport/save">
					<div class="form-group">
						<label for="">Airport Code:</label> <input type="text"
							class="form-control" id="airport_code"
							placeholder="Enter Airport Code" name="airport_code">
					</div>
					<div class="form-group">
						<label for="">Airport Name:</label> <input type="text"
							class="form-control" id="airport_name"
							placeholder="Enter Airport Name" name="name">
					</div>
					<div class="form-group">
						<label for="">City:</label> <input type="text"
							class="form-control" id="city" placeholder="Enter City"
							name="city">
					</div>
					<div class="form-group">
						<label for="">Country:</label> <input type="text"
							class="form-control" id="country" placeholder="Enter Country"
							name="country">
					</div>

					<div class="container bg-light">
						<div class="col-md-12 text-center">
							<button type="submit" class="btn btn-primary">Submit</button>

						</div>
					</div>

				</form>
			</div>

			<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>
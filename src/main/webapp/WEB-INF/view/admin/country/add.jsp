
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>
<div role="tabpanel" class="tab-pane active container" id="flights">
	<div class="col-lg-12">
		<section class="panel color2">
			<header class="panel-heading text-center">
				<h1>Country Add</h1>
			</header>
			<div class="panel-body">
				<form id="countrySave">
					<div class="form-group">
						<label for="city_name">City name</label> <input type="text"
							class="form-control" id="city_name" placeholder="Enter city name"
							name="city_name">
					</div>
					<div class="form-group">
						<label for="latitude">Latitude:</label> <input type="text"
							class="form-control" id="latitude" placeholder="Enter latitude"
							name="latitude">
					</div>
					<div class="form-group">
						<label for="longitude">Longitude:</label> <input type="text"
							class="form-control" id="longitude" placeholder="Enter longitude"
							name="longitude">
					</div>
					<div class="form-group">
						<label for="country">Country:</label> <input type="text"
							class="form-control" id="country" placeholder="Enter country"
							name="country">
					</div>
					<div class="form-group">
						<label for="city_code">City code:</label> <input type="text"
							class="form-control" id="city_code" placeholder="Enter City code"
							name="city_code">
					</div>


					<div class="container bg-light">
						<div class="col-md-12 text-center">
							<input type="button" value="Save" id="btnSave"
								class="btn btn-primary" />

						</div>
					</div>

				</form>
			</div>
		</section>

	</div>
</div>


<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>

<script>
	$("#btnSave").on("click", function(e) {
		$.ajax({
			type : "POST",
			url : "/admin/country/save",
			data : $("#countrySave").serialize(),
			success : function(data, status) {
				$("#countrySave").trigger('reset');
				$.alert({
					title : 'Saved!',
					content : 'Data Saved successfully!',
				});
			}

		});

	});
</script>
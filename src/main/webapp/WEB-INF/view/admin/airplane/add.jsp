<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/admin/admin_header.jsp"%>

<div role="tabpanel" class="tab-pane active container" id="flights">
	<div class="col-lg-12">
		<section class="panel color2">
			<header class="panel-heading text-center">
				<h1>Add Airplane</h1>
			</header>
			<div class="panel-body">

				<form id="airplaneSave">
					<div class="form-group">
						<label for="airplane_name">Airplane Name:</label> <input
							type="text" class="form-control" id="airplane_name"
							placeholder="Enter Name" name="airplane_name">
					</div>
					<div class="form-group">
						<label for="owner">Owner:</label> <input type="text"
							class="form-control" id="owner" placeholder="Enter owner"
							name="owner">
					</div>
					<div class="form-group">
						<label for="model">Model:</label> <input type="text"
							class="form-control" id="model" placeholder="Enter model"
							name="model">
					</div>
					<div class="form-group">
						<label for="engine">Engine:</label> <input type="text"
							class="form-control" id="engine" placeholder="Enter engine"
							name="engine">
					</div>

					<div class="form-group">
						<label for="capacity">Capacity:</label> <input type="number"
							class="form-control" id="capacity" placeholder="Enter capacity"
							name="capacity">
					</div>
					<div class="container bg-light">
						<div class="col-md-12 text-center">

							<input type="button" value="Save" id="btnSave"
								class="btn btn-primary" />
						</div>
					</div>


				</form>
		</section>
	</div>
</div>

<%@include file="/WEB-INF/view/common/admin/admin_footer.jsp"%>

<script>
	$("#btnSave").on("click", function(e) {
		$.ajax({
			type : "POST",
			url : "/admin/airplane/save",
			data : $("#airplaneSave").serialize(),
			success : function(data, status) {
				$("#airplaneSave").trigger('reset');
				$.alert({
					title : 'Saved!',
					content : 'Data Saved successfully!',
				});
			}

		});

	});
</script>
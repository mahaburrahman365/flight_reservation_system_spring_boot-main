<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<br />
<br />
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="checkout-inner">
			<div class="billing-address">

				<div class="col-md-12 container">
					<div id="invoice_code_div" class="text-center">
						<h2 style="color: #0066cc; font-weight: bold" class="text-center">Please
							Search your Invoice</h2>
						<input type="text" name="temail" id="temail" /> <input
							type="button" value="Search" class="btn btn-primary"
							id="btnInvoice" />
					</div>
					<div id="otp_div" class="text-center">
						<h2 style="color: #0066cc; font-weight: bold" class="text-center">Please
							Enter your OTP</h2>
						<input type="text" name="otp" id="otp" /> <input type="button"
							value="OTP" class="btn btn-primary" id="btnOtp" />
					</div>

					<br />
					<br />
					<div id="invoice">

						<div role="tabpanel" class="tab-pane active " id="">
							<div class="col-lg-12">
								<h1 style="text-align: center">Flight List</h1>
								<table id="flightTable" class="table table-striped table-hover">
									<thead>
										<!--             <tr> -->
										<th>Flight Code</th>
										<th>Flight Name</th>
										<th>First Name</th>
										<th>Last Name</th>
										<th>Email</th>
										<th>Passport No</th>
										<th>Action</th>
										<!--             </tr> -->
									</thead>
									<tbody>

										<tr>
											<td id="flight_code"></td>
											<td id="flight_name"></td>
											<td id="fname"></td>
											<td id="lname"></td>
											<td id="email"></td>
											<td id="tpassport_no"></td>
											<td id="ss">
											<a class="btn btn-primary"  id="cancel">Cancel Book</a> 
											</td>
										</tr>

									</tbody>
								</table>
							</div>
						</div>






					</div>
				</div>
			</div>
		</div>
	</div>

</div>
<br />
<br />
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>

<script>
	$("#otp_div").hide();
	$("#invoice").hide();
	$("#btnInvoice").click(function() {
		$("#invoice_code_div").hide();
		$("#otp_div").show();
	});
	$("#btnOtp").click(function() {
		if ($("#otp").val() == "123") {
			$.ajax({
				type : "POST",
				url : "/home/book/invoice/usersearch",
				data : {
					temail : $("#temail").val()
				},
				success : function(data, status) {
					// 					console.log(data[0].seat_no);
					$("#cancel").attr("href", "/home/cancelbook/"+data[0].id);
					$("#otp_div").hide();
					$("#flight_code").text(data[0].flight_code);
					$("#flight_name").text(data[0].flight_name);
					$("#fname").text(data[0].fname);
					$("#lname").text(data[0].lname);
					$("#email").text(data[0].temail);
					$("#tpassport_no").text(data[0].tpassport_no);

					// $('#flightTable > tbody:last-child').append("<tr><td>"+data[0].flight_code+"</td><td>" 
					// 	    				+ data[0].flight_name + "</td><td class='storedInventory'>" + 
					// 	    				data[0].fname + "</td><td>" + data[0].lname + "</td> </tr>");

					$("#invoice").show();

				}

			});
		} else {
			alert("Wrong OTP");
		}
	})
</script>
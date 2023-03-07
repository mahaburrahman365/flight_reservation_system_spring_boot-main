<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<br />
<br />
<style>
#invoice {
	padding: 30px;
}

.invoice {
	position: relative;
	/*             background-color: #FFF; */
	min-height: 680px;
	padding: 5px 90px;
}

.invoice header {
	padding: 10px 0;
	margin-bottom: 20px;
	border-bottom: 1px solid #3989c6
}

.invoice .company-details {
	text-align: right
}

.invoice .company-details .name {
	margin-top: 0;
	margin-bottom: 0;
}

.invoice .contacts {
	margin-bottom: 20px;
}

.invoice .invoice-to {
	text-align: left;
	margin: 14px;
}

.invoice .invoice-to .to {
	margin-top: 0;
	margin-bottom: 0;
}

.invoice .invoice-details {
	text-align: center;
}

.invoice .invoice-details .invoice-id {
	margin-top: 8px;
	color: #3989FB;
	font-size: 30px;
	font-weight: bold;
}

.invoice main {
	padding-bottom: 50px;
}

.invoice main .thanks {
	margin-top: -100px;
	font-size: 2em;
	margin-bottom: 50px;
}

.invoice main .notices {
	padding-left: 6px;
	border-left: 6px solid #3989c6;
}

.invoice main .notices .notice {
	font-size: 1.2em;
}

.invoice table {
	width: 100%;
	border-collapse: collapse;
	border-spacing: 0;
	margin-bottom: 20px;
}

.invoice table td, .invoice table th {
	padding: 15px;
	background: #eee;
	border-bottom: 1px solid #fff;
}

.invoice table th {
	/*             white-space: nowrap; */
	font-weight: bold;
	/*             font-size: 16px; */
	background-color: lightblue;
}

.invoice table td h3 {
	margin: 0;
	font-weight: 400;
	color: #3989c6;
	font-size: 1.2em
}

.invoice table .qty, .invoice table .total, .invoice table .unit {
	text-align: right;
	font-size: 1.2em;
}

.invoice table .no {
	color: #fff;
	font-size: 1.6em;
	background: #3989c6;
}

.invoice table .unit {
	background: #ddd;
}

.invoice table .total {
	background: #3989c6;
	color: #fff;
}

.invoice table tbody tr:last-child td {
	border: none;
	background: aliceblue;
}

.invoice table tfoot td {
	background: 0 0;
	border-bottom: none;
	white-space: nowrap;
	text-align: right;
	padding: 10px 20px;
	font-size: 1.2em;
	border-top: 1px solid #aaa;
}

.invoice table tfoot tr:first-child td {
	border-top: none;
}

.invoice table tfoot tr:last-child td {
	color: #3989c6;
	font-size: 1.4em;
	border-top: 1px solid #3989c6;
}

.invoice table tfoot tr td:first-child {
	border: none;
}

.invoice footer {
	width: 100%;
	text-align: center;
	color: #777;
	border-top: 1px solid #aaa;
	padding: 8px 0
}

@media print {
	.invoice {
		font-size: 11px !important;
		overflow: hidden !important
	}
	.invoice footer {
		position: absolute;
		bottom: 10px;
		page-break-after: always
	}
	.invoice>div:last-child {
		page-break-before: always;
	}
}
</style>
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

					<br /> <br />
					<div id="invoice" class="container-fluid">
						<div class="toolbar hidden-print">
							<div class="text-center">
								<button id="printInvoice" class="btn btn-info">
									<i class="fa fa-print"></i> Print
								</button>
							</div>
							<hr>
						</div>


						<div class="invoice overflow-auto">
							<div style="min-width: 600px">
								<div class="row p-5">
									<div class="col-md-6">
										<h1 id="fh5co-logo">MAHABUB Travel</h1>
									</div>


								</div>

								<hr class="my-5">

								<main>

									<div class="row contacts">
										<div class="col invoice-details">
											<div class="invoice-id">INVOICE NO:</div>
											<div class="invoice-id" id="id"></div>
											<div class="date">Date of Invoice: 05/04/2022</div>
										</div>
										<div class="col invoice-to">
											<div style="font-size: 20px; font-weight: bold;">INVOICE
												TO:</div>
											<div id="fname"></div>
											<div style="font-weight: bold;">FORM:</div>
											<div id="departure_airport"></div>

											<div style="font-weight: bold;">TO:</div>

											<div id="arrival_airport"></div>
											<div style="font-weight: bold;">FLIGHT CODE:</div>
											<div id="flight_code"></div>

											<div style="font-weight: bold;">RESERVATION:</div>
											<div id="airpalne"></div>

											<div style="font-weight: bold;">FLIGHT DATE:</div>
											<div id="departing_date"></div>

											<div style="font-weight: bold;">SEAT NO:</div>
											<div id="seat_no"></div>


										</div>

									</div>


									<h4 class="text-center" style="font-weight: bold;">FLIGHT
										DETAILS</h4>
									<div class="row">
										<div class="col-md-12">

											<table>
												<thead class="thead-dark">
													<tr>
														<th><h5>Flight Code</h5></th>
														<th><h5>Airplane</h5></th>
														<th><h5>From</h5></th>
														<th><h5>To</h5></th>
														<th><h5>Departure Date</h5></th>
														<th><h5>Departure time</h5></th>
														<th><h5>Arrival Date</h5></th>
														<th><h5>Arrival time</h5></th>
														<th><h5>Class name</h5></th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td id="tflight_code"></td>
														<td id="tairpalne"></td>
														<td id="tdeparture_airport"></td>
														<td id="tarrival_airport"></td>
														<td id="tdeparting_date"></td>
														<td id="departing_time"></td>
														<td id="arrival_date"></td>
														<td id="arrival_time"></td>
														<td id="seat_class"></td>

													</tr>

												</tbody>
											</table>
										</div>
									</div>
									<br>



									<h4 class="text-center" style="font-weight: bold;">PASSENGER
										DETAILS</h4>
									<div class="row">
										<div class="col-md-12">

											<table class="table table-striped table-hover">

												<tbody>
													<tr>

														<th><h5>First Name</h5></th>
														<th><h5>Last Name</h5></th>
														<th><h5>Passport Id</h5></th>
														<th><h5>Gender</h5></th>
														<th><h5>Contact</h5></th>
														<th><h5>Email</h5></th>
													</tr>


													<tr>

														<td id="tfname"></td>
														<td id="lname"></td>
														<td id="tpassport_no"></td>
														<td id="gender"></td>
														<td id="tcontact_no"></td>
														<td id="email"></td>

													</tr>

												</tbody>
											</table>
										</div>

									</div>
									<br>


									<div class="d-flex flex-row-reverse bg-dark text-white p-4">
										<div class="py-3 px-5 text-right">
											<div class="mb-2">Seat Charge:</div>
											<div class="h2 font-weight-light" id="seat_charge"></div>
										</div>
										<div class="py-3 px-5 text-right">
											<div class="mb-2">Tax(%):</div>
											<div class="h2 font-weight-light">0.0%</div>
										</div>

										<div class="py-3 px-5 text-right">
											<div class="mb-2">Discount(%):</div>
											<div class="h2 font-weight-light">0.0%</div>
										</div>

										<div class="py-3 px-5 text-right">
											<div class="mb-2">Total Charge</div>
											<div class="h2 font-weight-light" id="tseat_charge"></div>
										</div>
									</div>

								</main>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



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
					console.log(data[0].seat_no);
					$("#otp_div").hide();

					$("#id").text(data[0].id);
					$("#lname").text(data[0].lname);
					$("#fname").text(data[0].fname);
					$("#lname").text(data[0].lname);
					$("#departure_airport").text(data[0].departure_airport);
					$("#arrival_airport").text(data[0].arrival_airport);
					$("#flight_code").text(data[0].flight_code);
					$("#airpalne").text(data[0].airpalne);
					$("#departing_date").text(data[0].departing_date);
					$("#seat_no").text(data[0].seat_no);
					$("#tflight_code").text(data[0].flight_code);
					$("#tairpalne").text(data[0].airpalne);
					$("#tdeparture_airport").text(data[0].departure_airport);
					$("#tarrival_airport").text(data[0].arrival_airport);
					$("#tdeparting_date").text(data[0].departing_date);
					$("#departing_time").text(data[0].departing_time);
					$("#arrival_date").text(data[0].arrival_date);
					$("#arrival_time").text(data[0].arrival_time);
					$("#seat_class").text(data[0].seat_class);
					$("#tfname").text(data[0].fname);
					$("#tpassport_no").text(data[0].tpassport_no);
					$("#gender").text(data[0].gender);
					$("#tcontact_no").text(data[0].tcontact_no);
					$("#email").text(data[0].temail);
					$("#seat_charge").text(data[0].seat_charge);
					$("#tseat_charge").text(data[0].seat_charge);

					$("#invoice").show();
				}

			});
		} else {
			alert("Wrong OTP");
		}
	});

	$('#printInvoice').click(function() {
		Popup($('.invoice')[0].innerHTML);
		function Popup(data) {
			window.print();
			return true;
		}
	});
</script>
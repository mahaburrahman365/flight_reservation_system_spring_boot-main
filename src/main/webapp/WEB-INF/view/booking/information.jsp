<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>
<link rel="stylesheet" href="/resources/home/css/wizard.css">
<link rel="stylesheet" href="/resources/ticket_information/seat.css">
<br/>
<br/>
<div class="container-fluid" id="">
	<div class="row justify-content-center mt-0">

		<div role="tabpanel" class="tab-pane active container" id="flights">
			<div class="col-lg-12">

				
				<div class="row">
					<div class="col-md-12 mx-0">

						<form id="msform" action="/home/book/invoice" method="post">
							<!-- progressbar -->
							<div style="padding-left: 175px;">
								<ul id="progressbar">
									<li class="active" id="account"><strong>Ticket</strong></li>
									<li id="personal"><strong>Traveler</strong></li>
									<li id="payment"><strong>Payment</strong></li>
									<!--<li id="confirm"><strong>Success</strong></li> -->
								</ul>
							</div>
							<!-- fieldsets -->
							<fieldset>
								<div class="form-card">
								
								<div class="col-xxs-12 col-xs-6 mt border border-dark" >
								<div class="flight-boder">
<!-- 									<h2 style="text-align: center">Flight Details</h2> -->

								
                
                        									<h2 class="fs-title">Flight Details</h2>
                        									<p style="font-weight: bold; font-size: 20px;">Seat Charge :</p>
<input id="seat_charge" name="seat_charge" style="color: red; font-weight: bold; font-size: 20px; border:none;" readonly></input>
                        
                        <h3><b>${flightSeat.flight.departure_airport} - ${flightSeat.flight.arrival_airport}</b></h3>
                        <p><b>Airline Name:&nbsp &nbsp</b><span >${flightSeat.flight.airline}</span></p>
                        <p><b>Departing Date:&nbsp &nbsp</b><span>${flightSeat.flight.departing_date}</span></p>
                        <p><b>Departing Time:&nbsp &nbsp</b><span>${flightSeat.flight.departing_time}</span></p>
                        <p><b>Arrival Date:&nbsp &nbsp</b><span>${flightSeat.flight.arrival_date}</span></p>
                        <p><b>Arrival Time:&nbsp &nbsp</b><span>${flightSeat.flight.arrival_time}</span></p>

</div>
</div>
                                         <input type="hidden" class="form-control"value="${flightSeat.f}" id="flight_id" name="flight_id">

<!-- Ticket Information -->
            <div class="col-xxs-12 col-xs-6 mt border" >
            <div class="ticket-boder">
									<h2 class="fs-title">Ticket Information</h2>
									<input type="text" name="seat_no" class="form-control"
										id="seat_no" placeholder="Seat No" readonly/>
									<!-- 				Button trigger modal -->
									<button type="button" class="btn btn-primary"
										data-toggle="modal" data-target="#exampleModal">Seat
										Select</button>

									<br /> <br />

									<div class="col-xxs-12 col-xs-6 mt" style="padding-left: 0px">
										<section>

											<label for="class">Class:</label> <select
												class="browser-default custom-select" name="seat_class">

												<option value="economy">Economy</option>
												<option value="first">First</option>
												<option value="business">Business</option>
											</select>
										</section>
									</div>
									</div>
									</div>
								</div>
								<input type="button" name="next" class="next action-button"
									value="Continue" />


							</fieldset>


							<fieldset>
								<div class="form-card">
									<h2 class="fs-title">Traveler Information</h2>
									<input type="text" name="fname" placeholder="First Name" /> 
									<input type="text" name="lname" placeholder="Last Name" /> 
									<input type="date" name="tdate"> 
									<input type="text" name="tcontact_no" placeholder="Contact No." /> 
								
									<input style="width: 50px;" type="radio" name="gender" value="Male" /> Male 
									<input style="width: 50px;" type="radio" name="gender" value="Female" /> Female 
									<input style="width: 50px;" type="radio" name="gender" value="Others" /> Others 
								
									<input type="text" name="temail" placeholder="Email" /> 
									<input type="text" name="tpassport_no" placeholder="passport no" />
								</div>
								<input type="button" name="previous"
									class="previous action-button-previous" value="Previous" /> <input
									type="button" name="next" class="next action-button"
									value="Continue" />
							</fieldset>
							<fieldset>
								<div class="form-card">
									<h2 class="fs-title">Payment Information</h2>
									<div class="radio-group">
										<div class='radio' data-value="credit">
											<img src="/resources/assets/payment/visa.jpg" width="200px"
												height="100px">
										</div>
										<div class='radio' data-value="paypal">
											<img src="/resources/assets/payment/paypal.jpg" width="200px"
												height="100px">
										</div>
										<br>
									</div>
									<label class="pay">Card Holder Name*</label> <input type="text"
										name="card_holder_name" placeholder="" /> <label class="pay">Card
										Number*</label> <input type="number" name="card_number" placeholder="" />

									<label class="pay">CVC*</label> <input type="number" name="cvc"
										placeholder="***" />
										<label class="pay">Expiry Date</label>
										<input type="date" name="pdate">

									
								</div>
								<input type="button" name="previous"
									class="previous action-button-previous" value="Previous" />
								<button type="submit" class="next action-button">Confirm</button>
							</fieldset>
							
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>



<div class="modal fade seatss" id="exampleModal" tabindex="-1"
	role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">Airplane Seat</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<!-- 							seat plan -->
			<div class="seatss">
				<div class="">
					<label> Seat Class:</label> <select id="">
						<option value="">Economy</option>
						<option value="">First</option>
						<option value="">Business</option>
					</select>
				</div>

				<ul class="showcase">
					<li>
						<div class="seat"></div> <small>Available</small>
					</li>
					<li>
						<div class="seat selected"></div> <small>Selected</small>
					</li>
					<li>
						<div class="seat sold"></div> <small>Sold</small>
					</li>
				</ul>
				<c:forEach items="${flightSeat.seat}" var="b">
				<div class="container">
					<!-- <div class="screen"></div> -->

				<%-- 	<div class="row">
						<label for="">${b.seat_no}</label> <input class="seat" value="A1" id="a1"></input>
						<label for="">${b.seat_no}</label> <input class="seat" value="A2" id="a2"></input>
						<label for="">${b.seat_no}</label> <input class="seat" value="A3" id="a3"></input>
					</div> --%>
					<div class="row" id="a">
<!-- 						<label for="">A1</label> <input class="seat" value="A1" id="a1"></input> -->
<!-- 						<label for="">A2</label> <input class="seat" value="A2" id="a2"></input> -->
<!-- 						<label for="">A3</label> <input class="seat" value="A3" id="a3"></input> -->
					</div>

					<div class="row" id="b">
						<!-- <label for="">B1</label> <input class="seat" value="B1" id="b1"></input>
						<label for="">B2</label> <input class="seat" value="B2" id="b2"></input>
						<label for="" value="B1" id="b1">B3</label> <input class="seat"
							value="B3" id="b3"></input> -->
					</div>
					<div class="row" id="c">
						<!-- <label for="">C1</label> <input class="seat" value="C1" id="c1"></input>
						<label for="">C2</label> <input class="seat" value="C2" id="c2"></input>
						<label for="">C3</label> <input class="seat" value="C3" id="c3"></input> -->
						<!-- <div class="seat sold"></div> -->
					</div>

					<div class="row" id="d">
<!-- 						<label for="">D1</label> <input class="seat" value="D1" id="d1"></input> -->
<!-- 						<label for="">D2</label> <input class="seat" value="D2" id="d2"> -->
<!-- 						</input> <label for="">D3</label> <input class="seat" value="D3" id="d3"></input> -->
					</div>
					<div class="row" id="e">
<!-- 						<label for="">E1</label> <input class="seat" value="E1" id="e1"></input> -->
<!-- 						<label for="">E2</label> <input class="seat" value="E2" id="e2"></input> -->
<!-- 						<label for="">E3</label> <input class="seat" value="E3" id="e3"></input> -->
					</div>
					<div class="row" id="f">
<!-- 						<label for="">E1</label> <input class="seat" value="E1" id="e1"></input> -->
<!-- 						<label for="">E2</label> <input class="seat" value="E2" id="e2"></input> -->
<!-- 						<label for="">E3</label> <input class="seat" value="E3" id="e3"></input> -->
					</div>



				</div>
</c:forEach>
				<p class="text">
<!-- 					You have selected <span id="count">0</span> seat for a price of TK.<span -->
<!-- 						id="total">0</span> -->
				</p>
			</div>

			<!--   end seat plan -->
			<div class="modal-footer">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Save</button>
<!-- 				<button type="button" class="btn btn-primary">Save changes</button> -->
			</div>
		</div>
	</div>
</div>
<!-- 				end modal -->
<br/>
<br/>
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>


<script>
$(document).ready(function(){

	var current_fs, next_fs, previous_fs; //fieldsets
	var opacity;

	$(".next").click(function(){

	current_fs = $(this).parent();
	next_fs = $(this).parent().next();

	//Add Class Active
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");

	//show the next fieldset
	next_fs.show();
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
	step: function(now) {
	// for making fielset appear animation
	opacity = 1 - now;

	current_fs.css({
	'display': 'none',
	'position': 'relative'
	});
	next_fs.css({'opacity': opacity});
	},
	duration: 600
	});
	});

	$(".previous").click(function(){

	current_fs = $(this).parent();
	previous_fs = $(this).parent().prev();

	//Remove class active
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");

	//show the previous fieldset
	previous_fs.show();

	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
	step: function(now) {
	// for making fielset appear animation
	opacity = 1 - now;

	current_fs.css({
	'display': 'none',
	'position': 'relative'
	});
	previous_fs.css({'opacity': opacity});
	},
	duration: 600
	});
	});

	$('.radio-group .radio').click(function(){
	$(this).parent().find('.radio').removeClass('selected');
	$(this).addClass('selected');
	});

	$(".submit").click(function(){
	return false;
	})

	});
	
	
// 	seat plan


	
	
var test = ${flightSeat.seat};

 console.log(test.length)
 var html = '';
 var html1 = '';
 var html2 = '';
 var html3 = '';
 var html4 = '';
 var html5 = '';
 
 for(i=0; i<test.length; i++){
	 if(i>=0 && i<5){
		 html += '<label for="">'+test[i].seat_no+'</label><input class="seat" value="'+test[i].seat_no+'" id="'+test[i].seat_no+'"></input>';
	 }
	 if(i>=5 && i<10){
		 html1 += '<label for="">'+test[i].seat_no+'</label><input class="seat" value="'+test[i].seat_no+'" id="'+test[i].seat_no+'"></input>';
	 }
	 if(i>=10 && i<15){
		 html2 += '<label for="">'+test[i].seat_no+'</label><input class="seat" value="'+test[i].seat_no+'" id="'+test[i].seat_no+'"></input>';
	 }
	 if(i>=15 && i<20){
		 html3 += '<label for="">'+test[i].seat_no+'</label><input class="seat" value="'+test[i].seat_no+'" id="'+test[i].seat_no+'"></input>';
	 }
	 if(i>=20 && i<25){
		 html4 += '<label for="">'+test[i].seat_no+'</label><input class="seat" value="'+test[i].seat_no+'" id="'+test[i].seat_no+'"></input>';
	 }
	 if(i>=25 && i<30){
		 html5 += '<label for="">'+test[i].seat_no+'</label><input class="seat" value="'+test[i].seat_no+'" id="'+test[i].seat_no+'"></input>';
	 }


	 
 }
$("#a").append(html);	
$("#b").append(html1);
$("#c").append(html2);
$("#d").append(html3);
$("#e").append(html4);
$("#f").append(html5);




var price = 0;
$(".seat").on("click", function(e){
	console.log($(this).val())
    $("#seat_no").val($("#seat_no").val() + " " + this.value);
	e.target.classList.toggle("selected");
	
	
	
	$.ajax({
		type : "POST",
		url : "/admin/seat/getSeatByCode",
		data : {seat_no : $(this).val()},
		success : function(data, status) {
				console.log(data);
				price += data.seat_charge;
				console.log(price);
				$("#seat_charge").val(price);
		}
	});
	
	
});
for(i=0; i<test.length; i++){

	if(test[i].seat_status == 1){
		console.log(test[i].seat_no);
		$("#"+test[i].seat_no+"").addClass("sold");
	}
}

</script>
















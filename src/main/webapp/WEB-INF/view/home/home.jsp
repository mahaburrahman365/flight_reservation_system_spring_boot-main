<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@include file="/WEB-INF/view/common/main_header.jsp"%>

<div class="fh5co-hero">
	<div class="fh5co-overlay"></div>
	<div class="fh5co-cover" data-stellar-background-ratio="1.0"
		style="background-image: url(resources/assets/home/airplane.jpg);">
		<div class="desc">
			<div class="container">
				<div class="row">
					<div class="col-sm-5 col-md-5">
						<div class="tabulation animate-box">

							<!-- Nav tabs -->
							<ul class="nav nav-tabs" role="tablist">
								<li role="presentation" class="active"><a href="#flights"
									aria-controls="flights" role="tab" data-toggle="tab">Flights</a>
								</li>
								<li role="presentation"><a href="#hotels"
									aria-controls="hotels" role="tab" data-toggle="tab">Hotels</a>
								</li>
								<li role="presentation"><a href="#packages"
									aria-controls="packages" role="tab" data-toggle="tab">Packages</a>
								</li>
							</ul>

							<!-- Tab panes -->
							<div class="tab-content">
								<form action="/home/available/flight" method="post">
									<div role="tabpanel" class="tab-pane active" id="flights">
										<div class="row">

											<div class="form-group row">
												<label for="name" class="col-sm-3 col-form-label">Departure
													Airport:</label>
												<div class="col-sm-9">
													<select id="inputState" class="form-control"
														name="departure_airport">
														<c:forEach items="${flight}" var="flight">
															<option selected>Select A Country</option>
															<option value="${flight.departure_airport}">${flight.departure_airport}</option>
														</c:forEach>
													</select>
												</div>
											</div>

											<div class="form-group row">
												<label for="name" class="col-sm-3 col-form-label">Arrival
													Airport:</label>
												<div class="col-sm-9">
													<select id="inputState" class="form-control"
														name="arrival_airport">
														<c:forEach items="${flight}" var="flight">
															<option selected>Select A Country</option>
															<option value="${flight.arrival_airport}">${flight.arrival_airport}</option>
														</c:forEach>
													</select>
												</div>
											</div>
											<div class="col-xxs-12 col-xs-6 mt alternate">
												<div class="input-field">
													<label for="date-start">Departing Date:</label> <input
														type="text" class="form-control" id="date-start"
														name="departing_date" placeholder="mm/dd/yyyy" />
												</div>
											</div>

											<!-- 												<div class="col-xxs-12 col-xs-6 mt alternate"> -->
											<!-- 													<div class="input-field"> -->
											<!-- 														<label for="date-end">Returning:</label> <input -->
											<!-- 															type="text" class="form-control" id="date-end" -->
											<!-- 															placeholder="mm/dd/yyyy" /> -->
											<!-- 													</div> -->
											<!-- 												</div> -->
											<!-- <div class="col-xxs-12 col-xs-6 mt alternate">
													<section>
														<label for="class">Class:</label> <select
															class="cs-select cs-skin-border">
															<option value="" disabled selected>Economy</option>
															<option value="economy">Economy</option>
															<option value="first">First</option>
															<option value="business">Business</option>
														</select>
													</section>
												</div>
												
												<div class="col-xxs-12 col-xs-6 mt">
													<section>
														<label for="class">Adult:</label> <select
															class="cs-select cs-skin-border">
															<option value="" disabled selected>1</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
														</select>
													</section>
												</div>
												<div class="col-xxs-12 col-xs-6 mt">
													<section>
														<label for="class">Children:</label> <select
															class="cs-select cs-skin-border">
															<option value="" disabled selected>1</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
														</select>
													</section>
												</div>
												<div class="col-xxs-12 col-xs-6 mt">
													<div class="input-field">
														<label for="from"></label> <input type="text"
															class="form-control" id="to-place"
															placeholder="Promo Code" />
													</div>
												</div> -->
											<div class="col-xs-12">
												<button class="btn btn-primary btn-block" type="submit">Search
													Flight</button>
											</div>
										</div>
									</div>
								</form>
								<div role="tabpanel" class="tab-pane" id="hotels">
									<div class="row">
										<div class="col-xxs-12 col-xs-12 mt">
											<div class="input-field">
												<label for="from">City:</label> <input type="text"
													class="form-control" id="from-place"
													placeholder="Los Angeles, USA" />
											</div>
										</div>
										<div class="col-xxs-12 col-xs-6 mt alternate">
											<div class="input-field">
												<label for="date-start">Return:</label> <input type="text"
													class="form-control" id="date-start"
													placeholder="mm/dd/yyyy" />
											</div>
										</div>
										<div class="col-xxs-12 col-xs-6 mt alternate">
											<div class="input-field">
												<label for="date-end">Check Out:</label> <input type="text"
													class="form-control" id="date-end" placeholder="mm/dd/yyyy" />
											</div>
										</div>
										<div class="col-sm-12 mt">
											<section>
												<label for="class">Rooms:</label> <select
													class="cs-select cs-skin-border">
													<option value="" disabled selected>1</option>
													<option value="economy">1</option>
													<option value="first">2</option>
													<option value="business">3</option>
												</select>
											</section>
										</div>
										<div class="col-xxs-12 col-xs-6 mt">
											<section>
												<label for="class">Adult:</label> <select
													class="cs-select cs-skin-border">
													<option value="" disabled selected>1</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
												</select>
											</section>
										</div>
										<div class="col-xxs-12 col-xs-6 mt">
											<section>
												<label for="class">Children:</label> <select
													class="cs-select cs-skin-border">
													<option value="" disabled selected>1</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
												</select>
											</section>
										</div>
										<div class="col-xs-12">
											<input type="submit" class="btn btn-primary btn-block"
												value="Search Hotel">
										</div>
									</div>
								</div>

								<div role="tabpanel" class="tab-pane" id="packages">
									<div class="row">
										<div class="col-xxs-12 col-xs-6 mt">
											<div class="input-field">
												<label for="from">City:</label> <input type="text"
													class="form-control" id="from-place"
													placeholder="Los Angeles, USA" />
											</div>
										</div>
										<div class="col-xxs-12 col-xs-6 mt">
											<div class="input-field">
												<label for="from">Destination:</label> <input type="text"
													class="form-control" id="to-place"
													placeholder="Tokyo, Japan" />
											</div>
										</div>
										<div class="col-xxs-12 col-xs-6 mt alternate">
											<div class="input-field">
												<label for="date-start">Departs:</label> <input type="text"
													class="form-control" id="date-start"
													placeholder="mm/dd/yyyy" />
											</div>
										</div>
										<div class="col-xxs-12 col-xs-6 mt alternate">
											<div class="input-field">
												<label for="date-end">Return:</label> <input type="text"
													class="form-control" id="date-end" placeholder="mm/dd/yyyy" />
											</div>
										</div>
										<div class="col-sm-12 mt">
											<section>
												<label for="class">Rooms:</label> <select
													class="cs-select cs-skin-border">
													<option value="" disabled selected>1</option>
													<option value="economy">1</option>
													<option value="first">2</option>
													<option value="business">3</option>
												</select>
											</section>
										</div>
										<div class="col-xxs-12 col-xs-6 mt">
											<section>
												<label for="class">Adult:</label> <select
													class="cs-select cs-skin-border">
													<option value="" disabled selected>1</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
												</select>
											</section>
										</div>
										<div class="col-xxs-12 col-xs-6 mt">
											<section>
												<label for="class">Children:</label> <select
													class="cs-select cs-skin-border">
													<option value="" disabled selected>1</option>
													<option value="1">1</option>
													<option value="2">2</option>
													<option value="3">3</option>
													<option value="4">4</option>
												</select>
											</section>
										</div>
										<div class="col-xs-12">
											<input type="submit" class="btn btn-primary btn-block"
												value="Search Packages">
										</div>
									</div>
								</div>
							</div>

						</div>
					</div>
					<div class="desc2 animate-box">
						<div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">

							<h1>Fly MAHABUB TRAVEL And Get</h1>
							<h2>The Friendly Skies</h2>

							<span class="price"></span>
							<!-- <p><a class="btn btn-primary btn-lg" href="#">Get Started</a></p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<div id="fh5co-tours" class="fh5co-section-gray">
	<div class="container">
		<div class="row">
			<div
				class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
				<h3>Hot Tours</h3>
				<p>Far far away, behind the word mountains, far from the
					countries Vokalia and Consonantia, there live the blind texts.</p>
			</div>
		</div>

	</div>
</div>

<div id="fh5co-features">
	<div class="container">
		<div class="row">
			<div class="col-md-4 animate-box">

				<div class="feature-left">
					<span class="icon"> <i class="icon-hotairballoon"></i>
					</span>
					<div class="feature-copy">
						<h3>Family Travel</h3>
						<p>Best of family tour packages guarantee relaxation and
							activities for the complete family. Right from adults and kids to
							elderly, family packages include a vast range of sightseeing
							trips, historical tours, fun activities, a little bit of
							adventure and a lot of relaxing time.</p>
						<p>
							<a href="#">Learn More</a>
						</p>
					</div>
				</div>

			</div>

			<div class="col-md-4 animate-box">
				<div class="feature-left">
					<span class="icon"> <i class="icon-search"></i>
					</span>
					<div class="feature-copy">
						<h3>Travel Plans</h3>
						<p>A travel plan is a package of actions designed by a
							workplace, school or other organisation to encourage safe,
							healthy and sustainable travel options. By reducing car travel,
							travel plans can improve health and wellbeing, free up car
							parking space, and make a positive contribution to the community
							and the environment.</p>
						<p>
							<a href="#">Learn More</a>
						</p>
					</div>
				</div>
			</div>
			<div class="col-md-4 animate-box">
				<div class="feature-left">
					<span class="icon"> <i class="icon-wallet"></i>
					</span>
					<div class="feature-copy">
						<h3>Honeymoon</h3>
						<p>Presenting the best honeymoon destinations outside India to
							plan an incredibly romantic vacation that'll make sure you have
							unlimited memories.</p>
						<p>
							<a href="#">Learn More</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 animate-box">

				<div class="feature-left">
					<span class="icon"> <i class="icon-wine"></i>
					</span>
					<div class="feature-copy">
						<h3>Business Travel</h3>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum
							mollitia reprehenderit.</p>
						<p>
							<a href="#">Learn More</a>
						</p>
					</div>
				</div>

			</div>

			<div class="col-md-4 animate-box">
				<div class="feature-left">
					<span class="icon"> <i class="icon-genius"></i>
					</span>
					<div class="feature-copy">
						<h3>Solo Travel</h3>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum
							mollitia reprehenderit.</p>
						<p>
							<a href="#">Learn More</a>
						</p>
					</div>
				</div>

			</div>
			<div class="col-md-4 animate-box">
				<div class="feature-left">
					<span class="icon"> <i class="icon-chat"></i>
					</span>
					<div class="feature-copy">
						<h3>Explorer</h3>
						<p>Facilis ipsum reprehenderit nemo molestias. Aut cum
							mollitia reprehenderit.</p>
						<p>
							<a href="#">Learn More</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>


<div id="fh5co-destination">
	<div class="tour-fluid">
		<div class="row">
			<div class="col-md-12">
				<ul id="fh5co-destination-list" class="animate-box">
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/los_angeles.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Los Angeles</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/hongkong.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Hongkong</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/italy.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Italy</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/philippines.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Philippines</h2>
							</div>
					</a></li>

					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/japan.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Japan</h2>
							</div>
					</a></li>
					<li class="one-half text-center">
						<div class="title-bg">
							<div class="case-studies-summary">
								<h2>Most Popular Destinations</h2>
								<span><a href="#">View All Destinations</a></span>
							</div>
						</div>
					</li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/paris.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Paris</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/singapore.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Singapore</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/madagascar.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Madagascar</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/egypt.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Egypt</h2>
							</div>
					</a></li>
					<li class="one-forth text-center"
						style="background-image: url(/resources/home/images/indonesia.jpg);"><a
						href="#">
							<div class="case-studies-summary">
								<h2>Indonesia</h2>
							</div>
					</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div id="fh5co-blog-section" class="fh5co-section-gray">
	<div class="container">
		<div class="row">
			<div
				class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
				<h3>Recent From Blog</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Velit est facilis maiores, perspiciatis accusamus asperiores sint
					consequuntur debitis.</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row row-bottom-padded-md">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="fh5co-blog animate-box">
					<a href="#"><img class="img-responsive"
						src="images/place-1.jpg" alt=""></a>
					<div class="blog-text">
						<div class="prod-title">
							<h3>
								<a href="#">30% Discount to Travel All Around the World</a>
							</h3>
							<span class="posted_by">Sep. 15th</span> <span class="comment"><a
								href="">21<i class="icon-bubble2"></i></a></span>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
							<p>
								<a href="#">Learn More...</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="fh5co-blog animate-box">
					<a href="#"><img class="img-responsive"
						src="images/place-2.jpg" alt=""></a>
					<div class="blog-text">
						<div class="prod-title">
							<h3>
								<a href="#">Planning for Vacation</a>
							</h3>
							<span class="posted_by">Sep. 15th</span> <span class="comment"><a
								href="">21<i class="icon-bubble2"></i></a></span>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
							<p>
								<a href="#">Learn More...</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix visible-sm-block"></div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="fh5co-blog animate-box">
					<a href="#"><img class="img-responsive"
						src="images/place-3.jpg" alt=""></a>
					<div class="blog-text">
						<div class="prod-title">
							<h3>
								<a href="#">Visit Tokyo Japan</a>
							</h3>
							<span class="posted_by">Sep. 15th</span> <span class="comment"><a
								href="">21<i class="icon-bubble2"></i></a></span>
							<p>Far far away, behind the word mountains, far from the
								countries Vokalia and Consonantia, there live the blind texts.</p>
							<p>
								<a href="#">Learn More...</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<div class="clearfix visible-md-block"></div>
		</div>

		<div class="col-md-12 text-center animate-box">
			<p>
				<a class="btn btn-primary btn-outline btn-lg" href="#">See All
					Post <i class="icon-arrow-right22"></i>
				</a>
			</p>
		</div>

	</div>
</div>
<!-- fh5co-blog-section -->
<div id="fh5co-testimonial"
	style="background-image: url(images/img_bg_1.jpg);">
	<div class="container">
		<div class="row animate-box">
			<div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
				<h2>Happy Clients</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<div class="box-testimony animate-box">
					<blockquote>
						<span class="quote"><span><i
								class="icon-quotes-right"></i></span></span>
						<p>&ldquo;Far far away, behind the word mountains, far from
							the countries Vokalia and Consonantia, there live the blind
							texts. Separated they live in Bookmarksgrove right at the coast
							of the Semantics, a large language ocean.&rdquo;</p>
					</blockquote>
					<p class="author">
						John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a>
						<span class="subtext">Creative Director</span>
					</p>
				</div>

			</div>
			<div class="col-md-4">
				<div class="box-testimony animate-box">
					<blockquote>
						<span class="quote"><span><i
								class="icon-quotes-right"></i></span></span>
						<p>&ldquo;Far far away, behind the word mountains, far from
							the countries Vokalia and Consonantia, there live the blind
							texts.&rdquo;</p>
					</blockquote>
					<p class="author">
						John Doe, CEO <a href="http://freehtml5.co/" target="_blank">FREEHTML5.co</a>
						<span class="subtext">Creative Director</span>
					</p>
				</div>


			</div>
			<div class="col-md-4">
				<div class="box-testimony animate-box">
					<blockquote>
						<span class="quote"><span><i
								class="icon-quotes-right"></i></span></span>
						<p>&ldquo;Far far away, behind the word mountains, far from
							the countries Vokalia and Consonantia, there live the blind
							texts. Separated they live in Bookmarksgrove right at the coast
							of the Semantics, a large language ocean.&rdquo;</p>
					</blockquote>
					<p class="author">
						John Doe, Founder <a href="#">FREEHTML5.co</a> <span
							class="subtext">Creative Director</span>
					</p>
				</div>

			</div>
		</div>
	</div>
</div>





<!-- END fh5co-wrapper -->
<%@include file="/WEB-INF/view/common/main_footer.jsp"%>

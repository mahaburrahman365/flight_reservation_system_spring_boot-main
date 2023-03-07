<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Creative - Bootstrap 3 Responsive Admin Template">
<meta name="author" content="GeeksLabs">
<meta name="keyword"
	content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
<link rel="shortcut icon" href="img/favicon.png">

<title>MAHABUB TRAVEL</title>

<!-- Bootstrap CSS -->
<link href="/resources/vendor/css/bootstrap.css" rel="stylesheet">
<!-- bootstrap theme -->
<link href="/resources/login/login.css" rel="stylesheet">


</head>

<body>
	<br />

	<div class="container">
		<div class="nav-header">
			<!-- 					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a> -->
			<h1 id="fh5co-logo">
				<a href="/"><i class="icon-airplane"></i>MAHABUB TRAVEL</a>
			</h1>
			<br /> <br />
			<div class="container">
				<div class="d-flex justify-content-center h-100">
					<div class="card">
						<div class="card-header">
							<h3>Sign In</h3>
							<div class="d-flex justify-content-end social_icon">
								<span><i class="fab fa-facebook-square"></i></span> <span><i
									class="fab fa-google-plus-square"></i></span> <span><i
									class="fab fa-twitter-square"></i></span>
							</div>
						</div>
						<div class="card-body">
							<form action="/admin" method="post">
								<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-user"></i></span>
									</div>
									<input type="text" class="form-control" placeholder="username"
										name="frontuser">

								</div>
								<div class="input-group form-group">
									<div class="input-group-prepend">
										<span class="input-group-text"><i class="fas fa-key"></i></span>
									</div>
									<input type="password" class="form-control"
										placeholder="password" name="frontPass">
								</div>
								<div class="row align-items-center remember">
									<input type="checkbox">Remember Me
								</div>
								<div class="form-group">
									<button type="submit" class="btn float-right login_btn">Login</button>
								</div>
							</form>
						</div>
						<div class="card-footer">
							<div class="d-flex justify-content-center">
								<a href="#">Forgot your password?</a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<script src="/resources/vendor/js/bootstrap.js"></script>
</body>

</html>


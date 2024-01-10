<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Fredoka+One&family=Play&display=swap" rel="stylesheet">
<link href="registraion.css" rel="stylesheet">
<link rel="stylesheet" href="home.css">
<link rel="stylesheet" href="NewFile.css"> 
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
	crossorigin="anonymous"></script>

<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg ">
		<div class="container-fluid">
			<a class="navbar-brand" href="Home1.jsp"> YOUR STAR RECHARGE</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarScroll"
				aria-controls="navbarScroll" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarScroll">
				<ul class="navbar-nav me-auto my-2 my-lg-0 "
					style="--bs-scroll-height: 100px;">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">HOME</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle active" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> RECHARGE </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="new_recharge.jsp">MOBILE
									RECHARGE</a></li>
							<li><a class="dropdown-item" href="#">POSTPAID RECHARGE</a></li>

						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle active" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> DTH </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#"> RECHARGE</a></li>
							<li><a class="dropdown-item" href="#"> BUY NEW DTH</a></li>

						</ul></li>
					<li class="nav-item"><a class="nav-link active "
						aria-disabled="true">BORDBANK</a></li>
				</ul>
				
				
			<div>	
        <%=session.getAttribute("username") %>
 </div>


<!-- ------------------------------- -->
			</div>
		</div>
	</nav>

	<!-- --------------start-mid-------- -->
	<div class="how-section1">
		<div class="row">
			<div class="col-md-6">
				<h4></h4>
				<h4 class="subheading">Fast, Simple and
Secure way to recharge</h4>
				<h4 class="text-muted">Lightning fast payments, exciting rewards and seamless transactions on every recharge & bill payment</h4>
			</div>
			<div class="col-md-6 how-img " >
				<img src="image/R.jpg"
					class="rounded-circle img-fluid" alt=""  style="width: 75%"/>
			</div>



		</div>
	</div>
	<div class="dom">
		<a href="new_recharge.jsp"><button class="button1">recharge mobile</button></a>

			</div>


	<!-- -----------------mid-mid -->
	<div class="content-wrapper">
		<h2>Recharges &amp; Bill Payments</h2>
		<p>Enjoy lightning fast payments, exciting rewards and seamless
			transactions on every recharge &amp; bill payment</p>
		<ul>
			<li><img
				src="https://pwa-cdn.freecharge.in/pwa-static/pwa/images/seoPages/utilities/mobile.svg?imheight=58?imwidth=58"
				alt="Freecharge Mobile recharge" loading="lazy"><label>Mobile
					Recharge</label><span>CB upto Rs.100</span></li>
			<li><img
				src="https://pwa-cdn.freecharge.in/pwa-static/pwa/images/seoPages/utilities/postpaid.svg?imheight=58?imwidth=58"
				alt="Freecharge Mobile bill payment" loading="lazy"><label>Mobile
					Postpaid</label><span>Flat Rs.35 CB</span></li>
			<li><img
				src="https://pwa-cdn.freecharge.in/pwa-static/pwa/images/seoPages/utilities/rental.svg?imheight=58?imwidth=58"
				alt="Rental bill payment on Freecharge" loading="lazy"><label>Rent
					via Credit Card</label></li>
			<li><img
				src="https://pwa-cdn.freecharge.in/pwa-static/pwa/images/seoPages/utilities/electricity.svg?imheight=58?imwidth=58"
				alt="Electricity bill payment on Freecharge" loading="lazy"><label>Electricity</label><span>Win
					upto Rs .100</span></li>
			<li><img
				src="https://pwa-cdn.freecharge.in/pwa-static/pwa/images/seoPages/utilities/dth.svg?imheight=58?imwidth=58"
				alt="Freecharge DTH recharge" loading="lazy"><label>DTH</label><span>CB
					upto Rs.100</span></li>
			<li><img
				src="https://pwa-cdn.freecharge.in/pwa-static/pwa/images/seoPages/utilities/fastag.svg?imheight=58?imwidth=58"
				alt="Freecharge Fastag Recharge" loading="lazy"><label>FASTag
					Recharge</label></li>
		</ul>
	</div>

	<!-- ------------------------------- -->


	<div class="container"
		style="display: grid; grid-template-columns: repeat(auto-fit, minmax(48%, 1fr)); /* Adjust the width as needed */ grid-gap: 40px; margin-top: 50px">
		<div class="text-box" style="box-sizing: border-box;">
			<h1 style="text-transform: uppercase;">Recharges & Bill Payments</h1>
			<p>Lightning fast payments, exciting rewards and seamless transactions on every recharge & bill payment.</p>
			<button type="button" class="btn  btn-lg"
				style="background-color: #ED017F; color: white; margin-left: 80px">Large
				button</button>
			<img alt=""
				src="image/Revolut_Cards_for_Business-removebg-preview.png"
				style="width: 70%; align-items: center;">
		</div>
		<div class="text-box" style="align-items: center;">
			<div class="card w-85 mb-3">
				<div class="card-body">
					<h5 class="card-title Dark">Rewards</h5>
					<p class="card-text">The best credit cards offer some
						tantalizing combinations of promotions and prizes</p>
					<img src="image/star.svg">
				</div>
			</div>
			<div class="card w-85 mb-3">
				<div class="card-body">
					<h5 class="card-title">100% Secured</h5>
					<p class="card-text">We take proactive steps make sure your
						information and transactions are secure.</p>
					<img src="image/suc.svg">
				</div>
			</div>
			<div class="card w-85 mb-3">
				<div class="card-body">
					<h5 class="card-title">Recharge Transfer</h5>
					<p class="card-text">A recharge is done by very fast's mode</p>
					<img src="image/suc.svg">
				</div>
			</div>
		</div>
	</div>
	<div class="container"
		style="display: grid; grid-template-columns: repeat(auto-fit, minmax(48%, 1fr)); /* Adjust the width as needed */ grid-gap: 40px; margin-top: 50px">
		<div class="text-box">
			<h1 style="text-transform: uppercase;">Find a better card deal
				in few easy steps.</h1>
			<p style="font-size: 20px">Arcu tortor, purus in mattis at sed
				integer faucibus. Aliquet quis aliquet eget mauris tortor.ç Aliquet
				ultrices ac, ametau.</p>
		</div>

		<div class="image" style="display: block;">
			<img alt="" src="image/card.af071def-removebg-preview.png"
				style="width: 100%;">
		</div>
	</div>
	<!-- --footer -->
	<footer>
<div class="footer">
<div class="row">
<a href="#"><i class="fa fa-facebook"></i></a>
<a href="#"><i class="fa fa-instagram"></i></a>
<a href="#"><i class="fa fa-youtube"></i></a>
<a href="#"><i class="fa fa-twitter"></i></a>
</div>

<div class="row">
<ul>
<li><a href="#">Contact us</a></li>
<li><a href="#">Our Services</a></li>
<li><a href="#">Privacy Policy</a></li>
<li><a href="#">Terms & Conditions</a></li>
<li><a href="#">Career</a></li>
</ul>
</div>

</div>
</footer>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARS | Home</title>
<style>
body {
	background: rgb(0, 0, 0);
	background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 1)
		0%, rgba(255, 255, 255, 1) 0%, rgba(196, 222, 252, 1) 100%);
}

.name {
	font-size: 60px;
}

.carousel-inner {
	display: flex;
	flex-direction: row;
	width: 100vw; /* Use the entire width of the viewport */
	overflow: hidden; /* Ensure images don't overflow */
}

.carousel-item img {
	height: 50vh; /* Set the height of the images */
	width: auto; /* Maintain aspect ratio */
	object-fit: cover;
	/* Ensure images maintain aspect ratio and cover the entire space */
}

.carousel-item {
	width: 100%; /* Each item takes up the entire width */
	flex: 0 0 auto; /* Maintain original size */
	transition: transform 0.6s ease; /* Smooth transition */
}
</style>
<%@include file="head.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container mt-5">
		<div id="carouselExampleControls" class="carousel slide"
			data-bs-ride="carousel" style="margin: auto;">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://assets.gqindia.com/photos/6540e2ba4622f7146b12b76b/16:9/w_800%2Cc_limit/best-time-to-book-flights.jpg"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="https://assets.cntraveller.in/photos/60ba07ad1fa22668f0259814/16:9/w_800,h_450,c_limit/cheapestflightssurveylead.jpg"
						class="d-block w-100" alt="...">
				</div>
				<div class="carousel-item">
					<img
						src="https://thriftytraveler.com/wp-content/uploads/2023/10/best-day-to-book-flights-scaled.jpg"
						class="d-block w-100" alt="...">
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleControls" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<div class="row mt-5">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="https://media.istockphoto.com/id/1214665812/vector/airport-crew-standing-together-professional-airline-team-in-uniform-people-vector.jpg?s=612x612&w=0&k=20&c=_tiItsBpV96RGt3BYNFNqeqoJ-nRu2p2CLcHhDYwwcQ=" height="300" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Experience the Skies</h5>
                        <p class="card-text">Embark on a journey where every flight is an adventure, and every destination holds a story waiting to be told.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="https://img.freepik.com/free-vector/plane-service-isolated-flat-vector-illustration-cartoon-mechanics-repairing-airplane-before-flight-adding-fuel-aircraft-maintenance-aviation-concept_74855-10134.jpg" height="300" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Fly in Comfort</h5>
                        <p class="card-text">Relax in luxurious seats, enjoy gourmet cuisine, and experience personalized service at 30,000 feet above the ground.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <img src="https://st4.depositphotos.com/36552966/38058/v/450/depositphotos_380580518-stock-illustration-profession-pilot-aircraft-vector-illustration.jpg" height="300" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Discover New Horizons</h5>
                        <p class="card-text">Unlock the world's wonders with our extensive network of destinations, where every trip is a gateway to new experiences.</p>
                    </div>
                </div>
            </div>
        </div>
		<div id="contactUs">
			<%@include file="contactUs.jsp"%>
		</div>
	</div>
</body>
</html>
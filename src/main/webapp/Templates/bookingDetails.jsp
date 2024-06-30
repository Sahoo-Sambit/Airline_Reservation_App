<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARS | Booking Details</title>
<style>
.row {
	display: flex;
	justify-content: center;
}
</style>
<%@include file="head.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container mt-5">
		<div class="row">
			<div class="col-6">
				<div class="card">
					<div class="card-header h2 text-center">Booking Details</div>
					<div class="card-body">
						<form action="bookTicket" method="post">
							<div class="row m-3">
								<div class="col-6 text-start">
									<label for="flightId" class="fs-5">FLIGHT NO </label>
								</div>
								<div class="col-6">
									<input type="text" class="form-control" id="flightId"
										name="flightId" value="${flight.flightId}" readonly>
								</div>
							</div>
							<div class="row m-3">
								<div class="col-6 text-start">
									<label for="flightName" class="fs-5">FLIGHT NAME </label>
								</div>
								<div class="col-6">
									<input type="text" class="form-control" id="flightName" readonly
										value="${flight.flightName}">
								</div>
							</div>
							<div class="row m-3 al">
								<div class="col-6 d-flex">
									<label for="departureFrom" class="fs-5">FROM</label>&nbsp;&nbsp;
									<input type="text" class="form-control" id="departureFrom"
										readonly value="${flight.departureFrom}">
								</div>
								<div class="col-6  d-flex">
									<label for="departureTo" class="fs-5">TO</label>&nbsp;&nbsp; <input
										type="text" class="form-control" id="departureTo" readonly
										value="${flight.departureTo}">
								</div>
							</div>
							<div class="row m-3">
								<div class="col-6 d-flex">
									<label for="departureDate" class="fs-5">DATE</label>&nbsp;&nbsp;
									<input type="Date" class="form-control" id="departureDate"
										readonly name="date" value="${flight.departureDate}">
								</div>
								<div class="col-6  d-flex">
									<label for="flightFare" class="fs-5">FARE</label>&nbsp;&nbsp; <input
										type="text" class="form-control" id="flightFare" readonly
										value="${flight.flightFare}">
								</div>
							</div>
							<div class="row m-2">
								<div class="col text-center">
									<label class="fs-5"> Available Flight Seats is : &nbsp;
										${flight.flightSeats}</label>
								</div>
							</div>
							<div class="row m-3">
								<div class="col-4 d-flex">
									<label for="seatInput" class="fs-5">Seats</label>&nbsp;&nbsp; <input
										type="text" class="form-control" name="seats" id="seatInput">
								</div>
								<div class="col d-flex align-items-center">
									<label for="totalAmount" class="col-5 fs-5">Total
										Amount</label> <input type="text" class="form-control"
										id="totalAmount" name="totalAmount" readonly>
								</div>
								<input type="hidden" value="${user.userId}" name="userId">
							</div>
							<div class="row m-4">
								<div class="col text-center">
									<input type="Submit" class="btn btn-primary"> <a
										type="button" href="bookNow" class="btn btn-primary">Back</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//Get references to DOM elements
		const seatInput = document.getElementById('seatInput');
		const totalAmountInput = document.getElementById('totalAmount');

		// Function to calculate and update the total amount
		function updateTotal() {
			const flightFare = ${flight.flightFare}; // Replace with the actual value from the database
			const totalSeats = ${flight.flightSeats};
			const inputSeats = totalSeats - parseInt(seatInput.value, 10);
			const totalAmount = inputSeats * parseFloat(flightFare);
			totalAmountInput.value = totalAmount.toFixed(2);
		}

		// Add event listener to the input element to listen for changes
		seatInput.addEventListener('input', updateTotal);
	</script>
</body>
</html>
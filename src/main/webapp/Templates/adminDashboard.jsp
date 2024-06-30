<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARS | Dashboard</title>
<style>
body {
	background: rgb(0, 0, 0);
	background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 1)
		0%, rgba(255, 255, 255, 1) 0%, rgba(196, 222, 252, 1) 100%);
}

</style>
<%@include file="head.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<!-- Main -->
<main class="pt-2">
    <div class="container">
        <c:set var="msgString" value="${message}" />
        <c:if test="${not empty msgString}">
            <div class="alert alert-warning alert-dismissible fade show" role="alert">
                ${message}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
        </c:if>
        <div class="row">
            <div class="col-md-12 h2 mb-3 text-center">ADMIN DASHBOARD</div>
        </div>
        <div class="card-container d-flex justify-content-between gap-2">
            <div class="card mb-3" style="height: 15rem; width: 350px;" data-bs-toggle="modal" data-bs-target="#addFlightModel">
                <div class="card-header fs-3 text-center">Add Flights</div>
                <div class="card-body">
                    <div class="container text-center">
                        <i class="bi bi-airplane fs-1"></i>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="height: 15rem; width: 350px;" data-bs-toggle="modal" data-bs-target="#viewBookingsModel">
                <div class="card-header fs-3 text-center">Show All Bookings</div>
                <div class="card-body">
                    <div class="container text-center">
                        <i class="bi bi-journal-text fs-1"></i>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="height: 15rem; width: 350px;" data-bs-toggle="modal" data-bs-target="#viewFlightsModel">
                <div class="card-header fs-3 text-center">View Flights</div>
                <div class="card-body">
                    <div class="container text-center">
                        <i class="bi bi-clipboard2 fs-1"></i>
                    </div>
                </div>
            </div>
            <div class="card mb-3" style="height: 15rem; width: 350px;" data-bs-toggle="modal" data-bs-target="#viewUsersModel">
                <div class="card-header fs-3 text-center">View Users</div>
                <div class="card-body">
                    <div class="container text-center">
                        <i class="bi bi-people fs-1"></i>
                    </div>
                </div>
            </div>
        </div>
        <div id="contactUs">
            <%@include file="contactUs.jsp"%>
        </div>
    </div>
</main>


	<!-- Start View Flights -->
	<div class="modal fade" id="viewFlightsModel" tabindex="-1"
		aria-labelledby="viewFlightsModel" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="viewFlightsModel">View Users</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<table class='table text-center'>
						<thead class='thead-light'>
							<tr>
								<th>Flight Id</th>
								<th>Flight Name</th>
								<th>Date</th>
								<th>From</th>
								<th>To</th>
								<th>Seats</th>
								<th>Fare</th>
								<th>Action</th>
							</tr>
						</thead>
						<c:forEach items="${flightList}" var="flight">
							<tr>
								<td>${flight.flightId}</td>
								<td>${flight.flightName}</td>
								<td>${flight.departureDate}</td>
								<td>${flight.departureFrom}</td>
								<td>${flight.departureTo}</td>
								<td>${flight.flightSeats}</td>
								<td>${flight.flightFare}</td>
								<td class="action"><a class='btn btn-danger '
									href="updateFlightForm?flightId=${flight.flightId}">Edit</a>
									&nbsp;<a class='btn btn-danger'
									href="deleteFlight?flightId=${flight.flightId}">Remove</a></td>
							</tr>
						</c:forEach>

					</table>
				</div>

			</div>
		</div>
	</div>
	<!-- End View Flights -->

	<!-- Start View Bookings -->
	<div class="modal fade" id="viewBookingsModel" tabindex="-1"
		aria-labelledby="viewBookingsModel" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="viewBookingsModel">View Users</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<table class='table text-center'>
						<thead class='thead-light'>
							<tr>
								<th>Booking Id</th>
								<th>Date</th>
								<th>User Id</th>
								<th>Username</th>
								<th>Flight Id</th>
								<th>Flight Name</th>
								<th>From</th>
								<th>To</th>
								<th>Seats</th>
								<th>Fare</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${bookingList}" var="booking">
								<tr>
									<td>${booking.ticketId}</td>
									<td>${booking.date}</td>
									<td>${booking.userDetails.userId}</td>
									<td>${booking.userDetails.username}</td>
									<td>${booking.ticketFlight.flightId}</td>
									<td>${booking.ticketFlight.flightName}</td>
									<td>${booking.ticketFlight.departureFrom}</td>
									<td>${booking.ticketFlight.departureTo}</td>
									<td>${booking.seats}</td>
									<td>${booking.totalAmount}</td>
								</tr>
							</c:forEach>
						</tbody>

					</table>
				</div>

			</div>
		</div>
	</div>
	<!-- End View Bookings -->

	<!-- Start Add Flight -->
	<div class="modal fade" id="addFlightModel" tabindex="-1"
		aria-labelledby="addFlightModel" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="addFlightModel">Add Flight</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form action="addFlight" method="post">
						<div class="form-group m-3">
							<input type="text" class="form-control" name="flightName"
								placeholder="Enter Flight Name" required>
						</div>
						<div class="form-group m-3">
							<input type="text" class="form-control" name="departureFrom"
								placeholder="Enter From" required>
						</div>
						<div class="form-group m-3">
							<input type="text" class="form-control" name="departureTo"
								placeholder="Enter To" required>
						</div>
						<div class="form-group m-3">
							<input type="number" class="form-control" name="flightSeats"
								placeholder="Enter Seats" required>
						</div>
						<div class="form-group m-3">
							<div class="row">
								<div class="col-6">
									<input type="text" class="form-control" name="flightFare"
										placeholder="Enter Fare Price" required>
								</div>
								<div class="col-6">
									<input type="date" class="form-control" name="departureDate"
										required>
								</div>
							</div>
						</div>
						<div class="container text-center">
							<input type="submit" class="btn btn-outline-success"
								value="Add Flight">
							<button type="button" class="btn btn-outline-primary"
								data-bs-dismiss="modal">Close</button>
						</div>
					</form>
				</div>

			</div>
		</div>
	</div>
	<!-- End Add Flight -->


	<!-- Start View Bookings -->
	<div class="modal fade" id="viewUsersModel" tabindex="-1"
		aria-labelledby="viewUsersModel" aria-hidden="true">
		<div class="modal-dialog modal-xl">
			<div class="modal-content">
				<div class="modal-header custom-bg text-white">
					<h5 class="modal-title" id="viewUsersModel">View Users</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<table class='table text-center'>
						<thead class='thead-light'>
							<tr>
								<th>User Id</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>UserName</th>
								<th>Password</th>
								<th>Email Id</th>
								<th>Mobile No</th>
								<th>Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userList}" var="user">
								<tr>
									<td>${user.userId}</td>
									<td>${user.firstName}</td>
									<td>${user.lastName}</td>
									<td>${user.username}</td>
									<td>${user.password}</td>
									<td>${user.userEmail}</td>
									<td>${user.mobileNo}</td>
									<td class="action"><a class='btn btn-danger'
										href="deleteUser?userId=${user.userId}">Remove</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</div>
	<!-- End View Bookings -->

</body>
</html>
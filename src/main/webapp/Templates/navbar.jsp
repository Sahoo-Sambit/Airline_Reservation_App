<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<c:set var="user" value="${User}" />
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link active fw-bold fs-3"
					aria-current="page" href="/home">Flight Reservation System</a></li>
			</ul>
		</div>
		<ul class="navbar-nav ml-auto">
		<c:if test="${user.role ne 'ADMIN'}">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle btn btn-secondary text-white me-2" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" >
							Flights </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item btn btn-link" href="/bookNow">Book Ticket</a></li>
						</ul></li>
				</c:if>
			<li class="nav-item"><a class="nav-link active btn btn-dark text-white me-2"
				aria-current="page" href="#contactUs">Contact Us</a></li>
			<c:choose>
				<c:when test="${user.role == null}">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item "><a class="nav-link active btn btn-danger text-white me-2"
							aria-current="page" href="/register">Register</a></li>
						<li class="nav-item"><a class="nav-link active btn btn-primary text-white me-2"
							aria-current="page" href="/login">Login</a></li>
					</ul>
				</c:when>
				<c:otherwise>
					<div class="dropdown show">
						<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown">${user.username}
							&nbsp; <i class="bi bi-person-circle fa-lg me-auto"></i>
						</a>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
							<a class="dropdown-item"
								href="${user.role == 'ADMIN' ? '/adminDashboard' : '/userDashboard'}">
								Dashboard</a> <a class="dropdown-item" href="/viewProfile">My
								Profile</a>
							<hr class="dropdown-divider">
							<a class="dropdown-item" href="/logout">Sign Out</a>
						</div>

					</div>
				</c:otherwise>
			</c:choose>
		</ul>
	</div>
</nav>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ARS | UserDashboard</title>
    <style>
        body {
            background: rgb(0, 0, 0);
            background: linear-gradient(90deg, rgba(0, 0, 0, 1) 0%, rgba(0, 0, 0, 1) 0%, rgba(255, 255, 255, 1) 0%, rgba(196, 222, 252, 1) 100%);
        }

        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin-top: 20px;
        }

        .card {
            width: calc(25% - 20px); /* Adjust the width as needed */
            margin-bottom: 20px;
        }

        .card a {
            color: black;
            text-transform: none;
            text-decoration: none;
        }

        .card a:hover {
            color: black;
            text-transform: none;
            text-decoration: none;
        }

        .card-header {
            text-align: center;
        }

        .card-body {
            text-align: center;
        }
    </style>
    <%@include file="head.jsp" %>
</head>

<body>
    <%@include file="navbar.jsp" %>

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
                <div class="col-md-12 h2 mb-3 text-center">USER DASHBOARD</div>
            </div>
            <div class="card-container">
                <div class="card">
                    <a href="/bookNow">
                        <div class="card-header fs-3">Book Tickets</div>
                        <div class="card-body">
                            <i class="bi bi-ticket-detailed fs-1"></i>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/viewProfile">
                        <div class="card-header fs-3">My Profile</div>
                        <div class="card-body">
                            <i class="bi bi-person-circle fs-1"></i>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/viewBookings?userId=${user.userId}">
                        <div class="card-header fs-3">View Bookings</div>
                        <div class="card-body">
                            <i class="bi bi-journal-text fs-1"></i>
                        </div>
                    </a>
                </div>
                <div class="card">
                    <a href="/ticketCancel">
                        <div class="card-header fs-3">Cancel Ticket</div>
                        <div class="card-body">
                            <i class="bi bi-ticket-detailed fs-1"></i>
                        </div>
                    </a>
                </div>
            </div>
            <div id="contactUs">
                <%@include file="contactUs.jsp"%>
            </div>
        </div>
    </main>
</body>

</html>

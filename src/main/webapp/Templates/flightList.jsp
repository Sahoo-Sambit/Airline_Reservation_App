<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ARS | Search Flights</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<div class="container">
  <div class="row mt-3">
            <div class="col" style="margin-left:5%">
	             <!-- Check if the flightList is empty -->
	            <c:if test="${empty flightList}">
	                <div class="card mb-3" style="height: 10rem; width: 70rem;">
	                    <div class="card-header">Flight Not Available</div>
	                    <div class="card-body">
	                        <p class="h5">Sorry, there are no flights available at the moment.</p>
	                    	<a class="btn btn-primary m-2" href="bookNow">Go Back To Search</a>
	                    </div>
	                </div>
	            </c:if>
		        <c:forEach items="${flightList}" var="flight">
	                <div class="card mb-3">
		                <div class="card-header">Flight No - ${flight.flightId} <span class="offset-9">Date - ${flight.departureDate}</span></div>
		                <div class="card-body">
		                    <label class="h4 mb-3">Flight Name :  ${flight.flightName}</label> <span class="offset-4 h5">Fare Price : ${flight.flightFare} </span><br>
		                    <label class="h5">From :  ${flight.departureFrom}</label> <span class="offset-2 h5">To : ${flight.departureTo}</span>
		                    <span class="offset-2 h5">Available Seats :  ${flight.flightSeats}</span>
		                    <a class="offset-2 btn btn-outline-primary" href="ticketBooking?flightId=${flight.flightId}">Book Now</a>
		                </div>
	            	</div>
	           </c:forEach>
            </div>
        </div>
    </div>

</body>
</html>
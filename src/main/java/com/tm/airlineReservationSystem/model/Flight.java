package com.tm.airlineReservationSystem.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Flight {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int flightId;
	private String flightName;
	private String departureFrom;
	private String departureTo;
	private String departureDate;
	private int flightSeats;
	private double flightFare;

	public Flight() {}

	public Flight(String flightName, String departureFrom, String departureTo, String departureDate, int flightSeats,
			double flightFare) {
		this.flightName = flightName;
		this.departureFrom = departureFrom;
		this.departureTo = departureTo;
		this.departureDate = departureDate;
		this.flightSeats = flightSeats;
		this.flightFare = flightFare;
	}

	public int getFlightId() {
		return flightId;
	}

	public void setFlightId(int flightId) {
		this.flightId = flightId;
	}

	public String getFlightName() {
		return flightName;
	}

	public void setFlightName(String flightName) {
		this.flightName = flightName;
	}

	public String getDepartureFrom() {
		return departureFrom;
	}

	public void setDepartureFrom(String departureFrom) {
		this.departureFrom = departureFrom;
	}

	public String getDepartureTo() {
		return departureTo;
	}

	public void setDepartureTo(String departureTo) {
		this.departureTo = departureTo;
	}

	public String getDepartureDate() {
		return departureDate;
	}

	public void setDepartureDate(String departureDate) {
		this.departureDate = departureDate;
	}

	public int getFlightSeats() {
		return flightSeats;
	}

	public void setFlightSeats(int flightSeats) {
		this.flightSeats = flightSeats;
	}

	public double getFlightFare() {
		return flightFare;
	}

	public void setFlightFare(double flightFare) {
		this.flightFare = flightFare;
	}

	@Override
	public String toString() {
		return "Flight [flightId=" + flightId + ", flightName=" + flightName + ", departureFrom=" + departureFrom
				+ ", departureTo=" + departureTo + ", departureDate=" + departureDate + ", flightSeats=" + flightSeats
				+ ", flightFare=" + flightFare + "]";
	}

	
}

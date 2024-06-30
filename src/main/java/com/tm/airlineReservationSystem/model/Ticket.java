package com.tm.airlineReservationSystem.model;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class Ticket {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int ticketId;
	@ManyToOne(cascade = { CascadeType.PERSIST})
	private Flight ticketFlight;
	private String date;
	private int seats;
	private double totalAmount;
	
	@ManyToOne(cascade = { CascadeType.PERSIST})
	private User userDetails;

	public Ticket() {}

	public Ticket(int ticketId, Flight ticketFlight, String date, int seats, double totalAmount, User userDetails) {
		this.ticketId = ticketId;
		this.ticketFlight = ticketFlight;
		this.date = date;
		this.seats = seats;
		this.totalAmount = totalAmount;
		this.userDetails = userDetails;
	}

	public int getTicketId() {
		return ticketId;
	}

	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}

	public Flight getTicketFlight() {
		return ticketFlight;
	}

	public void setTicketFlight(Flight ticketFlight) {
		this.ticketFlight = ticketFlight;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getSeats() {
		return seats;
	}

	public void setSeats(int seats) {
		this.seats = seats;
	}

	public double getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}

	public User getUserDetails() {
		return userDetails;
	}

	public void setUserDetails(User userDetails) {
		this.userDetails = userDetails;
	}

	@Override
	public String toString() {
		return "Ticket [ticketId=" + ticketId + ", date=" + date + ", seats=" + seats + ", totalAmount=" + totalAmount
				+ "]";
	}
	
}

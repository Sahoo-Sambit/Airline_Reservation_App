package com.tm.airlineReservationSystem.service;

import java.util.List;

import com.tm.airlineReservationSystem.model.Ticket;

public interface ticketService 
{
	public void bookTicket(int flightId,int userId,int seats,double totalAmount);
	public List<Ticket> viewUserBookings(int userId);
	public List<Ticket> viewAllBookings();
	public void cancelTicket(int ticketId);
	public Ticket viewTicket(int ticketId);
}

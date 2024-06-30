package com.tm.airlineReservationSystem.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tm.airlineReservationSystem.service.ticketService;
import com.tm.airlineReservationSystem.service.userService;
import com.tm.airlineReservationSystem.model.Flight;
import com.tm.airlineReservationSystem.model.Ticket;
import com.tm.airlineReservationSystem.model.User;
import com.tm.airlineReservationSystem.repository.ticketRepository;
import com.tm.airlineReservationSystem.service.flightService;

@Service
public class ticketServiceImpl implements ticketService
{
	@Autowired
	userService userService;
	@Autowired
	flightService flightService;
	@Autowired
	ticketRepository ticketRepo;

	@Override
	public void bookTicket(int flightId, int userId, int seats, double totalAmount) 
	{
		Ticket ticket=new Ticket();
		Flight flight =flightService.viewFlightById(flightId);
		flight.setFlightSeats(flight.getFlightSeats()-seats);
		flightService.updateFlight(flight);
		User user=userService.viewUser(userId);
		ticket.setDate(flight.getDepartureDate());
		ticket.setTicketFlight(flight);
		ticket.setUserDetails(user);
		ticket.setTotalAmount(totalAmount);
		ticket.setSeats(seats);
		ticketRepo.save(ticket);
	}

	@Override
	public List<Ticket> viewUserBookings(int userId)
	{
		return ticketRepo.findByUserDetailsUserId(userId);
	}

	@Override
	public List<Ticket> viewAllBookings()
	{
		return (List<Ticket>) ticketRepo.findAll();
	}

	@Override
	public void cancelTicket(int ticketId) 
	{
		Ticket ticket =viewTicket(ticketId);
		Flight flight =flightService.viewFlightById(ticket.getTicketFlight().getFlightId());
		flight.setFlightSeats(ticket.getSeats()+flight.getFlightSeats());
		flightService.updateFlight(flight);
		ticketRepo.deleteById(ticketId);
	}

	@Override
	public Ticket viewTicket(int ticketId) 
	{
		return ticketRepo.findByTicketId(ticketId);
	}
}
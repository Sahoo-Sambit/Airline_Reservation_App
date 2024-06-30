package com.tm.airlineReservationSystem.service;

import java.util.List;

import com.tm.airlineReservationSystem.model.Flight;

public interface flightService 
{
	public void addFlight(Flight flight);
	public List<Flight> viewFlight();
	public Flight viewFlightById(int flightId);
	public void deleteFlight(int flightId);
	public List<Flight> searchFlight(String from,String to,String date);
	public void updateFlight(Flight flight);
}

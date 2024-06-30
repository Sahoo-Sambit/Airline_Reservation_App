package com.tm.airlineReservationSystem.serviceImpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tm.airlineReservationSystem.model.Flight;
import com.tm.airlineReservationSystem.repository.flightRepository;
import com.tm.airlineReservationSystem.service.flightService;

@Service
public class flightServiceImpl implements flightService
{
	@Autowired
	flightRepository flightRepo;

	@Override
	public void addFlight(Flight flight)
	{
		flightRepo.save(flight);	
	}

	@Override
	public List<Flight> viewFlight() 
	{
		return (List<Flight>) flightRepo.findAll();
	}

	@Override
	public Flight viewFlightById(int flightId) 
	{
		return flightRepo.findByFlightId(flightId);
	}

	@Override
	public void deleteFlight(int flightId) 
	{
		flightRepo.deleteById(flightId);
	}

	@Override
	public List<Flight> searchFlight(String from, String to, String date)
	{
		List<Flight> flightList = (List<Flight>) flightRepo.findAll();
		List<Flight> newList=new ArrayList<>();
		for(Flight flight:flightList)
		{
			if(flight.getDepartureFrom().equals(from) && flight.getDepartureTo().equals(to) && flight.getDepartureDate().equals(date))
			{
				newList.add(flight);
			}
		}
		return newList;
	}

	@Override
	public void updateFlight(Flight flight)
	{
		flightRepo.save(flight);
	}

}
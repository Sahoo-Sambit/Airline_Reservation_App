package com.tm.airlineReservationSystem.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.tm.airlineReservationSystem.model.Flight;

@Repository
public interface flightRepository extends CrudRepository<Flight, Integer>
{
	@Query(value = "select f from Flight f where f.flightId=:flightId")
	public Flight findByFlightId(int flightId);
}
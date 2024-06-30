package com.tm.airlineReservationSystem.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.tm.airlineReservationSystem.model.Flight;
import com.tm.airlineReservationSystem.service.*;

@Controller
public class flightController 
{
	@Autowired
	flightService flightService;
	@PostMapping(value="/addFlight")
	public String addFlight(@ModelAttribute Flight flight,RedirectAttributes redirect)
	{
		flightService.addFlight(flight);
		redirect.addFlashAttribute("message","Flight Added Successfully");
		return "redirect:/adminDashboard";
	}
	
	@GetMapping("/deleteFlight")
	public String deleteFlight(@RequestParam int flightId,RedirectAttributes redirect)
	{
		flightService.deleteFlight(flightId);
		redirect.addFlashAttribute("message","Flight Deleted Successfully");
		return "redirect:/adminDashboard";
	}
	@PostMapping(value="/flightSearch")
	public String searchFlight(@RequestParam String departureFrom,@RequestParam String departureTo,@RequestParam String departureDate,ModelMap m)
	{
		List<Flight> flightList =flightService.searchFlight(departureFrom, departureTo, departureDate);
		m.addAttribute("flightList",flightList);
		return "flightList";
	}
	@PostMapping(value="/updateFlight")
	public String updateFlight(@ModelAttribute Flight flight,RedirectAttributes redirect)
	{	
		redirect.addFlashAttribute("message","Flight Updated Successfully");
		flightService.updateFlight(flight);
		return "redirect:/adminDashboard";
	}

}
package com.tm.airlineReservationSystem.controller;

import java.util.List;

import com.tm.airlineReservationSystem.model.Flight;
import com.tm.airlineReservationSystem.model.Ticket;
import com.tm.airlineReservationSystem.model.User;
import com.tm.airlineReservationSystem.service.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class homeController 
{
	@Autowired
	private flightService flightService;
	@Autowired
	private userService userService;
	@Autowired
	private ticketService ticketService;
	
	@GetMapping(value="/")
	public String index()
	{
		return "index";
	}
	@GetMapping(value="/home")
	public String home()
	{
		return "index";
	}
	@GetMapping(value="/login")
	public String login()
	{
		return "login";
	}
	@GetMapping(value="/register")
	public String register()
	{
		return "register";
	}
	@GetMapping(value="/bookNow")
	public String bookNow()
	{
		return "bookNow";
	}
	@GetMapping(value="/adminDashboard")
	public String adminDashboard(ModelMap m)
	{
		List<Flight> flightList =flightService.viewFlight();
		List<User> userList=userService.viewAllusers();
		List<Ticket> bookingList = ticketService.viewAllBookings();
		m.addAttribute("flightList",flightList);
		m.addAttribute("userList",userList);
		m.addAttribute("bookingList",bookingList);
		return "adminDashboard";
	}
	@GetMapping(value="/ticketBooking")
	public String ticketBooking(@RequestParam int flightId,ModelMap m,RedirectAttributes redirect)
	{
		HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("User");
		if(user!=null&& user.getRole().equals("User"))
		{
			Flight flight = flightService.viewFlightById(flightId);
			m.addAttribute("flight",flight);
			return "bookingDetails";
		}
		else if(user!=null&& user.getRole().equals("ADMIN"))
		{
			redirect.addFlashAttribute("message","Only User Can Book Tickets");
			return "redirect:/adminDashboard";
		}
		redirect.addFlashAttribute("message","Login Before Booking Ticket");
		return "redirect:/login";
	}
	@GetMapping(value="updateFlightForm")
	public String updateFlightForm(@RequestParam int flightId,ModelMap m)
	{
		System.out.println("123");
		Flight flight = flightService.viewFlightById(flightId);
		m.addAttribute("flight",flight);
		return "updateFlight";
	}
	@GetMapping(value="/viewProfile")
	public String updateUserForm()
	{
		return "myProfile";
	}
	@GetMapping(value="/userDashboard")
	public String userDashboard(ModelMap m)
	{
		return"userDashboard";
	}
	@GetMapping(value="/contactUs")
	public String contactUs()
	{
		return "contactUs";
	}
	@GetMapping(value="/ticketCancel")
	public String ticketCancel()
	{
		return "cancelTicket";
	}
}

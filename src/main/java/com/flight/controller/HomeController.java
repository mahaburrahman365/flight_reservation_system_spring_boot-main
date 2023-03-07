package com.flight.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airport;
import com.flight.model.Flight;
import com.flight.service.AirportService;
import com.flight.service.FlightService;

@RestController
public class HomeController {
	@Autowired
	FlightService flightService;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView flightView() {
		List<Flight> flight = flightService.getAll();
		return new ModelAndView("home/home", "flight", flight);
	}

}

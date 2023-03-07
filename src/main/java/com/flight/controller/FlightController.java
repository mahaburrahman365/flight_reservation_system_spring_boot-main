package com.flight.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airplane;
import com.flight.model.Airport;
import com.flight.model.BookingInformation;
import com.flight.model.Flight;
import com.flight.service.AirplaneService;
import com.flight.service.AirportService;
import com.flight.service.BookingInformationService;
import com.flight.service.FlightService;

@RestController
@RequestMapping(value = "/admin/flight")
public class FlightController {
	@Autowired
	FlightService flightService;
	@Autowired
	AirportService airportService;
	@Autowired
	AirplaneService airplaneService;
	@Autowired
	BookingInformationService bookingInformationService;

	@RequestMapping(value = "/add")
	public ModelAndView flightAdd() {
		return new ModelAndView("admin/flight/add");
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView flightUpdate() {
		return new ModelAndView("admin/flight/update");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute Flight flight) {
//    	System.out.println(flight.getDeparting_time() + " ...");
		Flight p = flightService.save(flight);
		return new ModelAndView("admin/flight/add");
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Flight> flight = flightService.getAll();
		return new ModelAndView("admin/flight/view", "flight", flight);
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Flight flight = flightService.getFlightById(pid);

		return new ModelAndView("admin/flight/update", "flight", flight);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Flight f = flightService.update(request);
		List<Flight> flight = flightService.getAll();
		return new ModelAndView("admin/flight/view", "flight", flight);
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Flight f = flightService.delete(pid);
		List<Flight> flight = flightService.getAll();
		return new ModelAndView("admin/flight/view", "flight", flight);
	}

	/* Departure & Arrival Airport & Airplane Drop-down */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView airportView() {
		Map<String, Object> flightSeat = new HashMap<String, Object>();
		List<Airplane> airplane = airplaneService.getAll();
		List<Airport> airport = airportService.getAll();
		flightSeat.put("airplane", airplane);
		flightSeat.put("airport", airport);
		return new ModelAndView("admin/flight/add", "flightSeat", flightSeat);
	}

}

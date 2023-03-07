package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airport;
import com.flight.model.Flight;
import com.flight.model.Seat;
import com.flight.service.FlightService;
import com.flight.service.SeatService;

@RestController
@RequestMapping(value = "/admin/seat")
public class SeatController {
	@Autowired
	SeatService seatService;
	@Autowired
	FlightService flightService;

	@RequestMapping(value = "/add")
	public ModelAndView signUp() {
		return new ModelAndView("admin/seat/add");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute Seat seat) {
		Seat s = seatService.save(seat);
		return new ModelAndView("redirect:/admin/seat/add");
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Seat> seat = seatService.getAll();
		return new ModelAndView("admin/seat/view", "seat", seat);
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView getSeatById(@PathVariable String id) {
		int pid = Integer.valueOf(id);
//			List<Flight> flight = flightService.getAll();

		Seat seat = seatService.getSeatById(pid);

		return new ModelAndView("admin/seat/update", "seat", seat);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Seat s = seatService.update(request);
		List<Seat> seat = seatService.getAll();
		return new ModelAndView("admin/seat/view", "seat", seat);
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Seat s = seatService.delete(pid);
		List<Seat> seat = seatService.getAll();
		return new ModelAndView("admin/seat/view", "seat", seat);
	}

	/* Flight Name Drop-down */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView flightView() {
		List<Flight> flight = flightService.getAll();
		return new ModelAndView("admin/seat/add", "flight", flight);
	}

//	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
//	public ModelAndView flightUpdate(@PathVariable String id) {
//		List<Flight> flight = flightService.getAll();
//		return new ModelAndView("admin/seat/update", "flight", flight);
//	}

	@RequestMapping(value = "/getSeatByCode", method = RequestMethod.POST)
	public Seat getSeatByCode(HttpServletRequest request) {
		Seat seat = seatService.getSeatByCode(request.getParameter("seat_no"));

		return seat;
	}
}

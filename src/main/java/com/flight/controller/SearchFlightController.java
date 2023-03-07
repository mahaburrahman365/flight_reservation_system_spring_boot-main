package com.flight.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Flight;
import com.flight.service.FlightService;
import com.flight.service.SearchFlightService;

@RestController
@RequestMapping(value = "/home")
public class SearchFlightController {
	@Autowired
	SearchFlightService searchFlightService;

	@RequestMapping(value = "/available/flight", method = RequestMethod.POST)
    public ModelAndView serachFlight(HttpServletRequest request) {
		System.out.println(request.getParameter("departure_airport"));
		System.out.println(request.getParameter("arrival_airport"));
        Map<String, Object> flight = new HashMap<String, Object>();
//        List<Flight> fList = searchFlightService.searchFlight(request.getParameter("departure_airport", "arrival_airport"));
        List<Flight> fList = searchFlightService.searchFlight(request.getParameter("departure_airport"),request.getParameter("arrival_airport"));
        flight.put("fList", fList);
        
        return new ModelAndView("searchFlight/searchFlight", "flight", flight);
    }
	

}

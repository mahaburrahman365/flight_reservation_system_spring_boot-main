package com.flight.service;

import java.sql.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.FlightDAO;
import com.flight.model.Airport;
import com.flight.model.Flight;

@Service(value = "flightService")
public class FlightService {
	@Autowired
	FlightDAO flightDAO;
//	public Flight save(HttpServletRequest request){
//	       
//        String airline = request.getParameter("airline");
//        Flight flight = new Flight();
//        flight.setAirline(airline);
//        flight.setDeparture_airport(request.getParameter("departure_airport"));
//        flight.setArrival_airport(request.getParameter("arrival_airport"));
//        flight.setDeparting_date(Date.);
//        flight.setCapacity(Integer.valueOf(request.getParameter("capacity")));
//        return airplaneDAO.save(airplane);
//    }

	public Flight save(Flight f) {
		return flightDAO.save(f);
	}

	public List<Flight> getAll() {
		return flightDAO.getAll();
	}

	public Flight getFlightById(int pid) {
		return flightDAO.getFlightById(pid);
	}

	public Flight update(HttpServletRequest request) {
		String airline = request.getParameter("airline");
		Flight flight = new Flight();
		flight.setId(Integer.valueOf(request.getParameter("id")));
		flight.setAirline(airline);
		flight.setDeparture_airport(request.getParameter("departure_airport"));
		flight.setArrival_airport(request.getParameter("arrival_airport"));
		flight.setDeparting_date(Date.valueOf(request.getParameter("departing_date")));
		flight.setClass_name(request.getParameter("class_name"));
		flight.setFlight_charge(Double.valueOf(request.getParameter("flight_charge")));
		flight.setAirpalne(request.getParameter("airpalne"));
		flight.setFlight_name(request.getParameter("flight_name"));
		return flightDAO.update(flight);
	}

	public Flight delete(int pid) {
		Flight flight = flightDAO.getFlightById(pid);
		return flightDAO.delete(flight);
	}
//	public Flight getFlightBySeat(String parameter) {
//		Flight flight = flightDAO.getFlightBySeat(parameter);
//
//        return flight;
//	}
//	public Flight getFlightByCode(String flight_code) {
//		Flight flight = flightDAO.getFlightBySeat(flight_code);
//
//        return flight;
//	}

}

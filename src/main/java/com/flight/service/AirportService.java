package com.flight.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.AirportDAO;

import com.flight.model.Airport;

@Service(value = "airportService")
public class AirportService {
	@Autowired
	AirportDAO airportDAO;

	public Airport save(HttpServletRequest request) {

		String airport_code = request.getParameter("airport_code");
		Airport airport = new Airport();
		airport.setAirport_code(airport_code);
		airport.setName(request.getParameter("name"));
		airport.setCountry(request.getParameter("country"));
		airport.setCity(request.getParameter("city"));
		return airportDAO.save(airport);
	}

	public List<Airport> getAll() {
		return airportDAO.getAll();
	}

	public Airport getAirportById(int pid) {
		return airportDAO.getAirportById(pid);
	}

	public Airport update(HttpServletRequest request) {
		String airport_code = request.getParameter("airport_code");
		Airport airport = new Airport();
		airport.setId(Integer.valueOf(request.getParameter("id")));
		airport.setAirport_code(airport_code);
		airport.setName(request.getParameter("name"));
		airport.setCountry(request.getParameter("country"));
		airport.setCity(request.getParameter("city"));
		return airportDAO.update(airport);
	}

	public Airport delete(int pid) {
		Airport airport = airportDAO.getAirportById(pid);
		return airportDAO.delete(airport);
	}
}

package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airport;
import com.flight.model.Country;
import com.flight.service.AirportService;
import com.flight.service.CountryService;

@RestController
@RequestMapping(value = "/admin/airport")
public class AirportController {
	@Autowired
	AirportService airportService;
	@Autowired
	CountryService countryService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView AirportAdd() {
		return new ModelAndView("admin/airport/add");
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView airportUpdate() {
		return new ModelAndView("admin/airport/update");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Airport a = airportService.save(request);
		return new ModelAndView("admin/airport/add");
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Airport> airport = airportService.getAll();
		return new ModelAndView("admin/airport/view", "airport", airport);
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Airport airport = airportService.getAirportById(pid);

		return new ModelAndView("admin/airport/update", "airport", airport);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Airport a = airportService.update(request);
		List<Airport> airport = airportService.getAll();
		return new ModelAndView("admin/airport/view", "airport", airport);
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Airport a = airportService.delete(pid);
		List<Airport> airport = airportService.getAll();
		return new ModelAndView("admin/airport/view", "airport", airport);
	}

	/* Departure Country Drop-down */
//	  @RequestMapping(value = "/add", method = RequestMethod.GET)
//		public ModelAndView cityView() {
//			List<Country> country = countryService.getAll();
//			return new ModelAndView("admin/airport/add", "country", country);
//		}
//	  

}

package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Country;
import com.flight.service.CountryService;

@RestController
@RequestMapping(value = "/admin/country")
public class CountryController {
	@Autowired
	CountryService countryService;

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public ModelAndView add() {
		return new ModelAndView("admin/country/add");
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public ModelAndView save(HttpServletRequest request) {
		Country country = countryService.save(request);
		System.out.println(country.getLatitude());
		return new ModelAndView("admin/country/add");
	}

	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public ModelAndView view() {
		List<Country> country = countryService.getAll();
		return new ModelAndView("admin/country/view", "country", country);
	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView Countryupdate() {
		return new ModelAndView("admin/country/update");
	}

	@RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Country country = countryService.getCountryById(pid);

		return new ModelAndView("admin/country/update", "country", country);
	}

	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request) {
		Country a = countryService.update(request);
		List<Country> country = countryService.getAll();
		return new ModelAndView("admin/country/view", "country", country);
	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public ModelAndView delete(@PathVariable String id) {
		int pid = Integer.valueOf(id);
		Country c = countryService.delete(pid);
		List<Country> country = countryService.getAll();
		return new ModelAndView("admin/country/view", "country", country);
	}

}

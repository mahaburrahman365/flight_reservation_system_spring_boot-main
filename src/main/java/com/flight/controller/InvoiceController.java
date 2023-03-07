package com.flight.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.BookingInformation;
import com.flight.model.Flight;
import com.flight.service.BookingInformationService;
import com.flight.service.InvoiceService;

@RestController
@RequestMapping(value = "/home")
public class InvoiceController {
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	BookingInformationService bookingInformationService;

	@RequestMapping(value = "/book/invoice/search")
	public ModelAndView invoiceSearch() {
		return new ModelAndView("invoice/search");
	}

	@RequestMapping(value = "/book/invoice/usersearch", method = RequestMethod.POST)
	public List<BookingInformation> invoiceSearchByUser(HttpServletRequest request) {
		List<BookingInformation> bList = invoiceService.getByEmail(request.getParameter("temail"));
		return bList;
	}

	@RequestMapping(value = "/book/invoice/cancel")
	public ModelAndView invoiceCancel() {
		return new ModelAndView("invoice/cancel");
	}

	@RequestMapping(value = "/cancelbook/{id}", method = RequestMethod.GET)
	public ModelAndView update(HttpServletRequest request, @PathVariable("id") int id) {
		BookingInformation bookingInformation = invoiceService.getById(id);
		BookingInformation p = invoiceService.cancelStatus(bookingInformation);
		return new ModelAndView("invoice/cancel");
	}

}

package com.flight.controller.impl;

import org.springframework.web.servlet.ModelAndView;

import com.flight.common.ICommonController;

public interface IAirportController extends ICommonController{
	public ModelAndView getById(String id);
}

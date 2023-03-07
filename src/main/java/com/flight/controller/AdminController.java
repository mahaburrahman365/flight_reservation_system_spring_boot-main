package com.flight.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.swing.JOptionPane;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
	@RequestMapping(value = "/admin")
	public ModelAndView admin(HttpServletRequest req) {
		String username = req.getParameter("frontuser");
		String password = req.getParameter("frontPass");

		if (username.equals("admin") && password.equals("1234")) {
			return new ModelAndView("admin/admin");
		} else {
			return new ModelAndView("login/login");
		}
	}

}

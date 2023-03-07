package com.flight.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.AirplaneDAO;
import com.flight.model.Airplane;

@Service(value = "airplaneService")
public class AirplaneService {
	@Autowired
	AirplaneDAO airplaneDAO;

	public Airplane save(HttpServletRequest request) {

		String airplane_name = request.getParameter("airplane_name");
		Airplane airplane = new Airplane();
		airplane.setAirplane_name(airplane_name);
		airplane.setOwner(request.getParameter("owner"));
		airplane.setModel(request.getParameter("model"));
		airplane.setEngine(request.getParameter("engine"));
		airplane.setCapacity(Integer.valueOf(request.getParameter("capacity")));
		return airplaneDAO.save(airplane);
	}

	public List<Airplane> getAll() {
		return airplaneDAO.getAll();
	}

	public Airplane getAirplaneById(int pid) {
		return airplaneDAO.getAirplaneById(pid);
	}

	public Airplane update(HttpServletRequest request) {
		String airplane_name = request.getParameter("airplane_name");
		Airplane airplane = new Airplane();
		airplane.setId(Integer.valueOf(request.getParameter("id")));
		airplane.setAirplane_name(airplane_name);
		airplane.setOwner(request.getParameter("owner"));
		airplane.setModel(request.getParameter("model"));
		airplane.setEngine(request.getParameter("engine"));
		airplane.setCapacity(Integer.valueOf(request.getParameter("capacity")));
		return airplaneDAO.update(airplane);
	}

	public Airplane delete(int pid) {
		Airplane airplane = airplaneDAO.getAirplaneById(pid);
		return airplaneDAO.delete(airplane);
	}

}

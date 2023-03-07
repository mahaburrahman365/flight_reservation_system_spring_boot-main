package com.flight.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.FlightDAO;
import com.flight.dao.SeatDAO;
import com.flight.model.Airplane;
import com.flight.model.Airport;
import com.flight.model.BookingInformation;
import com.flight.model.Flight;
import com.flight.model.Seat;

@Service(value = "seatService")
public class SeatService {
	@Autowired
	SeatDAO seatDAO;

	public Seat save(Seat s) {

		return seatDAO.save(s);
	}

	public List<Seat> getAll() {
		return seatDAO.getAll();
	}

	public Seat getSeatById(int pid) {
		return seatDAO.getSeatById(pid);
	}

	public Seat update(HttpServletRequest request) {
		String seat_no = request.getParameter("seat_no");
		Seat seat = new Seat();
		seat.setId(Integer.valueOf(request.getParameter("id")));
		seat.setSeat_no(seat_no);
		seat.setSeat_code(Integer.valueOf(request.getParameter("seat_code")));
		seat.setSeat_class(request.getParameter("seat_class"));
		seat.setSeat_charge(Double.valueOf(request.getParameter("seat_charge")));
		return seatDAO.update(seat);
	}

	public Seat delete(int pid) {
		Seat seat = seatDAO.getSeatById(pid);
		return seatDAO.delete(seat);
	}

	public Seat getSeatByCode(String parameter) {
		return seatDAO.getSeatByCode(parameter);
	}

}

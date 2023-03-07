package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Airport;
import com.flight.model.Flight;
import com.flight.model.Seat;

@Repository(value = "seatDAO")
@Transactional
public class SeatDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Seat save(Seat seat) {
		getSession().save(seat);
		getSession().flush();
		return seat;
	}

	public List<Seat> getAll() {
		String sql = "from seat";
		List<Seat> seat = getSession().createQuery(sql).list();
		return seat;
	}

	public Seat getSeatById(int pid) {
		String sql = "from seat where id = '" + pid + "'";
		List<Seat> seatList = getSession().createQuery(sql).list();

		return seatList.get(0);

	}

	public Seat update(Seat s) {
		getSession().update(s);
		getSession().flush();
		return s;
	}

	public Seat delete(Seat seat) {
		getSession().delete(seat);
		getSession().flush();
		return seat;
	}

	public Seat getSeatByCode(String parameter) {
		String sql = "from seat where seat_no = '" + parameter + "'";
		List<Seat> seatList = getSession().createQuery(sql).list();

		return seatList.get(0);
	}

	public List<Seat> getSeatByFlightCode(String parameter) {
		String sql = "from seat where flight_code = '" + parameter + "'";
		List<Seat> seatList = getSession().createQuery(sql).list();

		return seatList;
	}
}

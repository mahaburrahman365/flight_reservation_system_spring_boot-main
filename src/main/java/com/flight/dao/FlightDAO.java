package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Airplane;
import com.flight.model.Airport;
import com.flight.model.Flight;

@Repository(value = "flightDAO")
@Transactional
public class FlightDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Flight save(Flight flight) {
		getSession().save(flight);
		getSession().flush();
		return flight;
	}

	public List<Flight> getAll() {

		List<Flight> flight = getSession().createCriteria(Flight.class).list();
		return flight;
	}

	public Flight getFlightById(int pid) {
		String sql = "from flight where id = '" + pid + "'";
		List<Flight> flightList = getSession().createQuery(sql).list();

		return flightList.get(0);

	}

	public Flight update(Flight f) {
		// String hql = "update airport set airport_code = "+a.getAirport_code()+", name
		// = "+a.getName()+", country = "+a.getCountry()+", city = "+a.getCity()+" where
		// id = "+a.getId();
		getSession().update(f);

		getSession().flush();
		return f;
	}

	public Flight delete(Flight flight) {
		// String sql = "delete airport where id = '"+airport.getId()+"'";
		getSession().delete(flight);
		getSession().flush();
		return flight;
	}

//		public Flight getFlightBySeat(String parameter) {
//			String sql = "from flight where flight_code = '" + parameter + "'";
//	        List<Flight> flightList = getSession().createQuery(sql).list();
//	        
//	        return flightList.get(0);
//		}
}

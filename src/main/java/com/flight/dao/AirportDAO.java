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

@Repository(value = "airportDAO")
@Transactional
public class AirportDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Airport save(Airport airport) {
		getSession().save(airport);
		getSession().flush();
		return airport;
	}

	public List<Airport> getAll() {
		String sql = "from airport";
		List<Airport> airport = getSession().createQuery(sql).list();
		return airport;
	}

	public Airport getAirportById(int pid) {
		String sql = "from airport where id = '" + pid + "'";
		List<Airport> airportList = getSession().createQuery(sql).list();

		return airportList.get(0);

	}

	public Airport update(Airport a) {
		// String hql = "update airport set airport_code = "+a.getAirport_code()+", name
		// = "+a.getName()+", country = "+a.getCountry()+", city = "+a.getCity()+" where
		// id = "+a.getId();
		getSession().update(a);

		getSession().flush();
		return a;
	}

	public Airport delete(Airport airport) {
		// String sql = "delete airport where id = '"+airport.getId()+"'";
		getSession().delete(airport);
		getSession().flush();
		return airport;
	}
}

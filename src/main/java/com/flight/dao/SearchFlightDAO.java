package com.flight.dao;

import java.sql.Date;
import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Flight;

@Repository(value = "searchFlightDAO")
@Transactional
public class SearchFlightDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public List<Flight> searchFlight(String departure_airport, String arrival_airport) {
		String hqlQuery = "from flight where departure_airport = :departure_airport and arrival_airport = :arrival_airport";
		Query query = getSession().createQuery(hqlQuery);
		query.setParameter("departure_airport", departure_airport);
		query.setParameter("arrival_airport", arrival_airport);
		System.out.println("search" + departure_airport + "searchairport" + arrival_airport);
		List<Flight> flightList = query.list();
		getSession().flush();

		return flightList;
	}

//		/* flight information */
//    
//    public Flight getFlightById(int pid) {
//        String sql = "from flight where id = '" + pid + "'";
//        List<Flight> flightList = getSession().createQuery(sql).list();
//        
//        return flightList.get(0);
//
//    }
}

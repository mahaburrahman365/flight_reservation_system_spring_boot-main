package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Airport;
import com.flight.model.BookingInformation;
import com.flight.model.Flight;
@Repository(value = "bookingInformationDAO")
@Transactional
public class BookingInformationDAO {
	
	@Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }
	/* flight information */
    
    public Flight getFlightById(int pid) {
        String sql = "from flight where id = '" + pid + "'";
        List<Flight> flightList = getSession().createQuery(sql).list();
        
        return flightList.get(0);

    }
    
    public BookingInformation save(BookingInformation bookingInformation){
//    	System.out.println(bookingInformation.getAdult());
    	getSession().save(bookingInformation);
    	getSession().flush();
        return bookingInformation;
    }
    
    public List<BookingInformation> getAll(){ 
    	
		 List<BookingInformation> booking = getSession().createCriteria(BookingInformation.class).list();
		 return booking; 
		  }

    
    public List<BookingInformation> getBySeat()
	 { 
    	String sql = "from bookingInformation where seat_no"; 
	 List<BookingInformation> booking = getSession().createQuery(sql).list(); 
	 return booking; 
	  }
//	public BookingInformation getFlightBySeat(String parameter) {
//		String sql = "from bookingInformation where seat_no = '" + parameter + "'";
//        List<BookingInformation> flightList = getSession().createQuery(sql).list();
//        
//        return flightList.get(0);
//
//	}
}

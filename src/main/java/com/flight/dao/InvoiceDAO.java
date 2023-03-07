package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.BookingInformation;
import com.flight.model.Flight;
import com.flight.service.BookingInformationService;

@Repository(value = "invoiceDAO")
@Transactional
public class InvoiceDAO {
	@Autowired
	private EntityManager entityManager;
	@Autowired
	BookingInformationService bookingInformationService;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public List<BookingInformation> getByEmail(String temail) {
		String hqlQuery = "from bookingInformation where temail = :temail";
		Query query = getSession().createQuery(hqlQuery);
		query.setParameter("temail", temail);

//      System.out.println("search" +temail);
		List<BookingInformation> bookingList = query.list();
		getSession().flush();

		return bookingList;
	}

//  cancel book

	public BookingInformation cancelStatus(BookingInformation bookingInformation) {
		String hql = "update bookingInformation set cancel_status ='cancelbook' where id = '"
				+ bookingInformation.getId() + "'";
		Query q = getSession().createQuery(hql);
		q.executeUpdate();
		getSession().flush();
		return bookingInformation;
	}

	public BookingInformation getById(int pid) {
		String sql = "from bookingInformation where id = '" + pid + "'";
		List<BookingInformation> cList = getSession().createQuery(sql).list();
		return cList.get(0);

	}

}

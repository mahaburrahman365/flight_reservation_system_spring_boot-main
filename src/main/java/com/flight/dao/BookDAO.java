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
import com.flight.service.BookingInformationService;

@Repository(value = "bookDAO")
@Transactional
public class BookDAO {
	@Autowired
	private EntityManager entityManager;
	@Autowired
	BookingInformationService bookingInformationService;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public BookingInformation approvedStatus(BookingInformation bookingInformation) {
		String hql = "update bookingInformation set status ='approved' where id = '" + bookingInformation.getId() + "'";
		Query q = getSession().createQuery(hql);
		q.executeUpdate();
		getSession().flush();
		return bookingInformation;
	}

	public BookingInformation getById(int pid) {
		String sql = "from bookingInformation where id = '" + pid + "'";
		List<BookingInformation> catList = getSession().createQuery(sql).list();
		return catList.get(0);

	}

	public List<BookingInformation> getByPending(String status) {
		String sql = "from bookingInformation where status = '" + "pending" + "'";
		List<BookingInformation> bookPendingList = getSession().createQuery(sql).list();
		return bookPendingList;

	}

	public List<BookingInformation> getByApprove(String status) {
		String sql = "from bookingInformation where status = '" + "approved" + "'";
		List<BookingInformation> bookApproveList = getSession().createQuery(sql).list();
		return bookApproveList;

	}

//    cancel book

//    public BookingInformation cancelStatus(BookingInformation bookingInformation) {
//		String hql = "update bookingInformation set cancel_status ='cancelbook' where id = '" + bookingInformation.getId() + "'";
//		Query q = getSession().createQuery(hql);
//		q.executeUpdate();
//		getSession().flush();
//		return bookingInformation;
//	}

}

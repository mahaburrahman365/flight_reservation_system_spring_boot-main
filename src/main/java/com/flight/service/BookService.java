package com.flight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.BookDAO;
import com.flight.model.BookingInformation;

@Service(value = "bookService")
public class BookService {
	@Autowired
	BookDAO bookDAO;
	@Autowired
	BookingInformationService bookingInformationService;

	public BookingInformation approvedStatus(BookingInformation bookingInformation) {
		return bookDAO.approvedStatus(bookingInformation);
	}

	public BookingInformation getById(int pid) {
		return bookDAO.getById(pid);
	}

	public List<BookingInformation> getByPending(String status) {
		return bookDAO.getByPending(status);
	}

	public List<BookingInformation> getByApprove(String status) {
		return bookDAO.getByApprove(status);
	}

//	public BookingInformation cancelStatus(BookingInformation bookingInformation) {
//		return bookDAO.cancelStatus(bookingInformation);
//	}

}

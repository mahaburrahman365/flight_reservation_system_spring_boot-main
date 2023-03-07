package com.flight.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "seat")
@Table(name = "seat")
public class Seat {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	private String flight_code;
	private String flight_name;
	private String seat_no;
	private int seat_code;
	private String seat_class;
	private Double seat_charge;
	private int seat_status;

	public String getFlight_code() {
		return flight_code;
	}

	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}

	public int getSeat_status() {
		return seat_status;
	}

	public void setSeat_status(int seat_status) {
		this.seat_status = seat_status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFlight_name() {
		return flight_name;
	}

	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}

	public String getSeat_no() {
		return seat_no;
	}

	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}

	public int getSeat_code() {
		return seat_code;
	}

	public void setSeat_code(int seat_code) {
		this.seat_code = seat_code;
	}

	public String getSeat_class() {
		return seat_class;
	}

	public void setSeat_class(String seat_class) {
		this.seat_class = seat_class;
	}

	public Double getSeat_charge() {
		return seat_charge;
	}

	public void setSeat_charge(Double seat_charge) {
		this.seat_charge = seat_charge;
	}

}
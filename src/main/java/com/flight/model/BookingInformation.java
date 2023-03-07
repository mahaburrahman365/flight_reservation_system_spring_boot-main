package com.flight.model;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "bookingInformation")
@Table(name = "bookingInformation")
public class BookingInformation {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	
//	Ticket Information

	private String seat_no;
	private String seat_class;
	private Double seat_charge;
	
	
//	Traveler Information
	private String fname;
	private String lname;
	private String gender;
	private Date tdate;
	private String tcontact_no;
	private String temail;
	private String tpassport_no;
	
	//	Payment Information
	private String card_holder_name;
	private int card_number;
	private int cvc;
	private Date pdate;
	
//	Flight Information
	
	@Column(name = "flight_code")
    private String flight_code;
	@Column(name = "airpalne")
    private String airpalne;
	@Column(name = "departure_airport")
    private String departure_airport;
	@Column(name = "arrival_airport")
    private String arrival_airport;
	@Column(name = "departing_date")
    private Date departing_date;
	@Column(name = "departing_time")
	private Time departing_time;
	@Column(name = "arrival_date")
    private  Date arrival_date;
	@Column(name = "arrival_time")
	  private Time arrival_time;
	@Column(name = "flight_charge")
    private Double flight_charge;
	@Column(name = "flight_name")
    private String flight_name;
	
	@Column(name = "status")
    private String status="pending";
	@Column(name = "cancel_status")
    private String cancel_status="book";
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getSeat_class() {
		return seat_class;
	}
	public void setSeat_class(String seat_class) {
		this.seat_class = seat_class;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getTdate() {
		return tdate;
	}
	public void setTdate(Date tdate) {
		this.tdate = tdate;
	}
	public String getTcontact_no() {
		return tcontact_no;
	}
	public void setTcontact_no(String tcontact_no) {
		this.tcontact_no = tcontact_no;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getTpassport_no() {
		return tpassport_no;
	}
	public void setTpassport_no(String tpassport_no) {
		this.tpassport_no = tpassport_no;
	}
	public String getCard_holder_name() {
		return card_holder_name;
	}
	public void setCard_holder_name(String card_holder_name) {
		this.card_holder_name = card_holder_name;
	}
	public int getCard_number() {
		return card_number;
	}
	public void setCard_number(int card_number) {
		this.card_number = card_number;
	}
	public int getCvc() {
		return cvc;
	}
	public void setCvc(int cvc) {
		this.cvc = cvc;
	}
	
	public String getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	
	public String getFlight_code() {
		return flight_code;
	}
	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}
	public String getAirpalne() {
		return airpalne;
	}
	public void setAirpalne(String airpalne) {
		this.airpalne = airpalne;
	}
	public String getDeparture_airport() {
		return departure_airport;
	}
	public void setDeparture_airport(String departure_airport) {
		this.departure_airport = departure_airport;
	}
	public String getArrival_airport() {
		return arrival_airport;
	}
	public void setArrival_airport(String arrival_airport) {
		this.arrival_airport = arrival_airport;
	}
	public Date getDeparting_date() {
		return departing_date;
	}
	public void setDeparting_date(Date departing_date) {
		this.departing_date = departing_date;
	}
	public Date getArrival_date() {
		return arrival_date;
	}
	public void setArrival_date(Date arrival_date) {
		this.arrival_date = arrival_date;
	}
	public Time getDeparting_time() {
		return departing_time;
	}
	public void setDeparting_time(Time departing_time) {
		this.departing_time = departing_time;
	}
	public Time getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(Time arrival_time) {
		this.arrival_time = arrival_time;
	}
	public Double getFlight_charge() {
		return flight_charge;
	}
	public void setFlight_charge(Double flight_charge) {
		this.flight_charge = flight_charge;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public Double getSeat_charge() {
		return seat_charge;
	}
	public void setSeat_charge(Double seat_charge) {
		this.seat_charge = seat_charge;
	}
	public String getCancel_status() {
		return cancel_status;
	}
	public void setCancel_status(String cancel_status) {
		this.cancel_status = cancel_status;
	}

	

	
}

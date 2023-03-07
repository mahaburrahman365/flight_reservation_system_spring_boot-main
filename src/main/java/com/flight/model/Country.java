package com.flight.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "country")
@Table(name = "country")
public class Country {
@Id
@GeneratedValue
@Column(name = "id")
private int id;
@Column(name = "city_name")
private String city_name;
@Column(name = "latitude")
private String latitude;
@Column(name = "longitude")
private String longitude;
@Column(name = "country")
private String country;
@Column(name = "city_code")
private String city_code;

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getCity_name() {
	return city_name;
}
public void setCity_name(String city_name) {
	this.city_name = city_name;
}
public String getLatitude() {
	return latitude;
}
public void setLatitude(String latitude) {
	this.latitude = latitude;
}
public String getLongitude() {
	return longitude;
}
public void setLongitude(String longitude) {
	this.longitude = longitude;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getCity_code() {
	return city_code;
}
public void setCity_code(String city_code) {
	this.city_code = city_code;
}


}

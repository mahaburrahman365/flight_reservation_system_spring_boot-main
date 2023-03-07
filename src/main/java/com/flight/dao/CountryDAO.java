package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Country;

@Repository(value = "countryDAO")
@Transactional
public class CountryDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Country save(Country country) {
		getSession().save(country);
		getSession().flush();
		return country;
	}

	public List<Country> getAll() {
		String sql = "from country";
		List<Country> country = getSession().createQuery(sql).list();
		return country;
	}

	public Country getCountryById(int pid) {
		String sql = "from country where id = '" + pid + "'";
		List<Country> countryList = getSession().createQuery(sql).list();

		return countryList.get(0);

	}

	public Country update(Country country) {
//    String hql = "update country set city_name = '"+country.getCity_name()+"', latitude = '"+country.getLatitude()+"', longitude = '"+country.getLongitude()+"', country = '"+country.getCountry()+"', city_code = '"+country.getCity_code()+"'  where id = '"+country.getId()+"'";
		getSession().update(country);
		getSession().flush();
		return country;
	}

	public Country delete(Country country) {
		String sql = "delete country where id = '" + country.getId() + "'";
		int delete = getSession().createQuery(sql).executeUpdate();
		return country;
	}
}

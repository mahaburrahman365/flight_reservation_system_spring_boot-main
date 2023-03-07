package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Airplane;

@Repository(value = "airplaneDAO")
@Transactional
public class AirplaneDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Airplane save(Airplane airplane) {
		getSession().save(airplane);
		getSession().flush();
		return airplane;
	}

	public List<Airplane> getAll() {
		String sql = "from airplane";
		List<Airplane> airplanes = getSession().createQuery(sql).list();
		return airplanes;
	}

	public Airplane getAirplaneById(int pid) {
		String sql = "from airplane where id = '" + pid + "'";
		List<Airplane> airplaneList = getSession().createQuery(sql).list();

		return airplaneList.get(0);

	}

	public Airplane update(Airplane p) {
		String hql = "update airplane set airplane_name = '" + p.getAirplane_name() + "', owner = '" + p.getOwner()
				+ "', model = '" + p.getModel() + "', model = '" + p.getModel() + "', engine = '" + p.getEngine()
				+ "', capacity = '" + p.getCapacity() + "'  where id = '" + p.getId() + "'";
		Query q = getSession().createQuery(hql);
		q.executeUpdate();
		getSession().flush();
		return p;
	}

	public Airplane delete(Airplane airplane) {
		String sql = "delete airplane where id = '" + airplane.getId() + "'";
		int delete = getSession().createQuery(sql).executeUpdate();
		return airplane;
	}

}

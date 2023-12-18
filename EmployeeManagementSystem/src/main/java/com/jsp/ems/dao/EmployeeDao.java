package com.jsp.ems.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.ems.entity.Emp;

@Component
public class EmployeeDao {
	@Autowired
	private EntityManager entityManager;

	public Emp saveEmployee(Emp employee) {
		EntityTransaction entityTransaction = entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(employee);
		entityTransaction.commit();

		return employee;

	}
	
	public Emp findEmployeeById(int id) {
		return entityManager.find(Emp.class, id);
	}
	
	public Emp UpdateEmployee(Emp employee) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(employee);
		entityTransaction.commit();
		return employee;
	}
	
	public boolean DeleteEmployee(Emp employee) {
		EntityTransaction entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.remove(employee);
		entityTransaction.commit();
		return true;
	}
	
	

}

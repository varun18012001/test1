package com.jsp.ems.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jsp.ems.dao.EmployeeDao;
import com.jsp.ems.entity.Emp;

@Component
public class EmployeeService {
	@Autowired
	EmployeeDao employeeDao;

	public Emp saveEmployee(Emp employee) {
		if (employee != null) {
			employeeDao.saveEmployee(employee);
			return employee;
		}else {
			return null;
		}
		
		
	}

	public Emp findEmployee(int id) {
		return employeeDao.findEmployeeById(id);
	}

	public Emp updateEmployee(Emp employee) {
		if (employee != null) {
			employeeDao.UpdateEmployee(employee);
			return employee;
		}
		return null;
	}
	
	public boolean deleteEmployee(Emp employee) {
		if(employee!=null) {
			employeeDao.DeleteEmployee(employee);
			return true;
		}else {
			return false;
		}
		
	}

}

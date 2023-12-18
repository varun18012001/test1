package com.jsp.ems.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.ems.Service.EmployeeService;
import com.jsp.ems.entity.Emp;

@Controller
public class EmployeeController {
	@Autowired
	EmployeeService employeeService;

	@RequestMapping("save")
	public ModelAndView saveEmployee(ModelAndView mav, Emp employee) {
		mav.addObject("employee", employee);
		mav.setViewName("createemployee.jsp");
		return mav;
	}

	@RequestMapping(value = "saveemployee", method = RequestMethod.POST)
	public ModelAndView saveemployeetoDB(@ModelAttribute Emp employee, ModelAndView mav) {
		Emp saved = employeeService.saveEmployee(employee);
		if (saved != null) {
			mav.addObject("msg", "employee Inserted...!");
			mav.setViewName("index.jsp");
			return mav;
		}else {
			mav.setViewName("index.jsp");
			return mav;
		}
			
		
	}

	@RequestMapping("find")
	public ModelAndView findEmployee(ModelAndView mav) {
		mav.setViewName("findemployee.jsp");
		return mav;
	}

	@RequestMapping(value = "findemployee", method = RequestMethod.POST)
	public ModelAndView getDetails(HttpServletRequest request, ModelAndView mav) {
		int id = Integer.parseInt(request.getParameter("id"));
		Emp employee = employeeService.findEmployee(id);
		mav.addObject("employee", employee);
		mav.setViewName("Display.jsp");
		return mav;
	}

	@RequestMapping("detail")
	public String showIndexPage() {
		return "index.jsp";
	}

	@RequestMapping("update")
	public ModelAndView updateEmployee(ModelAndView mav) {
		mav.setViewName("update.jsp");
		return mav;
	}

	@RequestMapping("updateemployee")
	public ModelAndView EmployeeUpdate(ModelAndView mav, HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("id"));
		Emp employee = employeeService.findEmployee(id);
		if (employee != null) {
			mav.addObject("employee", employee);
			mav.setViewName("updateemployee.jsp");
			return mav;
		} else {
			return mav;
		}
	}

	@RequestMapping("employeeupdate")
	public ModelAndView SaveUpdate(@ModelAttribute Emp employee, ModelAndView mav) {
		employee = employeeService.updateEmployee(employee);
		if (employee != null) {
			mav.addObject("msg", "update Succssfull...!");
			mav.setViewName("index.jsp");
			return mav;
		} else {
			mav.addObject("msg",null);
			mav.setViewName("index.jsp");
			return mav;
		}
	}

	@RequestMapping("delete")
	public ModelAndView delete(ModelAndView mav) {
		mav.setViewName("delete.jsp");
		return mav;
	}

	@RequestMapping("deleteemployee")
	public ModelAndView deleteEmployee(HttpServletRequest request, ModelAndView mav) {
		int id = Integer.parseInt(request.getParameter("id"));
		Emp employee = employeeService.findEmployee(id);
		if (employee != null) {
			employeeService.deleteEmployee(employee);
			mav.addObject("msg", "delete Success...!");
			mav.setViewName("index.jsp");
			return mav;
		} else {
			mav.addObject("msg", "Id not Found..!");
			mav.setViewName("index.jsp");
			return mav;
		}

	}

}

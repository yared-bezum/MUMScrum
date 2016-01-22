package mum.edu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mum.edu.domain.Employee;
import mum.edu.service.EmployeeService;
 

@Controller
@RequestMapping({"/employees"})
public class EmployeeController {
	
	@Autowired
	private EmployeeService  employeeService;

	
	@RequestMapping
	public String listEmployees(Model model) {
		
		model.addAttribute("employees", employeeService.findAll());
		return "employee/list";
	}
	
  	@RequestMapping("/{employeeId}")
	public String getEmployeeById(@PathVariable("employeeId") int id,Model model) {
		Employee employee = employeeService.getEmployeeById(id);
		model.addAttribute("employee", employee);
		return "employee/detail";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
  	@PreAuthorize("hasRole('ROLE_ADMIN')")    // If global-method-security enabled in Dispatcher config
	public String getAddNewEmployeeForm(@ModelAttribute("newEmployee") Employee newEmployee) {
	   return "employee/addEmployee";
	}
	   
	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewEmployeeForm(@ModelAttribute("newEmployee") @Valid Employee employeeToBeAdded, BindingResult result, HttpServletRequest request) {
		if(result.hasErrors()) {
			return "employee/addEmployee";
	}

			 //  Error caught by ControllerAdvice IF no authorization...
		
			employeeService.saveFull(employeeToBeAdded);

	   	return "redirect:/employees";
 
	}
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String employeeUpdate(@RequestParam("id") int id, 
								Model model){
		model.addAttribute("updateEmployee", this.employeeService.getEmployeeById(id));
		return "employee/edit";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String employeeUpdate(@Valid @ModelAttribute("updateEmployee") Employee updateEmployee,
								BindingResult bindingResult){
		if(bindingResult.hasErrors())
			return "employee/edit";
		this.employeeService.updateEmployee(updateEmployee);
		return "redirect:/employees";
	}
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public  String employeeDelete(@PathVariable("id") int id){
		//javax.swing.JOptionPane.showMessageDialog(null, id);
		this.employeeService.deleteEmployeeById(id);
		return "employee/deleted";
	}
	
	
 
}
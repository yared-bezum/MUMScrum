package mum.edu.service;

import java.util.List;

import mum.edu.domain.Employee;
 
public interface EmployeeService {

	public void save(Employee employee);
	public List<Employee> findAll();
	public Employee getEmployeeById(int employeeId);
  	public void saveFull( Employee employee);
  	public void deleteEmployeeById(int id);
	public void updateEmployee(Employee updateEmployee);  		
}

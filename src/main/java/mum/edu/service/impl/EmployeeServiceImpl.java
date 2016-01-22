package mum.edu.service.impl;

import java.util.List;

import mum.edu.repository.EmployeeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import mum.edu.domain.Address;
import mum.edu.domain.Employee;
import mum.edu.service.CredentialsService;
import mum.edu.service.EmployeeService;

@Service
@Transactional 
public class EmployeeServiceImpl implements mum.edu.service.EmployeeService {
	
 	@Autowired
	private EmployeeRepository employeeRepository;

 	@Autowired
 	CredentialsService credentialsService;

  	@PreAuthorize("hasRole('ROLE_ADMIN')")
  	public void saveFull( Employee employee) {  		
  		credentialsService.save(employee.getCredential());
  		employeeRepository.save(employee);
	}
  	
  	@PreAuthorize("hasRole('ROLE_ADMIN')")
  	public void save( Employee employee) {  		
  		employeeRepository.save(employee);
 	}
  	
  	
	public List<Employee> findAll() {
		return (List< Employee>)employeeRepository.findAll();
	}
	@Override
	public Employee getEmployeeById(int id) {
		return employeeRepository.findOne(id);
	}

	//@Override
	//public Employee getEmployeeById(int id) {
		// TODO Auto-generated method stub
		//return null;
	//}
	@Override
	public void updateEmployee(Employee updateEmployee) {
		Employee currentEmployee = this.getEmployeeById(updateEmployee.getId());
		currentEmployee.setAddress(updateEmployee.getAddress());
		currentEmployee.setFirstName(updateEmployee.getFirstName());
		currentEmployee.setLastName(updateEmployee.getLastName());
		currentEmployee.setEmployeeNumber(updateEmployee.getEmployeeNumber());
		currentEmployee.setTitle(updateEmployee.getTitle());
		currentEmployee.setAge(updateEmployee.getAge());
		//Update address with the same id
		Address address = currentEmployee.getAddress();
		address.setStreet(updateEmployee.getAddress().getStreet());
		address.setCity(updateEmployee.getAddress().getCity());
		address.setState(updateEmployee.getAddress().getState());
		address.setStreet(updateEmployee.getAddress().getStreet());
		address.setZipCode(updateEmployee.getAddress().getZipCode());
		updateEmployee.setAddress(address);
		
		//Set existing credential
		//updateEmployee.setCredential(currentEmployee.getCredential());
		this.employeeRepository.save(updateEmployee);
	}
	@Override
	public void deleteEmployeeById(int id) {
		this.employeeRepository.delete(id);
	}
 

}
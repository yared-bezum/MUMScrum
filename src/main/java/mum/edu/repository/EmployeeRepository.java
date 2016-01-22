package mum.edu.repository;




import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import mum.edu.domain.Employee;

	@Repository
	public interface EmployeeRepository extends  CrudRepository<Employee,Integer> 
	{
		
	
		
		
 	}


package mum.edu.repository;


import mum.edu.domain.Credential;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CredentialsRepository extends  CrudRepository<Credential, String> 
	{
	
	}

	
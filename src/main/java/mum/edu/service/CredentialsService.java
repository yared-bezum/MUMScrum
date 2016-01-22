package mum.edu.service;

import java.util.List;

import mum.edu.domain.Credential;
 
public interface CredentialsService {

	public void save(Credential credentials);
	public List<Credential> findAll();
 }

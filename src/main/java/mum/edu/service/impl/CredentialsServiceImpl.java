package mum.edu.service.impl;

import java.util.List;

import mum.edu.domain.Credential;
import mum.edu.repository.CredentialsRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional 
public class CredentialsServiceImpl implements mum.edu.service.CredentialsService {
	
 	@Autowired
	private CredentialsRepository credentialsRepository;

  	@PreAuthorize("hasRole('ROLE_ADMIN')")
  	public void save(Credential credentials) {

  		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();   		
  		String encodedPassword = passwordEncoder.encode(credentials.getPassword());
  		credentials.setPassword(encodedPassword);
  		
  		credentialsRepository.save(credentials);
	}
	public List<Credential> findAll() {
		return (List<Credential	>)credentialsRepository.findAll();
	}

 
}

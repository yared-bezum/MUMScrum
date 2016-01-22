package mum.edu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import mum.edu.service.EmployeeService;
//import mum.edu.service.SprintService;
  
@Controller
public class HomeController {

	
  	@Autowired
 	private EmployeeService customerService;
  	
 // 	@Autowired
  //	SprintService sprintService;

	@RequestMapping({"/","/welcome"})
	public String welcome(Model model) {
		
		model.addAttribute("greeting", "Welcome!!");
		model.addAttribute("tagline", "The!!");
		
		return "welcome";
	}
 
}

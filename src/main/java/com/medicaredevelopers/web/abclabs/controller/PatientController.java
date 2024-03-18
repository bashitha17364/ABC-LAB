package com.medicaredevelopers.web.abclabs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medicaredevelopers.web.abclabs.model.Gender;
import com.medicaredevelopers.web.abclabs.model.Patient;
import com.medicaredevelopers.web.abclabs.service.GenderService;
import com.medicaredevelopers.web.abclabs.service.PatientService;

@Controller
@RequestMapping("/patient")
public class PatientController {
	@Autowired
	GenderService genderService;
	@Autowired
	PatientService patientService;

	@GetMapping("/register")
	public String loadPage(Model model) {

	List<Gender> genderData=genderService.getAllGenders();	
	
	model.addAttribute("genderData", genderData);
		
		return "patient_registration";
	}

}

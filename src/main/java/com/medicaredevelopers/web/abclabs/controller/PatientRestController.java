package com.medicaredevelopers.web.abclabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medicaredevelopers.web.abclabs.dto.PatientDTO;
import com.medicaredevelopers.web.abclabs.model.Patient;
import com.medicaredevelopers.web.abclabs.service.PatientService;

@RestController
@RequestMapping("/patient")
public class PatientRestController {
	@Autowired
	private PatientService patientService;	
	
	@GetMapping("/{id}")
	public PatientDTO getPatientById(@PathVariable("id") long id) {
		return patientService.getPatientById(id);
	}
	
	@PostMapping("/register")
	public PatientDTO registerPatient(@RequestBody Patient patient) {
		return patientService.savePatient(patient);
	}
}

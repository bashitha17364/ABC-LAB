package com.medicaredevelopers.web.abclabs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.model.Doctor;
import com.medicaredevelopers.web.abclabs.repository.DoctorRepo;

@Service
public class DoctorService {
	@Autowired
	DoctorRepo repo;

	public List<Doctor> getAllDoctors(){
		return repo.findAll();
	}
}

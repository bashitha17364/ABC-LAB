package com.medicaredevelopers.web.abclabs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.model.Technician;
import com.medicaredevelopers.web.abclabs.repository.TechnicianRepo;

@Service
public class TechnicianService {
	@Autowired
	TechnicianRepo repo;

	public List<Technician> getAllTechnicians(){
		return repo.findAll();
	}
}

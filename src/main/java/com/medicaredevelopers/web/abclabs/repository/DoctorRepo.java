package com.medicaredevelopers.web.abclabs.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.medicaredevelopers.web.abclabs.model.Doctor;

public interface DoctorRepo extends JpaRepository<Doctor, Integer>{

}

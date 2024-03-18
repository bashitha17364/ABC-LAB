package com.medicaredevelopers.web.abclabs.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.medicaredevelopers.web.abclabs.model.Appointment;

public interface AppointmentRepo extends JpaRepository<Appointment, Integer>{

}

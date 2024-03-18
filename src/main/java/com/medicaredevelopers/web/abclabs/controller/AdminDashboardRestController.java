package com.medicaredevelopers.web.abclabs.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medicaredevelopers.web.abclabs.dto.AllAppointmentsDTO;
import com.medicaredevelopers.web.abclabs.service.AppointmentService;

@RestController
@RequestMapping("/api/admin")
public class AdminDashboardRestController {
	@Autowired
	AppointmentService appointmentService;

	@GetMapping("/appointments")
	public ArrayList<AllAppointmentsDTO> appointment(){
		return appointmentService.getAllAppointments();
	}
}

package com.medicaredevelopers.web.abclabs.controller;

import java.sql.Time;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medicaredevelopers.web.abclabs.dto.AppointmentDTO;
import com.medicaredevelopers.web.abclabs.model.Appointment;
import com.medicaredevelopers.web.abclabs.service.AppointmentService;

@RestController
@RequestMapping("/appointment")
public class AppointmentRestController {
	@Autowired
	AppointmentService service;

	@PostMapping("")
	public AppointmentDTO addAppointment(@RequestBody Appointment appointment) {
		return service.addAppointment(appointment);
	}

	@GetMapping("/{branch}/{date}")
	public Time getMaxAppoinmentTimeForBranch(@PathVariable("branch") int branch, @PathVariable("date") String date) {

		return service.getMaxAppoinmentTimeForBranch(branch, date );

	}

}

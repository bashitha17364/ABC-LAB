package com.medicaredevelopers.web.abclabs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.medicaredevelopers.web.abclabs.model.Branch;
import com.medicaredevelopers.web.abclabs.model.Doctor;
import com.medicaredevelopers.web.abclabs.model.Patient;
import com.medicaredevelopers.web.abclabs.model.Technician;
import com.medicaredevelopers.web.abclabs.service.AppointmentService;
import com.medicaredevelopers.web.abclabs.service.BranchService;
import com.medicaredevelopers.web.abclabs.service.DoctorService;
import com.medicaredevelopers.web.abclabs.service.PatientService;
import com.medicaredevelopers.web.abclabs.service.TechnicianService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminDashboardController {
	@Autowired
	private AppointmentService appointmentService;
	@Autowired
	PatientService patientService;
	@Autowired
	BranchService branchService;
	@Autowired
	DoctorService doctorService;
	@Autowired
	TechnicianService technicianService;

	@GetMapping("/dashboard")
	public String dashboard(Model model, HttpSession session) {
		Object data = appointmentService.getAllAppointments();

		model.addAttribute("appointments", data);

		String username = (String) session.getAttribute("username");

		if (username != null) {
			return "dashboard";
		} else {
			return "login";
		}

	}

	@GetMapping("/patients")
	public String patients(Model model, HttpSession session) {

		String username = (String) session.getAttribute("username");

		if (username != null) {
			List<Patient> patients = patientService.getAllPatients();

			model.addAttribute("patients", patients);

			return "patients";
		} else {
			return "login";
		}
	}

	@GetMapping("/branches")
	public String branches(Model model, HttpSession session) {
		String username = (String) session.getAttribute("username");

		if (username != null) {
			List<Branch> branches = branchService.getAllBranches();

			model.addAttribute("branches", branches);

			return "branches";
		} else {
			return "login";
		}
	}

	@GetMapping("/doctors")
	public String doctors(Model model, HttpSession session) {
		String username = (String) session.getAttribute("username");

		if (username != null) {
			List<Doctor> doctors = doctorService.getAllDoctors();

			model.addAttribute("doctors", doctors);

			return "doctors";
		} else {
			return "login";
		}
	}

	@GetMapping("/technicians")
	public String technicians(Model model, HttpSession session) {
		String username = (String) session.getAttribute("username");

		if (username != null) {
			List<Technician> technicians = technicianService.getAllTechnicians();

			model.addAttribute("technicians", technicians);

			return "technicians";
		} else {
			return "login";
		}
	}

}

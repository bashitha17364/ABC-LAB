package com.medicaredevelopers.web.abclabs.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import jakarta.servlet.http.HttpSession;

@RestController
public class AdminSignoutRestController {

	@GetMapping("/admin/signout")
	public String signout(HttpSession session) {
		// Check if the session exists
		if (session != null) {
			// Invalidate the session
			session.invalidate();
			System.out.println("Session invalidated");

			return "success";
		} else {
			return "failed";
		}
	}
}

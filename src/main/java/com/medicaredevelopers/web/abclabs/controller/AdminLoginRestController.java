package com.medicaredevelopers.web.abclabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medicaredevelopers.web.abclabs.model.Admin;
import com.medicaredevelopers.web.abclabs.service.AdminLoginService;

import jakarta.servlet.http.HttpSession;

@RestController
@RequestMapping("/admin/login")
public class AdminLoginRestController {
	@Autowired
	AdminLoginService adminLoginService;
	
@PostMapping("")
public String login(@RequestBody Admin admin,HttpSession session) {
	if(adminLoginService.authenticate(admin.getUsername(), admin.getPassword())) {

        // Set a session attribute
        session.setAttribute("username", admin.getUsername());
		
        System.out.println("Done");
        
		return "success";
	}else {
        System.out.println("Failed");

		return "Invalid username or password";
	}
}
	
}

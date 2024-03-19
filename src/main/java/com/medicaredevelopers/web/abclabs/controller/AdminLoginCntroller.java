package com.medicaredevelopers.web.abclabs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
// admin login 
public class AdminLoginCntroller {
	@GetMapping("/admin/login")
	public String loginPage() {
		return "login";
	}
}

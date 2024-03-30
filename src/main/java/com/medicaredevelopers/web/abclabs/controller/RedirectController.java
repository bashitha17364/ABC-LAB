package com.medicaredevelopers.web.abclabs.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class RedirectController {

    @GetMapping("/report_redirect")
    public String redirectToTargetPage(@RequestParam("patientId") String patientId, RedirectAttributes attributes) {
        attributes.addAttribute("patientId", patientId); 
        return "redirect:/report_target"; 
    }
}


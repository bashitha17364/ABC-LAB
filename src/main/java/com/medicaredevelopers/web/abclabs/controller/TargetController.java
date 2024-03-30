package com.medicaredevelopers.web.abclabs.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TargetController {

    @GetMapping("/report_target")
    public String showTargetPage(Model model) {
        return "report_target";
    }
}

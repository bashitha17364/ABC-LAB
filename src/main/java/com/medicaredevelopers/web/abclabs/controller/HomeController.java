package com.medicaredevelopers.web.abclabs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.medicaredevelopers.web.abclabs.model.Branch;
import com.medicaredevelopers.web.abclabs.model.TestType;
import com.medicaredevelopers.web.abclabs.service.BranchService;
import com.medicaredevelopers.web.abclabs.service.TestTypeService;

@Controller
public class HomeController {
	@Autowired
	TestTypeService testTypeService;
	@Autowired
	BranchService branchService;

    @GetMapping("/")
    public String home(Model model) {
    	List<TestType> testTypes = testTypeService.getAllTestTypes();
    	
    	List<Branch> branches = branchService.getAllBranches();
    	
    	model.addAttribute("testTypes", testTypes);
    	model.addAttribute("branches", branches);
    	
        return "index";
    }
}


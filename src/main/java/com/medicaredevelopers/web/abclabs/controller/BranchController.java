package com.medicaredevelopers.web.abclabs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.medicaredevelopers.web.abclabs.dto.BranchDTO;
import com.medicaredevelopers.web.abclabs.model.Branch;
import com.medicaredevelopers.web.abclabs.service.BranchService;

@RestController
@RequestMapping("/branch") // Mapping for the '/branch' endpoint
public class BranchController {

    @Autowired
    private BranchService branchService;

    @PostMapping // Handles POST requests to '/branch'
    public ResponseEntity<String> createBranch(@RequestBody BranchDTO branchDTO) {
        // Convert BranchDTO to Branch entity
        Branch branch = new Branch();
        branch.setCity(branchDTO.getCity());
        branch.setAddress(branchDTO.getAddress());
        branch.setTelephone(branchDTO.getTelephone());

        // Save branch
        branchService.saveBranch(branch);

        // Return a success response
        return ResponseEntity.status(HttpStatus.CREATED).body("1");
    }
}

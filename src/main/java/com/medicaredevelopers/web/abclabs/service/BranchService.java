package com.medicaredevelopers.web.abclabs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.model.Branch;
import com.medicaredevelopers.web.abclabs.repository.BranchRepo;

//import jakarta.persistence.EntityManager;
//import jakarta.persistence.Query;

@Service
public class BranchService {
	@Autowired
	private BranchRepo repo;

//	@Autowired
//	private EntityManager entityManager;

	public List<Branch> getAllBranches() {
//		String hql = "SELECT b FROM Branch b";
//		Query query = entityManager.createQuery(hql, Branch.class);		
//		
//		return query.getResultList();
		
		return repo.findAll();
	}
	
}

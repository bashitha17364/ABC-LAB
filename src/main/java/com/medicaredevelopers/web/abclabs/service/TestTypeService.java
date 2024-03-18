package com.medicaredevelopers.web.abclabs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.model.TestType;
import com.medicaredevelopers.web.abclabs.repository.TestTypeRepo;

//import jakarta.persistence.EntityManager;
//import jakarta.persistence.Query;

@Service
public class TestTypeService {
	@Autowired
	private TestTypeRepo repo;

//	@Autowired
//	private EntityManager entityManager;

	public List<TestType> getAllTestTypes() {
//		String hql = "SELECT t FROM TestType t";
//		Query query = entityManager.createQuery(hql, TestType.class);		
//		
//		return query.getResultList();
		
		return repo.findAll();
	}
}

package com.medicaredevelopers.web.abclabs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.model.Gender;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;

@Service
public class GenderService {
	@Autowired
	private EntityManager entityManager;

	public List<Gender> getAllGenders() {
		String hql = "SELECT g FROM Gender g";
		Query query = entityManager.createQuery(hql, Gender.class);		
		
		return query.getResultList();
	}
}

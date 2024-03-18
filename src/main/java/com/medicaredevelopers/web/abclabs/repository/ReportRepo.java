package com.medicaredevelopers.web.abclabs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.medicaredevelopers.web.abclabs.model.Report;

@Repository
public interface ReportRepo extends JpaRepository<Report, Integer>{

}

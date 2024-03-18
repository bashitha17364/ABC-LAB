package com.medicaredevelopers.web.abclabs.dto;

import java.sql.Date;
import java.sql.Time;

import com.medicaredevelopers.web.abclabs.model.Appointment;

public class AppointmentDTO {

	private int id;
	private Date date;
	private Time time;
	private int testTypeId;
	private int reportId;
	private int branchId;
	private int patientId;
	private String message;

	public AppointmentDTO() {
		super();
	}

	public AppointmentDTO(int id, Date date, Time time, int testTypeId, int reportId, int branchId, int patientId,
			String message) {
		super();
		this.id = id;
		this.date = date;
		this.time = time;
		this.testTypeId = testTypeId;
		this.reportId = reportId;
		this.branchId = branchId;
		this.patientId = patientId;
		this.message = message;
	}

	public AppointmentDTO(Appointment appointment) {
		this.id = appointment.getId();
		this.date = appointment.getDate();
		this.time = appointment.getTime();
		this.testTypeId = appointment.getTestTypeId();
		this.reportId = appointment.getReportId();
		this.branchId = appointment.getBranchId();
		this.patientId = appointment.getPatientId();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public int getTestTypeId() {
		return testTypeId;
	}

	public void setTestTypeId(int testTypeId) {
		this.testTypeId = testTypeId;
	}

	public int getReportId() {
		return reportId;
	}

	public void setReportId(int reportId) {
		this.reportId = reportId;
	}

	public int getBranchId() {
		return branchId;
	}

	public void setBranchId(int branchId) {
		this.branchId = branchId;
	}

	public int getPatientId() {
		return patientId;
	}

	public void setPatientId(int patientId) {
		this.patientId = patientId;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}

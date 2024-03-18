package com.medicaredevelopers.web.abclabs.dto;

import java.sql.Date;

import com.medicaredevelopers.web.abclabs.model.Patient;

public class PatientDTO {
	private long id;
	private String firstName;
	private String lastName;
	private Date dob; 
	private String mobile;
	private String email;
	private String addressLine1;
	private String addressLine2;
	private int genderId;
	
	private String message;

	public PatientDTO() {
		
	}
	
	public PatientDTO(Patient patient) {
		this.id = patient.getId();
		this.firstName = patient.getFirstName();
		this.lastName = patient.getLastName();
		this.dob=patient.getDob();
		this.mobile = patient.getMobile();
		this.email = patient.getEmail();
		this.addressLine1 = patient.getAddressLine1();
		this.addressLine2 = patient.getAddressLine2();
		this.genderId = patient.getGenderId();
	}		
	
	public PatientDTO(long id, String firstName, String lastName, Date dob, String mobile, String email, String addressLine1,
			String addressLine2, int genderId,String message) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob=dob;
		this.mobile = mobile;
		this.email = email;
		this.addressLine1 = addressLine1;
		this.addressLine2 = addressLine2;
		this.genderId = genderId;
		this.message = message;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	
	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getAddressLine2() {
		return addressLine2;
	}
	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}
	public int getGenderId() {
		return genderId;
	}
	public void setGenderId(int genderId) {
		this.genderId = genderId;
	}	
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}	
	
	
}



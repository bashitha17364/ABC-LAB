package com.medicaredevelopers.web.abclabs.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.dto.PatientDTO;
import com.medicaredevelopers.web.abclabs.model.Patient;
import com.medicaredevelopers.web.abclabs.repository.PatientRepo;
import com.medicaredevelopers.web.abclabs.util.EmailTemplate;
import com.medicaredevelopers.web.abclabs.util.EmailTemplateFactory;
import com.medicaredevelopers.web.abclabs.util.WelcomeEmailTemplateFactory;

import jakarta.mail.MessagingException;

@Service
public class PatientService {
	@Autowired
	private PatientRepo patientRepo;
	
	@Autowired
	private EmailService emailService;
	
	public PatientDTO savePatient(Patient patient) {	
		PatientDTO patientDTO=new PatientDTO(patientRepo.save(patient));
		
		int gender=patientDTO.getGenderId();
		String title=null;
		if(gender==1) {
			title="Mr. ";
		}else if(gender==2){
			title="Ms. ";
		}
		String name=title+patientDTO.getFirstName()+" "+patientDTO.getLastName();
		String id=String.valueOf(patientDTO.getId());
		
		//send confirmation email
		EmailTemplateFactory welcomeFactory = new WelcomeEmailTemplateFactory();
        EmailTemplate welcomeTemplate = welcomeFactory.createEmailTemplate();
        
        HashMap<String, String> info=new HashMap<>();
        info.put("id", id);
        
        String welcomeEmail = welcomeTemplate.generateTemplate(name, info);
        
        String email=patientDTO.getEmail();

		try {
            emailService.sendEmail(email, "Patient ID - ABC Laboratories", welcomeEmail);
            patientDTO.setMessage("Your patient ID sent to "+email);
            System.out.println("Email Sent");
        } catch (MessagingException e) {
             patientDTO.setMessage("Failed to send email: " + e.getMessage());
             System.out.println(e.getMessage());

        }
		
		return patientDTO;
	}
	
	
	public PatientDTO getPatientById(long id) {
		Patient patient= patientRepo.getById(id);		
		
		return new PatientDTO(patient);					
	}
	
	public List<Patient> getAllPatients(){
		return patientRepo.findAll();
	}
}

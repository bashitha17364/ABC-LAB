package com.medicaredevelopers.web.abclabs.service;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.medicaredevelopers.web.abclabs.dto.AllAppointmentsDTO;
import com.medicaredevelopers.web.abclabs.dto.AppointmentDTO;
import com.medicaredevelopers.web.abclabs.dto.PatientDTO;
import com.medicaredevelopers.web.abclabs.model.Appointment;
import com.medicaredevelopers.web.abclabs.repository.AppointmentRepo;
import com.medicaredevelopers.web.abclabs.util.AppointmentConfirmationEmailTemplateFactory;
import com.medicaredevelopers.web.abclabs.util.EmailTemplate;
import com.medicaredevelopers.web.abclabs.util.EmailTemplateFactory;
import com.medicaredevelopers.web.abclabs.util.TimeCalculator;
import com.medicaredevelopers.web.abclabs.util.WelcomeEmailTemplateFactory;

import jakarta.mail.MessagingException;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import jakarta.persistence.TypedQuery;

@Service
public class AppointmentService {
	@Autowired
	private AppointmentRepo repo;
	@Autowired
	private PatientService patientService;
	@Autowired
	private EmailService emailService;

	@Autowired
	private EntityManager entityManager;

	public AppointmentDTO addAppointment(Appointment appointment) {

		Time appointmentTime = null;

		try {

			String selectedDate = appointment.getDate().toString();

			Time time = getMaxAppoinmentTimeForBranch(appointment.getBranchId(), selectedDate);

			System.out.println(time);

			TimeCalculator timeCalculator = TimeCalculator.getInstance();
			appointmentTime = timeCalculator.addMinutesToTime(time, 10);

		} catch (NullPointerException e) {
			appointmentTime = Time.valueOf("09:00:00");
		}

		System.out.println(appointmentTime);

		appointment.setTime(appointmentTime);

		AppointmentDTO appointmentDTO = new AppointmentDTO(repo.save(appointment));

		PatientDTO patientData = patientService.getPatientById(appointmentDTO.getPatientId());

		int gender = patientData.getGenderId();
		String title = null;
		if (gender == 1) {
			title = "Mr. ";
		} else if (gender == 2) {
			title = "Ms. ";
		}
		String name = title + patientData.getFirstName() + " " + patientData.getLastName();
		String id = String.valueOf(appointmentDTO.getId());

		// send confirmation email
		EmailTemplateFactory emailTemplateFactory = new AppointmentConfirmationEmailTemplateFactory();
		EmailTemplate appointmentConfirmationTemplate = emailTemplateFactory.createEmailTemplate();

		HashMap<String, String> info = new HashMap<>();
		info.put("id", id);
		info.put("date", String.valueOf(appointmentDTO.getDate()));
		info.put("time", String.valueOf(appointmentDTO.getTime()));
		info.put("type", String.valueOf(appointmentDTO.getTestTypeId()));
		info.put("branch", String.valueOf(appointmentDTO.getBranchId()));

		String confirmationEmail = appointmentConfirmationTemplate.generateTemplate(name, info);

		String email = patientData.getEmail();

		try {
			emailService.sendEmail(email, "Your Appointment Reserved - ABC Laboratories", confirmationEmail);
			appointmentDTO.setMessage("Your appointment deatils sent to " + email);
			System.out.println("Email Sent");
		} catch (MessagingException e) {
			appointmentDTO.setMessage("Failed to send email: " + e.getMessage());
			System.out.println(e.getMessage());

		}

		return appointmentDTO;
	}

	public Time getMaxAppoinmentTimeForBranch(int branch, String date) {

		Date givenDate = Date.valueOf(date);

		TypedQuery<Time> query = entityManager.createQuery(
				"SELECT MAX(a.time) FROM Appointment a WHERE a.date = :givenDate AND a.branchId = :givenBranchId",
				Time.class);
		query.setParameter("givenBranchId", branch);
		query.setParameter("givenDate", givenDate);
		return (query.getSingleResult());

	}

	public ArrayList<AllAppointmentsDTO> getAllAppointments() {

		String sqlQuery = "SELECT a.`id`,b.`city`,p.id AS `patient_id`,p.`first_name`,p.`last_name`,t.`name` AS `type`,a.`report_id`,a.`date`,a.`time`   FROM `appointment` a INNER JOIN `test_type` t ON a.`test_type_id`=t.`id` INNER JOIN `branch` b ON a.`branch_id`=b.`id` INNER JOIN `patient` p ON a.`patient_id`=p.`id`";
		Query query = entityManager.createNativeQuery(sqlQuery);
		List<Object[]> resultList = query.getResultList();
		
		ArrayList<AllAppointmentsDTO> allAppointmentsDTOs=new ArrayList<>();

		for (Object[] result : resultList) {
			int id = (int) result[0];
			String city = (String) result[1];
			int patientId = Integer.valueOf(String.valueOf(result[2]));
			String firstName = (String) result[3];
			String lastName = (String) result[4];
			String type = (String) result[5];
			int reportId = (int) result[6];
			String date = result[7].toString(); // Assuming date is a Date object
			String time = result[8].toString(); // Assuming time is a Time object

			AllAppointmentsDTO appointmentsDTO=new AllAppointmentsDTO();
			appointmentsDTO.setId(id);
			appointmentsDTO.setCity(city);
			appointmentsDTO.setPatientId(patientId);
			appointmentsDTO.setFirstName(firstName);
			appointmentsDTO.setLastName(lastName);
			appointmentsDTO.setType(type);
			appointmentsDTO.setReportId(reportId);
			appointmentsDTO.setDate(date);
			appointmentsDTO.setTime(time);
			
			allAppointmentsDTOs.add(appointmentsDTO);

		}
		
		return allAppointmentsDTOs;

	}
}

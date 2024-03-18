<%@page import="java.util.ArrayList" %>
	<%@page import="com.medicaredevelopers.web.abclabs.model.Gender" %>
		<%@page import="java.util.List" %>
			<%@page import="com.medicaredevelopers.web.abclabs.service.GenderService" %>
				<%@page import="jakarta.persistence.Query" %>
					<%@page import="jakarta.persistence.EntityManager" %>
						<%@page import="jakarta.persistence.PersistenceContext" %>
							<%@page import="java.sql.ResultSet" %>

								<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
									<!DOCTYPE html>
									<html>

									<head>
										<meta charset="UTF-8">
										<meta name="viewport"
											content="width=device-width, initial-scale=1, shrink-to-fit=no">
										<title>Patient Registration - ABC Laboratories</title>

										<!-- Bulma CSS -->
										<link rel="stylesheet"
											href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">

									</head>

									<body>

										<!-- Navigation Bar -->
										<nav class="navbar is-primary" role="navigation" aria-label="main navigation">
											<div class="navbar-brand">
												<a class="navbar-item" href="#">ABC Laboratories</a> <a role="button"
													class="navbar-burger" aria-label="menu" aria-expanded="false"
													data-target="navbarNav"> <span aria-hidden="true"></span> <span
														aria-hidden="true"></span> <span aria-hidden="true"></span>
												</a>
											</div>
											<div id="navbarNav" class="navbar-menu">
												<div class="navbar-end">
													<a class="navbar-item" href="/">Home</a>
												</div>
											</div>
										</nav>

										<div class="column card m-5 has-background-light">

											<!-- Patient Registration Form -->
											<div class="container mt-5">
												<h2 class="title is-2 has-text-centered mb-4">Patient
													Registration</h2>
												<div class="columns">
													<!-- First Name -->
													<div class="column is-half">
														<label for="firstName" class="label">First Name</label>
														<div class="control">
															<input type="text" class="input" id="firstName"
																name="firstName" maxlength="45" required>
														</div>
													</div>

													<!-- Last Name -->
													<div class="column is-half">
														<label for="lastName" class="label">Last Name</label>
														<div class="control">
															<input type="text" class="input" id="lastName"
																name="lastName" maxlength="45" required>
														</div>
													</div>
												</div>

												<div class="columns">
													<!-- DOB -->
													<div class="column is-half">
														<label for="dob" class="label">Date of Birth</label>
														<div class="control">
															<input type="date" class="input" id="dob" name="dob" required>
														</div>
													</div>
													
													<!-- Gender -->
													<div class="column is-half">
														<label for="gender" class="label">Gender</label>
														<div class="control">
															<div class="select is-fullwidth">

																<select class="input" id="gender" name="gender"
																	required>
																	<option value="0" selected disabled>Select</option>

																	<% // Access the list of genders from the model
																		List<Gender> genders = (List<Gender>)
																			request.getAttribute("genderData");
																			for (Gender gender : genders) {
																			%>
																			<option value="<%=gender.getId()%>">
																				<%=gender.getGender()%>
																			</option>
																			<% } %>


																</select>
															</div>
														</div>
													</div>
												</div>

												<div class="columns">
													<!-- Mobile -->
													<div class="column is-half">
														<label for="mobile" class="label">Mobile</label>
														<div class="control">
															<input type="tel" class="input" id="mobile" name="mobile"
																maxlength="10" pattern="[0-9]{10}"
																title="Please enter a valid 10-digit mobile number"
																required>
														</div>
													</div>

													<!-- Email -->
													<div class="column is-half">
														<label for="email" class="label">Email</label>
														<div class="control">
															<input type="email" class="input" id="email" name="email"
																maxlength="45" required>
														</div>
													</div>
												</div>

												<div class="columns">
													<!-- Address Line 1 -->
													<div class="column is-half">
														<label for="addressLine1" class="label">Address Line 1</label>
														<div class="control">
															<input type="text" class="input" id="addressLine1"
																name="addressLine1" maxlength="45" required>
														</div>
													</div>

													<!-- Address Line 2 -->
													<div class="column is-half">
														<label for="addressLine2" class="label">Address Line 2</label>
														<div class="control">
															<input type="text" class="input" id="addressLine2"
																name="addressLine2" maxlength="45" required>
														</div>
													</div>
												</div>

												<!-- Submit Button -->
												<button onclick="register()" class="button is-primary">Register</button>
											</div>

										</div>

										<!-- Bulma JS -->
										<script defer
											src="https://cdn.jsdelivr.net/npm/bulma@0.9.2/js/all.min.js"></script>
										<script type="text/javascript">
											<!-- Add this script block at the end of your HTML body -->
											function register() {
												// Get form data
												const firstName = document.getElementById('firstName').value;
												const lastName = document.getElementById('lastName').value;
												const dob = document.getElementById('dob').value;
												const gender = document.getElementById('gender').value;
												const mobile = document.getElementById('mobile').value;
												const email = document.getElementById('email').value;
												const addressLine1 = document.getElementById('addressLine1').value;
												const addressLine2 = document.getElementById('addressLine2').value;

												const selectedDate=new Date(dob);												

												if (firstName == "") {
													alert("Please enter your first name.")
												} else if (lastName == "") {
													alert("Please enter your last name.")
												} else if (dob == "") {
													alert("Please enter you Date of Birth.")
												} else if (selectedDate>new Date()) {
													alert("Date of birth can not be a date in the future.")
												} else if (gender == 0) {
													alert("Please select your gender.")
												} else if (mobile == "") {
													alert("Please enter you mobile.")
												}else if(!/^[0]{1}[7]{1}[01245678]{1}[0-9]{7}$/.test(mobile)){
													alert("Please enter a valid Sri Lankan mobile number.")
												} else if (email == "") {
													alert("Please enter your email address.")
												}else if (!/^((?!\.)[\w\-_.]*[^.])(@\w+)(\.\w+(\.\w+)?[^.\W])$/.test(email)) {
													alert("Please enter a valid email address.")
												}else if (addressLine1 == "") {
													alert("Please enter your address line 1.")
												}else if (addressLine2 == "") {
													alert("Please enter your address line 2.")
												} else {

													// Assign values to variables
													const formData = {
														firstName: firstName,
														lastName: lastName,
														mobile: mobile,
														dob: dob,
														genderId: gender,
														email: email,
														addressLine1: addressLine1,
														addressLine2: addressLine2
													};

													// Send AJAX request
													fetch('/patient/register', {
														method: 'POST',
														headers: {
															'Content-Type': 'application/json',
															
														},
														body: JSON.stringify(formData)
													})
														.then(response => response.json())
														.then(data => {
															alert("Sucessfully Registered. Your Patient ID is "+data.id+". "+data.message)
															console.log(data);
														})
														.catch(error => {
															
															console.error('Error:', error);
														});

												}


											}
										</script>

									</body>

									</html>
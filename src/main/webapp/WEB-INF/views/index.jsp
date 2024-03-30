<%@page import="com.medicaredevelopers.web.abclabs.model.TestType"%>
<%@page import="com.medicaredevelopers.web.abclabs.model.Branch"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>ABC Laboratories</title>

    <!-- Bulma CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" />
    <link rel="stylesheet" href="/css/modals.css" />

    <!-- AOS Library -->
    <script src="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.js"></script>

    <style type="text/css">
        .make-appointment-card {
            background-image: url("/images/home.jpg");
            height: 500px;
            width: 100vw;
            background-size: cover;
        }

        .text-appointment-today {
            padding-top: 360px;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<nav class="navbar is-primary" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
        <a class="navbar-item" href="#">
            ABC Laboratories
        </a>

        <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
            <span aria-hidden="true"></span>
        </a>
    </div>

    <div id="navbarBasicExample" class="navbar-menu">
        <div class="navbar-end">
            <a href="#home" class="navbar-item">Home</a>
            <a href="#services" class="navbar-item">Services</a>
            <a href="#branches" class="navbar-item">Branches</a>
            <a href="#contact" class="navbar-item">Contact</a>
        </div>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero is-primary is-bold" data-aos="fade-up">
    <div class="hero-body">
        <div class="container">
            <h1 class="title">
                Welcome to ABC Laboratories
            </h1>
            <p class="subtitle">
                We care about your health. Schedule your health test today.
            </p>
        </div>
    </div>
    <!-- Health Test -->
    <div class="container has-text-centered make-appointment-card" data-aos="fade-up">
        <p class="subtitle is-4 text-appointment-today">Make an appointment for your health test today.</p>
        <!-- <a href="appointment.jsp" class="button is-primary is-large">Make Appointment Today</a> -->
        <a class="button is-primary is-large" data-p-open-modal="#appointment-modal">Make Appointment Today</a>
        <a class="button is-primary is-large" data-p-open-modal="#report-modal">View Report</a>        
    </div>
</section>

<!-- The button that toggles the modal -->



<!-- Modal container, all the modals you use should be inside of it. -->

<div class="p-modal-background">

	<!-- Your modals will be here -->
	<div class="p-modal" id="appointment-modal">
		
		<!-- Make Appointment Form -->
<div class="container mt-5 p-3">
    <h2 class="title is-2 has-text-centered mb-4">Make Appointment</h2>
        <div class="columns">
            <!-- Patient ID -->
            <div class="column is-half">
                <label for="patientId" class="label">Patient ID</label>
                <div class="control">
                    <input type="text" class="input" id="patientId" name="patientId" maxlength="10" pattern="\d+" title="Please enter a valid integer value" required>
                </div>
                <p class="help is-muted">If you haven't patient ID, please <a href="/patient/register">register</a> first.</p>
            </div>

            <!-- Test Type -->
            <div class="column is-half">
                <label for="testType" class="label">Test Type</label>
                <div class="control">
                    <div class="select is-fullwidth">
                        <select class="input" id="testType" name="testType" required>
                            <option value="0" selected disabled>Select</option>
                            <% // Access the list of branches from the model
																		List<TestType> testTypes = (List<TestType>) request.getAttribute("testTypes");
																			
																			for (TestType testType : testTypes) {
																			%>
																			<option value="<%=testType.getId()%>"><%=testType.getName()%></option>																				
																			<% } %>
                        </select>
                    </div>
                </div>
            </div>
        </div>

        <div class="columns">
            <!-- Appointment Date -->
            <div class="column is-half">
                <label for="appointmentDate" class="label">Appointment Date</label>
                <div class="control">
                    <input type="date" class="input" id="appointmentDate" name="appointmentDate" required>
                </div>
            </div>

            <!-- Nearest Branch -->
            <div class="column is-half">
                <label for="nearestBranch" class="label">Nearest Branch</label>
                <div class="control">
                    <div class="select is-fullwidth">
                        <select class="input" id="nearestBranch" name="nearestBranch" required>
                       <option value="0" selected disabled>Select</option>                                                  
                            
                            <% // Access the list of branches from the model
																		List<Branch> branches = (List<Branch>) request.getAttribute("branches");
																			
																			for (Branch branch : branches) {
																			%>
																			<option value="<%=branch.getId()%>"><%=branch.getCity()%></option>																				
																			<% } %>
                        </select>
                    </div>
                </div>
            </div>
        </div>

</div>
		
		
		<div class="p-modal-button-container">
			<a href="#" onclick="makeAppointment()">Make Appointment</a>
			<a href="#" data-p-cancel>Cancel</a>
		</div>
	</div>

    <!-- Your modals will be here -->
    <div class="p-modal" id="report-modal">
        <div class="container mt-5 p-3">
            <h2 class="title is-2 has-text-centered mb-4">View Report</h2>
                <div class="columns">
                    <!-- Patient ID -->
                    <div class="column is-half">
                        <label for="patientId" class="label">Patient ID</label>
                        <div class="control">
                            <input type="text" class="input" id="patientId_report" name="patientId_report" maxlength="10" pattern="\d+" title="Please enter a valid integer value" required>
                        </div>
                    </div>
                </div>
        </div>
		<div class="p-modal-button-container">
			<a href="#" onclick="viewReport()">View Report</a>
			<a href="#" data-p-cancel>Cancel</a>
		</div>
	</div>
</div>
<!-- Services Section -->
<section id="services" class="section" data-aos="fade-up">
    <div class="container">
        <h2 class="title is-2 has-text-centered mb-4">Our Services</h2>
        <div class="columns">
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <p class="title is-4">Blood Test</p>
                        <p class="content">Comprehensive blood tests to assess your overall health.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <p class="title is-4">Urinalysis</p>
                        <p class="content">Analysis of urine samples for various health indicators.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <p class="title is-4">Cholesterol Test</p>
                        <p class="content">Measurement of cholesterol levels for heart health assessment.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Why Choose ABC Laboratories Section -->
<section class="section has-background-light" data-aos="fade-up">
    <div class="container">
        <h2 class="title is-2 has-text-centered mb-4">Why Choose ABC Laboratories?</h2>
        <div class="columns">
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <p class="subtitle is-5">Trusted Reputation</p>
                        <p>With years of experience in the healthcare industry, ABC Laboratories has earned a reputation for reliability and trustworthiness. We are a preferred choice for individuals seeking quality laboratory services.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <p class="subtitle is-5">Advanced Technology</p>
                        <p>We invest in cutting-edge technology to ensure our laboratory processes meet the highest industry standards. Our commitment to innovation allows us to stay at the forefront of diagnostic advancements.</p>
                    </div>
                </div>
            </div>
            <div class="column">
                <div class="card">
                    <div class="card-content">
                        <p class="subtitle is-5">Accessibility</p>
                        <p>ABC Laboratories has multiple branches conveniently located to serve communities across Sri Lanka. We aim to make healthcare accessible and convenient for everyone.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Branches Section -->
<section id="branches" class="section" data-aos="fade-up">
    <div class="container">
        <h2 class="title is-2 has-text-centered mb-4">Our Branches</h2>
        <div class="columns">
            <div class="column">
                <p><strong>Colombo Branch</strong></p>
                <p>Address: 123 Main Street, Colombo</p>
            </div>
            <div class="column">
                <p><strong>Kandy Branch</strong></p>
                <p>Address: 456 Central Road, Kandy</p>
            </div>
        </div>
        <div class="columns">
            <div class="column">
                <p><strong>Galle Branch</strong></p>
                <p>Address: 789 Seaside Avenue, Galle</p>
            </div>
            <div class="column">
                <p><strong>Jaffna Branch</strong></p>
                <p>Address: 101 Northern Street, Jaffna</p>
            </div>
        </div>
    </div>
</section>

<!-- Contact Section -->
<section id="contact" class="section has-background-light" data-aos="fade-up">
    <div class="container">
        <h2 class="title is-2 has-text-centered mb-4">Contact Us</h2>
        <div class="columns">
            <div class="column">
                <p>For inquiries or appointments, please contact us:</p>
                <ul>
                    <li>Email: info@abclaboratories.lk</li>
                    <li>Phone: +94 (0)11 123 4567</li>
                    <li>Address: 789 Health Avenue, Colombo, Sri Lanka</li>
                </ul>
            </div>
            <div class="column">
                <!-- You can add a contact form here if needed -->
            </div>
        </div>
    </div>
</section>

<!-- Initialize AOS -->
<script>
    AOS.init({
        offset: 200, // Adjust the offset as needed
        duration: 800, // Set the duration of the animation
    });

    function makeAppointment() {
        // Get form data
        const patientId = document.getElementById('patientId').value;
        const testType = document.getElementById('testType').value;
        const appointmentDate = document.getElementById('appointmentDate').value;
        const nearestBranch = document.getElementById('nearestBranch').value;

        // Check if the appointment date is a future date
        const currentDate = new Date();
        const selectedDate = new Date(appointmentDate);

			// Set the time components in current date to midnight
			currentDate.setHours(0, 0, 0, 0);

        if(patientId==""){
            alert("Please enter your Patient ID. If you haven't one yet. Please register first.")
        }else if (testType==0) {
            alert('Please select a Test type.');
        }else if (appointmentDate=="") {
            alert('Please select a appointment date.');
        }else if (selectedDate <= currentDate) {
            alert('Please select toaday or a future date for the appointment.');
        }else if (nearestBranch==0) {
            alert('Please select the branch near to you.');
        }else{

        // Prepare data for the fetch request
        const formData = {
            patientId: patientId,
            testTypeId: testType,
            date: appointmentDate,
            branchId: nearestBranch
        };

        // Send AJAX request
        fetch('/appointment', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formData)
        })
        .then(response => response.json())
        .then(data => {
            alert('Appointment reserved successfully. '+data.message);
            console.log(data);
        })
        .catch(error => {
            console.error('Error:', error);
        });

        }

    }

    function viewReport() {
    // Get form data
    const patientId = document.getElementById('patientId_report').value;

    if (patientId == "") {
        alert("Please enter your Patient ID.");
    } else {
        // Redirect to another page with patientId
        window.location.href = "/report_redirect?patientId=" + encodeURIComponent(patientId);
    }
}

</script>

<!-- Bulma JS -->
<script defer src="https://cdn.jsdelivr.net/npm/bulma@0.9.2/js/all.min.js"></script>
<script defer src="/js/modals.js"></script>

</body>
</html>


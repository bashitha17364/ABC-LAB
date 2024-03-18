<!DOCTYPE html>
<%@page import="com.medicaredevelopers.web.abclabs.model.Patient"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <script defer src="https://cdn.jsdelivr.net/npm/bulma@0.9.4/js/bulma.min.js"></script>
</head>
<body>
  <%@ include file="topbar.jsp"%>
  <div class="hero hero-body is-primary">
    <h1 class="title is-3">Patients</h1>
  </div>
  
  <div class="card-content">
      <div id="appointments-table" class="table-container">
        <table class="table is-striped">
          <thead>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Mobile</th>
              <th>Email</th>             
              <th>Address</th>
              <th>Date of Birth</th>
            </tr>
          </thead>
          <tbody>
           <% // Access the list of patients from the model
																		List<Patient> patients = (List<Patient>) request.getAttribute("patients");
																			
																			for (Patient patient : patients) {
																			%>

																			
          <tr>
           <td><%=patient.getId()%></td>
           <td><%=patient.getFirstName()+" "+patient.getLastName()%></td>
           <td><%=patient.getMobile()%></td>
           <td><%=patient.getEmail()%></td>
           <td><%=patient.getAddressLine1()+" "+patient.getAddressLine2()%></td>
           <td><%=patient.getDob()%></td>
           
            <th><a class="button is-ghost">Update</a></th>
          </tr>
          <% } %>
          </tbody>
        </table>
      </div>
    </div>
    
</body>
</html>

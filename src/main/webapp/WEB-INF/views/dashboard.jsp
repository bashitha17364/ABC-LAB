<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.medicaredevelopers.web.abclabs.dto.AllAppointmentsDTO"%>
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
  <%@ include file="topbar.jsp" %>
    <div class="hero hero-body is-primary">
      <h1 class="title is-3">Appointments</h1>
    </div>
    <div class="card-content">
      <div id="appointments-table" class="table-container">
        <table class="table is-striped">
          <thead>
            <tr>
              <th>ID</th>
              <th>Test Type</th>
              <th>Branch</th>
              <th>Patient ID</th>             
              <th>Name</th>
              <th>Report</th>
              <th>Date</th>
              <th>Time</th>
            </tr>
          </thead>
          <tbody>
           <% // Access the list of appointments from the model
																		ArrayList<AllAppointmentsDTO> appointments = (ArrayList<AllAppointmentsDTO>) request.getAttribute("appointments");
																			
																			for (AllAppointmentsDTO appointment : appointments) {
																			%>

																			
          <tr>
            <td><%=appointment.getId() %></td>
            <td><%=appointment.getType() %></td>
            <td><%=appointment.getCity() %></td>
            <td><%=appointment.getPatientId() %></td>           
            <td><%=appointment.getFirstName() +" "+appointment.getLastName() %></td>
            <td><%=appointment.getReportId() %></td>
            <td><%=appointment.getDate() %></td>
            <td><%=appointment.getTime() %></td>
           
          </tr>
          <% } %>
          </tbody>
        </table>
      </div>
    </div>
</body>

</html>
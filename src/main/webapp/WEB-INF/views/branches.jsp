<!DOCTYPE html>
<%@page import="com.medicaredevelopers.web.abclabs.model.Branch"%>
<%@page import="java.util.List"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Appointments</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <script defer src="https://cdn.jsdelivr.net/npm/bulma@0.9.4/js/bulma.min.js"></script>
</head>
<body>
  <%@ include file="topbar.jsp"%>
<div class="hero hero-body is-primary">
  <h1 class="title is-3">Branches</h1>
</div>
    
    <div class="card-content">
      <div id="appointments-table" class="table-container">
        <table class="table is-striped">
          <thead>
            <tr>
              <th>ID</th>
              <th>Name</th>
              <th>Address</th>
			        <th>Telephone</th>
            </tr>
          </thead>
          <tbody>
           <% // Access the list of patients from the model
																		List<Branch> branches = (List<Branch>) request.getAttribute("branches");
																			
																			for (Branch branch : branches) {
																			%>

																			
          <tr>
           <td><%=branch.getId()%></td>
           <td><%=branch.getCity()%></td>
           <td><%=branch.getAddress()%></td>
           <td><%=branch.getTelephone()%></td>

           
           <!-- <th><a class="button is-ghost">Update</a></th>-->
          </tr>
          <% } %>
          </tbody>
        </table>
      </div>
    </div>
    
</body>
</html>

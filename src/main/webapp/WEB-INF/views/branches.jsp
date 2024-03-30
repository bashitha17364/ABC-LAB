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
        <!-- Bulma CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/aos@2.3.4/dist/aos.css" />
        <link rel="stylesheet" href="/css/modals.css" />
</head>
<style>
  .add-btn {
  background-color: #dc3545; /* Red color for logout button */
  color: #fff; /* White text color */
  border: none; /* No border */
  padding: 10px 20px; /* Adjust padding as needed */
  border-radius: 5px; /* Rounded corners */
  font-size: 16px; /* Font size */
  cursor: pointer; /* Cursor style */
  transition: background-color 0.3s ease; /* Smooth transition for background color */
}

.add-btn:hover {
  background-color: #c82333; /* Darker red on hover */
}
</style>
<body>
  <%@ include file="topbar.jsp"%>
<div class="hero hero-body is-primary">
  <h1 class="title is-3">Branches</h1>
  <div class="buttons">
    <a id="add-btn" class="add-btn" data-p-open-modal="#appointment-modal">
      <strong>Add New Branch</strong>
      </a>
  </div>
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
           <td><%=branch.getAddress()%></td>
           <td><%=branch.getCity()%></td>
           <td><%=branch.getTelephone()%></td>
          </tr>
          <% } %>
          </tbody>
        </table>
      </div>
    </div>
  <div class="p-modal-background">

    <!-- Your modals will be here -->
    <div class="p-modal" id="appointment-modal">
      
      <!-- Make Appointment Form -->
  <div class="container mt-5 p-3">
      <h2 class="title is-2 has-text-centered mb-4">Make New Branch</h2>
      <div class="columns">
        <div class="column is-half">
            <label for="address" class="label">Address</label>
            <div class="control">
                <input type="text" class="input" id="address" name="address" required>
            </div>
        </div>
        <div class="column is-half">
            <label for="city" class="label">City</label>
            <div class="control">
                <input type="text" class="input" id="city" name="city" required>
            </div>
        </div>
    </div>
    
    <div class="columns">
        <div class="column is-half">
            <label for="telephone" class="label">Telephone</label>
            <div class="control">
                <input type="tel" class="input" id="telephone" name="telephone"
                    maxlength="10" pattern="[0-9]{10}"
                    title="Please enter a valid 10-digit telephone number"
                    required>
            </div>
        </div>
    </div>
          <div class="p-modal-button-container">
            <a href="#" onclick="createOffice()">Create Branch</a>
            <a href="#" data-p-cancel>Cancel</a>
          </div>
        </div>
      
      </div>
  </div>  
</body>
<!-- Bulma JS -->
<script defer src="https://cdn.jsdelivr.net/npm/bulma@0.9.2/js/all.min.js"></script>
<script defer src="/js/modals.js"></script>

<script>
function createOffice() {
        // Get form data
        const address = document.getElementById('address').value;
        const city = document.getElementById('city').value;
        const telephone = document.getElementById('telephone').value;

        if(address==""){
            alert("Please enter address")
        }else if (city=="") {
            alert('Please enter city.');
        }else if (telephone=="") {
            alert('Please enter appointment number.');
        }
        else{

        // Prepare data for the fetch request
        const formData = {
          address: address,
          city: city,
          telephone: telephone,
        };

        // Send AJAX request
        fetch('/branch', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify(formData)
        })
        .then(response => response.json())
        .then(data => {
            alert('New Branch is created');
            console.log(data);
			 window.location.reload();
        })
        .catch(error => {
            console.error('Error:', error);
        });

        }

    }
</script>

</html>

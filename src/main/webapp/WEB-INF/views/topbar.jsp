<nav class="navbar" role="navigation" aria-label="main navigation">
    <div class="navbar-brand">
      <a class="navbar-item" href="#">
        <h1>Admin Dashboard</h1>
      </a>
  
      <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
        <span aria-hidden="true"></span>
      </a>
    </div>
  
    <div id="navbarBasicExample" class="navbar-menu">
      <div class="navbar-start">
        <a class="navbar-item" href="/admin/dashboard">
            Appointments
          </a>
    
          <a class="navbar-item" href="/admin/patients">
            Patients
          </a>

          <a class="navbar-item" href="/admin/branches">
            Branches
          </a>
    
          <a class="navbar-item" href="/admin/doctors">
            Doctors
          </a>

          <a class="navbar-item" href="/admin/technicians">
            Technicians
          </a>

  
        
          </div>
        </div>
      </div>
      
      <h5 class="pt-3">Logged in as: <%= (String) session.getAttribute("username") %></h5>
  
      <div class="navbar-end">
        <div class="navbar-item">
          <div class="buttons">
            <a id="logoutButton" class="button is-primary">
              <strong>SignOut</strong>
              </a>
          </div>
        </div>
      </div>
    </div>

    <script>
        // Fetch request to log out
        function logout() {
            fetch('/admin/signout', {
                method: 'GET',
                credentials: 'same-origin',
                headers: {
                    'Content-Type': 'application/json',
                },
            })
            .then(response => {
                if (!response.ok) {
                    throw new Error('Network response was not ok');
                }
                return response.text();
            })
            .then(data => {
                if(data=="success"){
                    console.log('Successfully Logged out.', data);
                    alert('Successfully Logged out.', data);

                    window.location.reload();

                }else{
                    alert('Logout failed', data);
                }                
                
            })
            .catch(error => {
                console.error('Error during logout:', error);
            });
        }

        document.getElementById('logoutButton').addEventListener('click', logout);
    </script>
  </nav>
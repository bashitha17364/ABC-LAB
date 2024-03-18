<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Admin Login - ABC Laboratories</title>

    <!-- Bulma CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.2/css/bulma.min.css">
    <!-- Custom Styles -->
    <style>
        body {
            background-color: #f5f5f5;
            height: 100vh;
        }

        .login-container {
            max-width: 400px;
            margin: auto;
            margin-top: 5%;
            margin-bottom: 5%;
        }

        .login-card {
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .logo {
            text-align: center;
            margin-bottom: 20px;
        }

        .logo img {
            max-width: 100px;
            height: auto;
        }

        .login-title {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .login-form {
            margin-bottom: 20px;
        }

        .login-button {
            width: 100%;
        }
    </style>
</head>

<body>
    <div class="hero hero-body is-primary has-text-centered">
        <h1 class="title is-2">ABC Laboratories</h1>
     </div>
    <div class="login-container">
        <div class="login-card">            
            <h2 class="login-title">Admin Login</h2>
                <div class="field">
                    <label class="label">Username</label>
                    <div class="control">
                        <input id="username" class="input" type="text" placeholder="Enter your username">
                    </div>
                </div>
                <div class="field">
                    <label class="label">Password</label>
                    <div class="control">
                        <input id="password" class="input" type="password" placeholder="Enter your password">
                    </div>
                </div>
                <div class="field">
                    <div class="control">
                        <button class="button is-primary login-button" onclick="login()">Login</button>
                    </div>
                </div>
        </div>
    </div>

        <script>
            function login() {
                // Get input values
                var username = document.getElementById("username").value;
                var password = document.getElementById("password").value;
    
                // Create a data object
                var data = {
                    username: username,
                    password: password
                };
    
                // Make a fetch request
                fetch('/admin/login', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify(data),
                })
                .then(response => response.text())
                .then(data => {
                    if(data=="success"){
                        console.log('Success:', data);
                        window.location.href="/admin/dashboard";
                    }else{
                        console.log('Sign in Failed:', data);
                        alert('Sign in Failed: '+data);
                    }
                })
                .catch((error) => {
                    console.error('Error:', error);
                });
            }
        </script>

</body>

</html>

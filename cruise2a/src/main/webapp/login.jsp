<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="icon" href="img/faviicon.ico" type="image/x-icon">
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .container {
      max-width: 400px;
      margin: auto;
      padding: 20px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    h2 {
      text-align: center;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      font-weight: bold;
    }
    .form-group input[type="text"],
    .form-group input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
    }
    .form-group input[type="submit"] {
      width: 100%;
      padding: 10px;
      background-color: #007bff;
      color: white;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
    }
    .form-group input[type="submit"]:hover {
      background-color: #0056b3;
    }
  </style>
  <script>
	
	    function displayPopup() {
		var username = document.getElementById('username').value;
        var password = document.getElementById('password').value;

        // Simulate database query results (replace this with actual backend logic)
        var admins = [{name: 'admin', pass: 'admin123'}];
        var staff = [{name: 'staff', pass: 'staff123'}];

        // Check if username and password match any admin credentials
        var isAdmin = admins.some(function(admin) {
            return admin.name === username && admin.pass === password;
        });

        // Check if username and password match any staff credentials
        var isStaff = staff.some(function(staffMember) {
            return staffMember.name === username && staffMember.pass === password;
        });

        if (isAdmin) {
            // Redirect to admin page upon successful login
            window.location.href = 'Admin.jsp?username=' + username;
            return false;
        } else if (isStaff) {
            // Redirect to staff page upon successful login
            window.location.href = 'staff.jsp?username=' + username;
            return false;
        } else {
            // Show error message
            alert('Invalid Username or Password');
            return false;
        }
        }
  </script>
</head>
<body style="background-image: url('img/69a578808ffbf5d351b79cc83a0025c7.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
<div class="container">
  <h2>Login</h2>
  <form action="login.php" method="post" onsubmit="return displayPopup()">
    <div class="form-group">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" required>
    </div>
    <div class="form-group">
      <label for="password">Password:</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="form-group">
      <input type="submit" value="Login">
    </div>
  </form>
</div>
</body>
</html>

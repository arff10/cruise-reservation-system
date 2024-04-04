<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel</title>
    <link rel="icon" href="img/favicon.ico" type="image/x-icon">
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            max-width: 1000px;
            margin: auto;
            padding: 20px;
        }
        h1 {
            text-align: center;
        }
        .button {
            display: block;
            width: 200px;
            margin: 10px auto;
            padding: 10px 20px;
            background-color: #007bff;
            color: white;
            text-align: center;
            text-decoration: none;
            border-radius: 5px;
        }
        .button:hover {
            background-color: #0056b3;
        }
		
    </style>
    <script>
	
	    function displayPopup() {
        alert('New record added successfully');
        }
		
		function showLogs() {
        var newWindow = window.open("view_logs.php", "_blank", "width=600,height=400");
		    if (!newWindow) {
				alert("Popup blocked! Please allow popups for this site to view logs.");
            }
         }
    </script>
</head>
<body style="background-image: url('img/69a578808ffbf5d351b79cc83a0025c7.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">

<div class="container">
    <h1>Staff Panel</h1>

    <form action="staff_add.php" method="post" onsubmit="displayPopup()">
        <input type="text" name="Name" placeholder="Name" required>&nbsp;&nbsp;&nbsp;
        <input type="icNo" name="IC_Number" placeholder="IC Number" required>&nbsp;&nbsp;&nbsp;
        <input type="Date" name="Check_In" placeholder="Check In" required>&nbsp;&nbsp;&nbsp;
        <input type="Date" name="Check_Out" placeholder="Check Out" required>&nbsp;&nbsp;&nbsp;
        <select name="Room Type" required>
            <option value="Standard">Standard</option>
            <option value="Deluxe">Deluxe</option>
            <option value="Suite">Suite</option>
        </select>&nbsp;&nbsp;&nbsp;
        <select name="Ship Type" required>
            <option value="Resort World One">Resort World One</option>
            <option value="Genting Dreams">Genting Dreams</option>
        </select>
        <button type="submit" class="button">Add User</button>
    </form><br><br>

    <a href="view_logs2.php" class="button">View Logs</a>

    <p>Logged in as: <?php echo isset($_GET['username']) ? $_GET['username'] : 'Unknown'; ?></p>
</div>
</body>
</html>

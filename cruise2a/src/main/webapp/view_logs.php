<?php
// Establish connection to your database (assuming MySQL here)
$servername = "localhost"; // Change it according to your server
$username = "root"; // Change it according to your username
$password = ""; // Change it according to your password
$dbname = "cruisereservation"; // Change it according to your database name
$port = "3307";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the database
$sql = "SELECT * FROM client"; // Change 'client' according to your table name
$result = $conn->query($sql);

// Check if the query was successful
if (!$result) {
    die("Query failed: " . $conn->error);
}

// Close MySQL connection (optional as PHP will close it automatically)
$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Client Logs</title>
    <style>
        /* Your CSS styles for the popup */
        /* Example styles */
        .popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
			background-color:#FFF;
            padding: 20px;
            border: 2px solid black;
            border-radius: 5px;
        }
		table {
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
            text-align: left;
        }
        th {
            background-color: #f2f2f2; /* Background color for table headers */
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
</head>
<body style="background-image: url('img/69a578808ffbf5d351b79cc83a0025c7.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
<div class="popup">
    <table>
        <tr>
            <th>Client Name</th>
            <th>IC Number</th>
            <th>Date</th>
            <th>Room Type</th>
            <th>Ship Type</th>
        </tr>
        <?php
        // Display fetched data in a table
        if ($result->num_rows > 0) {
            while($row = $result->fetch_assoc()) {
                echo "<tr><td>".$row["Name"]."</td><td>".$row["IC_Number"]."</td><td>".$row["Date"]."</td><td>".$row["Room_Type"]."</td><td>".$row["Ship_Type"]."</td></tr>";
            }
        } else {
            echo "<tr><td colspan='5'>No records found</td></tr>";
        }
        ?>
    </table>
</div>
<a href="Admin.jsp" class="button">Back</a>;
</body>
</html>

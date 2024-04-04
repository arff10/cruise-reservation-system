<?php
session_start(); // Start the session

// Database connection parameters
$servername = "localhost"; // Change this to your database server
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$database = "cruisereservation"; // Change this to your database name
$port = "3307"; // Change this to your port

// Create connection
$conn = new mysqli($servername, $username, $password, $database, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve values from the form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Sanitize inputs to prevent SQL injection
    $name = mysqli_real_escape_string($conn, $_POST['Name']);
    $icNumber = mysqli_real_escape_string($conn, $_POST['IC_Number']);
    $date = mysqli_real_escape_string($conn, $_POST['Check_In'] . " to " . $_POST['Check_Out']);
    $roomType = mysqli_real_escape_string($conn, $_POST['Room_Type']);
    $shipType = mysqli_real_escape_string($conn, $_POST['Ship_Type']);

    // SQL query to insert user data into the database
    $sql = "INSERT INTO client (Name, IC_Number, Date, Room_Type, Ship_Type) VALUES ('$name', '$icNumber', '$date', '$roomType', '$shipType')";

    if ($conn->query($sql) === TRUE) {
        // Set session variable to indicate successful insertion
        $_SESSION['add_success'] = true;
        // Redirect back to Admin.jsp
        header("Location: staff.jsp");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>

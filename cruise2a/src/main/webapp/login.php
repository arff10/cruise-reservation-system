<?php
session_start(); // Start the session

// Database connection parameters
$servername = "localhost"; // Change this to your database server
$username = "root"; // Change this to your database username
$password = ""; // Change this to your database password
$database = "cruisereservation"; // Change this to your database name
$port = "3307";// change this to your port

// Create connection
$conn = new mysqli($servername, $username, $password, $database, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve values from the form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // SQL query to validate user credentials for admin
    $adminSql = "SELECT * FROM admin WHERE name='$username' AND pass='$password'";
    $adminResult = $conn->query($adminSql);

    // SQL query to validate user credentials for staff
    $staffSql = "SELECT * FROM staff WHERE name='$username' AND pass='$password'";
    $staffResult = $conn->query($staffSql);

    if ($adminResult->num_rows > 0) {
        // Redirect to admin page upon successful login
        header("Location: Admin.jsp?username=$username");
        exit();
    } elseif ($staffResult->num_rows > 0) {
        // Redirect to staff page upon successful login
        header("Location: staff.jsp?username=$username");
        exit();
    } else {
        // Set session variable to indicate failed insertion
        $_SESSION['invalid'] = true;
        // Redirect back to Login.jsp
        header("Location: login.jsp");
        exit();

    }
}

// Close connection
$conn->close();
?>

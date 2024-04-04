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

// Retrieve username from the form
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = mysqli_real_escape_string($conn, $_POST['username']);

    // SQL query to delete user data from the database
    $sql = "DELETE FROM client WHERE Name = '$username'";

    if ($conn->query($sql) === TRUE) {
        // Set session variable to indicate successful deletion
        $_SESSION['delete_success'] = true;
        // Redirect back to Admin panel
        header("Location: Admin.jsp");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>

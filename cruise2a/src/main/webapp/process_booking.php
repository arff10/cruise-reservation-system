<?php
session_start();

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$database = "cruisereservation";
$port = "3307";

// Create connection
$conn = new mysqli($servername, $username, $password, $database, $port);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if form submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Retrieve form data and sanitize
    $name = mysqli_real_escape_string($conn, $_POST["name"]);
    $ic_passport = mysqli_real_escape_string($conn, $_POST["ic_passport"]);
    $email = mysqli_real_escape_string($conn, $_POST["email"]);
    $checkin_date = mysqli_real_escape_string($conn, $_POST["checkin_date"]);
    $checkout_date = mysqli_real_escape_string($conn, $_POST["checkout_date"]);
    $ship_type = mysqli_real_escape_string($conn, $_POST["ship_type"]);
    $room_type = mysqli_real_escape_string($conn, $_POST["room_type"]);
    $date = mysqli_real_escape_string($conn, $_POST['checkin_date'] . " to " . $_POST['checkout_date']);
	
	// Calculate price per day based on room type
    $price_per_day = 0;
    switch ($room_type) {
        case 'standard':
            $price_per_day = 700;
            break;
        case 'deluxe':
            $price_per_day = 900;
            break;
        case 'suite':
            $price_per_day = 1100;
            break;
        default:
            $price_per_day = 0;
            break;
    }
	
	// Calculate total cost based on number of days
    $checkin = new DateTime($checkin_date);
    $checkout = new DateTime($checkout_date);
    $interval = $checkin->diff($checkout);
    $total_days = $interval->days;
    $total_cost = $price_per_day * $total_days * 1.08;
	
    // Prepare SQL statement to insert booking details
    $sql = "INSERT INTO client (Name, IC_Number, Email, Date, Room_Type, Ship_Type) VALUES ('$name', '$ic_passport', '$email', '$date', '$room_type', '$ship_type')";

    // Execute SQL query
    if ($conn->query($sql) === TRUE) {
        // Redirect to confirmation page with URL parameters
        header("Location: result.jsp?name=$name&ic_passport=$ic_passport&email=$email&checkin_date=$checkin_date&checkout_date=$checkout_date&ship_type=$ship_type&room_type=$room_type&total_cost=$total_cost");
        exit();
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}

// Close connection
$conn->close();
?>

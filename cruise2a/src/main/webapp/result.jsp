<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Booking Confirmation</title>
</head>
<body>
    <h1>Booking Confirmation</h1>
    <p id="name"></p>
    <p id="ic_passport"></p>
    <p id="email"></p>
    <p id="checkin_date"></p>
    <p id="checkout_date"></p>
    <p id="ship_type"></p>
    <p id="room_type"></p>
    <p>Goverment Tax : 8%</p>
    <p id="total_cost"></p>
    <button><a href="index.jsp">Go to Main Page</a></button>

    <script>
        // Retrieve data from URL parameters
        const params = new URLSearchParams(window.location.search);
        document.getElementById("name").textContent = "Name: " + params.get("name");
        document.getElementById("ic_passport").textContent = "IC/Passport Number: " + params.get("ic_passport");
        document.getElementById("email").textContent = "Email: " + params.get("email");
        document.getElementById("checkin_date").textContent = "Check-in Date: " + params.get("checkin_date");
        document.getElementById("checkout_date").textContent = "Check-out Date: " + params.get("checkout_date");
        document.getElementById("ship_type").textContent = "Ship Type: " + params.get("ship_type");
        document.getElementById("room_type").textContent = "Room Type: " + params.get("room_type");
		document.getElementById("total_cost").textContent = "Total Cost: RM " + params.get("total_cost");
    </script>
</body>
</html>

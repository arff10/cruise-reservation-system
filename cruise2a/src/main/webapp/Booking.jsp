<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Booking</title>
    <link rel="icon" href="img/faviicon.ico" type="image/x-icon">
    <style>
        body {
            margin: 0;
        }

        .top-container {
            background-color: #C52300;
            color: #ffffff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin: 0px;
        }

        .left-text {
            font-size: 15px;
            margin-left: -1200px;
        }

        .right-text {
            font-size: 14px;
            margin-right: 20px;
        }

        .header {
            background-color: #ffffff;
            color: #ffffff;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-family: "Edwardian Script ITC";
            font-size: 15px;
        }

        .logo {
            font-size: 30px;
        }

        .nav-buttons {
            display: flex;
            align-items: center;
        }

        .nav-button {
            margin-left: 20px;
            padding: 10px 20px;
            background-color: #C52300;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: "fantasy";
            font-size: 15px;
        }

        .nav-dropdown {
            margin-left: 20px;
            padding: 8px;
            border: none;
            border-radius: 0px;
            cursor: pointer;
            background-color: #ffffff;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
        }

        .nav-dropdown option.title {
            font-weight: bold;
            color: #C52300;
        }

        .booking-container {
            margin: 20px auto;
            padding: 20px;
            border: 2px solid #C52300;
            border-radius: 5px;
            max-width: 600px;
        }

        .booking-container h2 {
            color: #C52300;
            margin-bottom: 20px;
        }

        .booking-container label {
            margin-bottom: 5px;
        }

        .booking-container input,
        .booking-container select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .booking-container input[type="submit"] {
            background-color: #C52300;
            color: #ffffff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .booking-container input[type="submit"]:hover {
            background-color: #ad1f00;
        }

        .footer {
            background-color: #C52300;
            color: #ffffff;
            padding: 50px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 20px;
        }

        .footer-left {
            flex-grow: 1;
        }

        .social-icons {
            display: flex;
            gap: 10px;
        }

        .social-icons a {
            width: 30px;
            height: 30px;
            cursor: pointer;
        }

        .copyright {
            text-align: center;
            color: #ffffff;
            background-color: #C52300;
            padding: 10px;
            font-size: 12px;
        }

    </style>
</head>
<body style="background-image: url('img/69a578808ffbf5d351b79cc83a0025c7.jpg'); background-size: cover; background-repeat: no-repeat; background-attachment: fixed;">
<div class="top-container">
    <img src="img/vam2-logo-AF0482DBF3-seeklogo.com.png" height="20" width="20">
    <div class="left-text">Kuala Lumpur, Malaysia</div>
    <div class="right-text">+033472923</div>
</div>
<div class="header">
    <a href="index.jsp">
        <img class="img-fluid me-3" src="img/Photo-RWG-logo1.jpg" height="50" width="200" alt="Icon"/>
    </a>
    <div class="nav-buttons">
        <select class="nav-dropdown" id="shipDropdown">
            <option class="title">Our Ships</option>
            <option value="ResortWorldOne">Resort World One</option>
            <option value="GentingDreams">Genting Dreams</option>
        </select>
        <select class="nav-dropdown" id="destinationDropdown">
            <option class="title">Destination</option>
            <option value="Singapore">Singapore</option>
            <option value="KualaLumpur">Kuala Lumpur</option>
            <option value="Philippines">Philippines</option>
            <option value="Thailand">Thailand</option>
            <option value="HongKong">Hong Kong</option>
            <option value="China">China</option>
        </select>
        <button class="nav-button" id="bookCruiseButton">Book Cruise</button>
        <button class="nav-button" id="admin">Admin</button>
    </div>
</div>
<!-- Booking Form Container -->
<div class="booking-container">
    <h2>Booking Details</h2>
    <form action="process_booking.php" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="ic_passport">IC/Passport Number:</label>
        <input type="text" id="ic_passport" name="ic_passport" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="checkin_date">Check-in Date:</label>
        <input type="date" id="checkin_date" name="checkin_date" required>

        <label for="checkout_date">Check-out Date:</label>
        <input type="date" id="checkout_date" name="checkout_date" required>

        <label for="ship_type">Ship Type:</label>
        <select id="ship_type" name="ship_type" required>
            <option value="ResortWorldOne">Resort World One</option>
            <option value="GentingDreams">Genting Dreams</option>
        </select>

        <label for="room_type">Room Type:</label>
        <select id="room_type" name="room_type" required>
            <option value="standard">Standard</option>
            <option value="deluxe">Deluxe</option>
            <option value="suite">Suite</option>
        </select>

        <input type="submit" value="Submit">
    </form>
</div>
<div class="footer">
    <div class="footer-left">
        <h2>Resorts Cruising At Sea</h2>
        <p>Resorts World Cruises, we bring the classic resort experience to<br>
            you even while at sea. Enjoy elevated experience while you explore<br>
            all that Southeast Asia has to offer.</p>
    </div>
    <div class="social-icons">
        <a href="https://www.facebook.com/resortsworldcruises"><img src="img/pngimg.com - facebook_logos_PNG19750.png" width="30" height="30" alt="Facebook"></a>
        <a href="https://www.instagram.com/resortsworldcruises/"><img src="img/Instagram-Icon.png" width="30" height="30" alt="Instagram"></a>
        <a href="https://www.tiktok.com/@resortsworldcruises"><img src="img/tiktok-share-icon-black-logo-29FFD062A0-seeklogo.com.png" width="30" height="30" alt="Tiktok"></a>
    </div>
</div>

<div class="copyright">
    &copy; 2024 Resort World Genting. All rights reserved.
</div>
<script>
    document.getElementById("shipDropdown").addEventListener("change", function() {
        var selectedShip = this.value;
        if (selectedShip === "ResortWorldOne") {
            window.location.href = "Resort World One.jsp";
        } else if (selectedShip === "GentingDreams") {
            window.location.href = "Genting Dreams.jsp";
        }
    });



    document.getElementById("destinationDropdown").addEventListener("change", function() {
        var selectedDestination = this.value;
// Redirect to selected destination page
        window.location.href = selectedDestination + ".jsp";
    });

    document.getElementById("bookCruiseButton").addEventListener("click", function() {
// Redirect to book cruise page
        window.location.href = "Booking.jsp";
    });
    document.getElementById("admin").addEventListener("click", function() {
        // Redirect to book cruise page
        window.location.href = "login.jsp";
    });
</script>

</body>
</html>

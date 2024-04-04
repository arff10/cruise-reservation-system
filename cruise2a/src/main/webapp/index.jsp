<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Genting Dream Cruise</title>
    <link rel="icon" href="img/faviicon.ico" type="image/x-icon">
    <style>
        body {
            margin: 0;
        }
        .top-container {
            background-color: #C52300;
            color: #ffffff;
            padding: 8px;
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
        .h2 {
            color: #C52300;
            padding: 20px;
            font-family: "Berlin Sans FB";
        }
        .h3 {
            color: #C52300;
            padding: 20px;
            font-family: "Berlin Sans FB";
        }
        .header {
            background-color: #ffffff;
            color: #ffffff;
            padding: 10px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-family: "Edwardian Script ITC";
            font-size: 20px;
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
            border: 2px;
            border-radius: 0px;
            cursor: pointer;
            background-color: #ffffff;
            appearance: none;
            -webkit-appearance: none;
            -moz-appearance: none;
            border-color: #C52300;
        }
        .nav-dropdown option.title {
            font-weight: bold;
            color: #C52300;
        }
        .image-container {
            border: 2px solid #C52300;
            padding: 30px;
            display: flex;
            overflow-x: auto;
            max-height: 200px; /* Adjust as needed */
            scroll-behavior: smooth;
        }

        .image-container img {
            max-width: auto;
            max-height: 200px;
            margin-left: 10px;
            padding-left: 30px;
            animation: slideImages 10s linear infinite; /* Adjust duration and timing function */
        }

        @keyframes slideImages {
            0% {
                transform: translateX(0);
            }
            100% {
                transform: translateX(-100%);
            }
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
        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .grid-container {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 20px;
        }
        .grid-item {
            background-color: #C52300;
            color: #ffffff;
            padding: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
<div class="top-container">
    <img src="img/vam2-logo-AF0482DBF3-seeklogo.com.png" height="20" width="20" alt="">
    <div class="left-text">Kuala Lumpur,Malaysia</div>
    <div class="right-text">+033472923</div>
</div>
<div class="header">
    <a href="index.jsp">
        <img class="img-fluid me-3" src="img/Photo-RWG-logo1.jpg" height="50" width="200" alt="Icon"/>
    </a>  <div class="nav-buttons">
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
<div class="h2">
    <div class="logo">Our Deals</div>
    <div class="image-container">
        <img src="img/2N-Cruise(Wed)-KL.jpg" alt="">
        <img src="img/3N-Cruise(Sun)-P.jpg" alt="Image 2">
        <img src="img/GDR-B1F1-New-Season-WL-Thumbnail.jpg" alt="Image 3">
        <img src="img/MY_0016_Maybank_WebDeals_EN.jpg" alt="Image 3">
        <img src="img/Senior-MY.jpg" alt="Image 3">
        <img src="img/KCF-MY.jpg" alt="Image 3">
    </div>
</div>
<div class="h3">
    <div class="logo">Our Destination</div>
    <div class="image-container">
        <img src="img/3-1.jpg" alt="">
        <img src="img/3-2.jpg" alt="Image 2">
        <img src="img/3-3.jpg" alt="Image 3">
        <img src="img/3-4.jpg" alt="Image 3">
        <img src="img/china.jpg" alt="Image 3">
        <img src="img/philippines.jpg" alt="Image 3">
        <img src="img/vietnam.jpg" alt="Image 3">

    </div>
</div>
<div class="container">
    <div class="grid-container">
        <div class="grid-item">
            <h1>5137</h1>
            <p>Total Visitor</p>
        </div>
        <div class="grid-item">
            <h1>476</h1>
            <p>Daily Visitors</p>
        </div>
        <div class="grid-item">
            <h1>400</h1>
            <p>Total Workers</p>
        </div>
        <div class="grid-item">
            <h1>50</h1>
            <p>Destination</p>
        </div>
    </div>
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

<!DOCTYPE html>
<html>

<head>
    <meta name="viewport" content="device-width, initial-scale=1.0">
    <title>Blood Bank Management System</title>
    <link rel="stylesheet" href="search.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet"
        href=" https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css">
</head>

<body>
    <section class="sub1-header">

        <div class="navbar">
            <div class="icon">
                <h2 class="logo">BLOOD CARE</h2>
            </div>
            <nav>
                <div class="nav-links" id="navLinks">
                    <i class="fas fa-times" onclick="hideMenu()"></i>
                    <ul>
                        <li><a href="index.html">HOME</a></li>
                        <li><a href="search.html">SEARCH</a></li>
                        <li><a href="blood.php">LIVE BLOOD CAMPS</a></li>
                        <li><a href="doner.html">DONER REGISTRATION</a></li>
                        <li><a href="contact.html">CONTACT US</a></li>
                        <li><a href="login.html">ADMIN</a></li>
                    </ul>
                </div>
                <i class="fas fa-bars" onclick="showMenu()"></i>
            </nav>
            <h1>Blood Bank Management System</h1>
            <?php

            $firstName = $_POST['firstName'];
            $lastName = $_POST['lastName'];
            $occupation = $_POST['occupation'];
            $year = $_POST['year'];
            $month = $_POST['month'];
            $date = $_POST['date'];
            $email = $_POST['email'];
            $pnumber = $_POST['pnumber'];
            $address = $_POST['address'];
            $bloodgroup = $_POST['bloodgroup'];
            $lastdoDate = $_POST['lastdoDate'];
            $gender = $_POST['gender'];



            // Database connection
            $connection = new mysqli('localhost', 'root', '', 'blood_bank');
            if ($connection->connect_error) {
                echo "$connection->connect_error";
                die ("Connection Failed : " . $connection->connect_error);
            } else {
                $stmt = $connection->prepare("insert into registration(firstName, lastName, occupation, year, month, date, email, pnumber, address, bloodgroup, lastdoDate, gender)
		      values(?, ?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?)");
                $stmt->bind_param("sssssssissss", $firstName, $lastName, $occupation, $year, $month, $date, $email, $pnumber, $address, $bloodgroup, $lastdoDate, $gender);
                $stmt->execute();
                echo "Registration successfully...";

            }
            ?>
            <!----footer-->

            <section class="footer">
                <h4>About Us</h4>
                <p>Nature of the Organization: It is totally non-political, non-communal, non-regional, non-racial,
                    secular and voluntary social organization.Goals and objectives: Initiating social movement to build
                    up a healthy society through motivating voluntary blood donation, donating blood voluntarily and
                    others services and awareness programs. Programs: Motivating Students and Young generation of Sri
                    Lanka to donate blood voluntarily. Free blood group test.<br> Donating blood voluntarily for
                    patients. Motivating people for voluntary blood donation and taking part in service and awareness
                    program. Taking relief and rehabilitation programs to overcome <br>natural and human created
                    calamities.</p>

                <div class="icons">
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-linkedin"></i>

                </div>

            </section>



            <script>
                var navLinks = document.getElementById("navLinks");
                function showMenu() {
                    navLinks.style.right = "0";
                }
                function hideMenu() {
                    navLinks.style.right = "-200px";
                }
            </script>
</body>

</html>
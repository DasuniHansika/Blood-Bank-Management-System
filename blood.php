<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Coompatible" content="IE-edge">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <title>Blood Bank Management System</title>
    <link rel="stylesheet" href="blood.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <link rel="stylesheet"
        href=" https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/fontawesome.min.css">

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">

</head>

<body style="margin: 50px:">
    <section class="sub2-header">

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

            <h1>Live Blood Camps </h1>
    </section>



    <br>
    <table class="table">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Camp</th>
                <th>Start</th>
                <th>End</th>
                <th>Address</th>

            </tr>
        </thead>

        <tbody>
            <?php
            $servername = "localhost";
            $username = "root";
            $password = "";
            $database = "blood_bank";

            // Database connection
            $connection = new mysqli($servername, $username, $password, $database);


            if ($connection->connect_error) {

                die ("Connection Failed : " . $connection->connect_error);
            }

            //read all row from database table
            
            $sql = "SELECT*FROM blood_camps";
            $result = $connection->query($sql);

            if (!$result) {
                die ("Invalid query: " . $connection->error);

            }

            //read data of each row
            
            while ($row = $result->fetch_assoc()) {


                echo "
    <tr>
        <td>" . $row["id"] . "</td>
        <td>" . $row["name"] . "</td>
        <td>" . $row["camp"] . "</td>
        <td>" . $row["start_date"] . "</td>
        <td>" . $row["end_date"] . "</td>
        <td>" . $row["address"] . "</td>
        <td>
            <a href='update'>Update</a>
            <a href='delete'>Delete</a>
</td>
</tr>";
            }
            ?>
        </tbody>
    </table>
    <section class="footer">
        <h4>About Us</h4>
        <p>Nature of the Organization: It is totally non-political, non-communal, non-regional, non-racial, secular and
            voluntary social organization.Goals and objectives: Initiating social movement to build up a healthy society
            through motivating voluntary blood donation, donating blood voluntarily and others services and awareness
            programs. Programs: Motivating Students and Young generation of Sri Lanka to donate blood voluntarily. Free
            blood group test.<br> Donating blood voluntarily for patients. Motivating people for voluntary blood
            donation and taking part in service and awareness program. Taking relief and rehabilitation programs to
            overcome <br>natural and human created calamities.</p>

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
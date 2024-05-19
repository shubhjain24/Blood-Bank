<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search User</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <header>
        <h1>Blood Bank Management System</h1>
    </header>

    <nav>
        <a href="User_Registration.php">Donor Registration</a>
        <a href="Eligible_Search.php">Eligible Donors</a>
        <a href="Blood_Bank_Registration.php">Blood Bank Registration</a>
        <a href="Location_Registration.php">Location Registration</a>
        <a href="Update.php">Update details</a>
        <a href="Nearby_Donors.php">Nearby donors</a>
    </nav>

    <div class="container">
        <form method="post">
            <h1 class="main_heading">Eligible Donors</h1>
            <p>
                Required Blood Group:
                <select name="blood_group" id="blood_group">
                    <option value="">---Select Blood Group---</option>
                    <option value="A+">A+ve</option>
                    <option value="B+">B+ve</option>
                    <option value="AB+">AB+ve</option>
                    <option value="O+">O+ve</option>
                    <option value="A-">A-ve</option>
                    <option value="B-">B-ve</option>
                    <option value="AB-">AB-ve</option>
                    <option value="O-">O-ve</option>
                </select>
            </p>
            <br>
            <input type="submit" value="Submit">
        </form>
    </div>

    <?php
    $con = mysqli_connect("localhost", "root", "123456", "blood_bank");
    if (!$con) {
        echo "Database connection failed";
    }
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $blood_group = $_POST["blood_group"];
        if ($blood_group == "O+") {
            $query = "SELECT * FROM `o+_eligible_donors`";
        } else if ($blood_group == "A+") {
            $query = "SELECT * FROM `a+_eligible_donors`";
        } else if ($blood_group == "B+") {
            $query = "SELECT * FROM `b+_eligible_donors`";
        } else if ($blood_group == "AB+") {
            $query = "SELECT * FROM `ab+_eligible_donors`";
        } else if ($blood_group == "O-") {
            $query = "SELECT * FROM `o-_eligible_donors`";
        } else if ($blood_group == "A-") {
            $query = "SELECT * FROM `a-_eligible_donors`";
        } else if ($blood_group == "B-") {
            $query = "SELECT * FROM `b-_eligible_donors`";
        } else if ($blood_group == "AB-") {
            $query = "SELECT * FROM `ab-_eligible_donors`";
        }

        $result = $con->query($query);

        if ($result->num_rows > 0) {
            echo "<div class='table-container'>
                <table>
                    <tr>
                        <th>Donor ID</th>
                        <th>Name</th>
                        <th>Age</th>
                        <th>Gender</th>
                        <th>Blood Group</th>
                        <th>Contact Number</th>
                        <th>Address</th>
                        <th>Pincode</th>
                    </tr>";

            while ($row = $result->fetch_assoc()) {
                echo "<tr>
                        <td>" . $row["donor_id"] . "</td>
                        <td>" . $row["donor_name"] . "</td>
                        <td>" . $row["age"] . "</td>
                        <td>" . $row["gender"] . "</td>
                        <td>" . $row["blood_group"] . "</td>
                        <td>" . $row["contact_number"] . "</td>
                        <td>" . $row["address"] . "</td>
                        <td>" . $row["pincode"] . "</td>
                    </tr>";
            }
            echo "</table>";

        } else {
            echo "No results found." . $con->error;
        }
    }
    mysqli_close($con);
    ?>

    <style>
        .bottom-fixed {
            position: relative;
            bottom: 0;
            width: 100%;
        }

        .table-container {
            text-align: center;
            margin: 0 auto;
        }

        table {
            border-collapse: collapse;
            width: 100%; /* Adjust the width as needed */
            margin: 0 auto;
        }

        th, td {
            border: 1px solid black;
            padding: 8px;
        }
    </style>

    <footer class="bottom-fixed">
        <a href="#">FAQ</a>
        <a href="search.php">Search Donor Details</a>
        <a href="About_Us.html">About Us</a>
        <a href="developer.html">Contact Us</a>
    </footer>

</body>

</html>
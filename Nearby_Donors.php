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
            <h1 class="main_heading">Nearby Donors</h1>
            <p>
                Location Pincode:
                <input type="number" name="pincode" id="pincode">
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
        $pincode = $_POST["pincode"];
        $query = "SELECT * FROM donors WHERE pincode = $pincode";
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
            position: fixed;
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
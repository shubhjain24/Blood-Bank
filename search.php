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
            <h1 class="main_heading">Search Donor Details</h1>
            <p>
                Mobile: <input type="number" name="phone" id="phone" required placeholder="+91 9876543210">
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
        $phone = $_POST["phone"];
        $query = "SELECT * FROM donors WHERE contact_number = '$phone'";
        $result = $con->query($query);

        if ($result->num_rows > 0) {
            while ($row = $result->fetch_assoc()) {
                $message = "Donor ID: " . $row["donor_id"] . "<br>" 
                . "Name: " . $row["donor_name"] . "<br>" 
                . "Age: " . $row["age"] . "<br>" 
                . "Gender: " . $row["gender"] . "<br>" 
                . "Blood Group: " . $row["blood_group"] . "<br>"
                . "Contact Number: " . $row["contact_number"] . "<br>"
                . "Address: " . $row["address"] . "<br>"
                . "Pincode: " . $row["pincode"] . "<br>";
            }
        } else {
            $message =  "No results found." . $con->error;
        }
    }
    mysqli_close($con);
    ?>

    <script>
        function showMessage(message){
            alert(message);
        }
        showMessage("<?php echo $message; ?>");
    </script>

    <style>
        .bottom-fixed {
            position: fixed;
            bottom: 0;
            width: 100%;
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

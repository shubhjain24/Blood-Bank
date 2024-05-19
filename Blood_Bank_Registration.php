<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank Registration</title>
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
            <h1 class="main_heading">Blood Bank Registration Form</h1>
            <p>
                Blood Bank Name:<input type="text" name="name" id="name" required>
            </p>
            <p>
                Contact Details: <input type="number" name="phone" id="phone" required placeholder="+91 9876543210">
            </p>
            <p>
                Address: <input type="text" name="address" id="address" required placeholder="Enter you address">
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
        $name = $_POST["name"];
        $address = $_POST["address"];
        $phone = $_POST["phone"];
        $sql = "INSERT INTO blood_banks (bank_name, address, contact) VALUES ('$name', '$address', '$phone')";
        if ($con->query($sql) === TRUE) {
            $bank_id = mysqli_insert_id($con);
            $message = "Blood Bank details added with bank id: $bank_id";
        } else {
            $message = "Error in adding blood bank details" . $con->error;
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

    <footer class="bottom-fixed">
        <a href="#">FAQ</a>
        <a href="search.php">Search Donor Details</a>
        <a href="About_Us.html">About Us</a>
        <a href="developer.html">Contact Us</a>
    </footer>
</body>

</html>
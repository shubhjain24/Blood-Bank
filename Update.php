<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update</title>
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
            <h1 class="main_heading">Update Donor Details</h1>
            <p>
                Donor Id: <input type="number" name="donor_id" id="donor_id" required>
            </p>
            <p>
                Name:<input type="text" name="name" id="name" required placeholder="John">
            </p>
            <p>
                Gender:
                <select name="gender" id="gender">
                    <option value="">---Select Gender---</option>
                    <option value="M">Male</option>
                    <option value="F">Female</option>
                    <option value="O">Other</option>
                </select>
            </p>
            <p>
                Age: <input type="number" name="age" id="age" required placeholder="21">
            </p>
            <p>
                Blood Group:
                <input type="text" name="blood_type" id="blood_type" required placeholder="Enter your Blood Group">
            </p>
            <p>
                Mobile: <input type="number" name="phone" id="phone" required placeholder="+91 9876543210">
            </p>
            <p>
                Address: <input type="text" name="address" id="address" required placeholder="Enter you address">
            </p>
            <p>
                Pincode: <input type="number" name="pincode" id="pincode" required placeholder="Enter pincode">
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
        $donor_id = $_POST["donor_id"];
        $name = $_POST["name"];
        $gender = $_POST["gender"];
        $age = $_POST["age"];
        $address = $_POST["address"];
        $phone = $_POST["phone"];
        $blood_group = $_POST["blood_type"];
        $pincode = $_POST["pincode"];
        $sql = "UPDATE donors SET donor_name = '$name', age = '$age', gender = '$gender', blood_group = '$blood_group', contact_number = '$phone', address = '$address', pincode = '$pincode' WHERE donor_id = $donor_id";
        if ($con->query($sql) === true) {
            $message = "Record updated successfully";
        } else {
            $message = "Error updating record: " . $con->error;
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
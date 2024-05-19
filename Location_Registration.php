<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Location Registration</title>
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
        <h1 class="main_heading">Location Registration Form</h1>
        <?php
        $con = mysqli_connect("localhost", "root", "123456", "blood_bank");
        if ($con) {
            $sql = "SELECT bank_id, bank_name FROM blood_banks";
            $result = mysqli_query($con, $sql);
            if ($result && mysqli_num_rows($result) > 0) {
                echo '<form method="POST">';
                echo 'Location Name:<input type="text" name="name" id="name" required>';
                echo 'Address: <input type="text" name="address" id="address" required placeholder="Enter address">';
                echo 'Pincode: <input type="number" name="pincode" id="pincode" reqired placeholder="Enter pincode">';
                echo '<label>Select Bank:</label>';
                echo '<select name="bank_id" required id="bank_id">';
                echo '<option value="">Select Blood Bank</option>';
                while ($row = mysqli_fetch_assoc($result)) {
                    $bankId = $row['bank_id'];
                    $bankName = $row['bank_name'];
                    echo "<option value='$bankId'>Bank ID $bankId - $bankName</option>";
                }
                echo '</select>';
                echo '<input type="submit" value="Submit">';
                echo '</form>';
            }
        }
        ?>
    </div>

    <?php
    $con = mysqli_connect("localhost", "root", "123456", "blood_bank");
    if (!$con) {
        echo "Database connection failed";
    }
    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $name = $_POST["name"];
        $address = $_POST["address"];
        $pincode = $_POST["pincode"];
        $bank_id = $_POST["bank_id"];
        $sql = "INSERT INTO location (location_name, address, pincode, bank_id) VALUES ('$name', '$address', '$pincode', '$bankId')";
        if ($con->query($sql) === TRUE) {
            $location_id = mysqli_insert_id($con);
            $message = "Location details added with location id: $location_id";
        } else {
            $message = "Error in adding location details" . $con->error;
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
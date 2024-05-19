<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>
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
            <h1 class="main_heading">Donor Registration Form</h1>
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
            <p>
                Any medication history in recent times:
                <select name="medication" id="medication">
                    <option value="">---Select---</option>
                    <option value="Y">Yes</option>
                    <option value="N">No</option>
                </select>
            </p>
            <p>
                Medication Name: <input type="text" name="med" id="med" placeholder="Enter Medication">
            </p>
            <p>
                Any restriction for blood donation: <input type="text" name="restriction" id="restriction"
                    placeholder="Enter restrictions if any">
            </p>
            <p>
                <input type="checkbox" name="checkbox" required>
                I want to donate blood voluntarily and will not be entitled to claim any exchange for my donation. I
                guarantee that all the provided information is true. I understand the questions, which are for my
                protection as well as to protect the receipient of my blood.
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
        $gender = $_POST["gender"];
        $age = $_POST["age"];
        $address = $_POST["address"];
        $phone = $_POST["phone"];
        $blood_group = $_POST["blood_type"];
        $pincode = $_POST["pincode"];
        $medication = $_POST["medication"];
        $med = $_POST["med"];
        $restriction = $_POST["restriction"];
        $sql = "INSERT INTO donors (donor_name, age, gender, blood_group, contact_number, address, pincode) VALUES ('$name', '$age', '$gender', '$blood_group', '$phone', '$address', '$pincode')";
        if ($con->query($sql) === TRUE) {
            $donor_id = mysqli_insert_id($con);
            $message1 =  "Donor details added with donor id: $donor_id";
            if ($medication === "Y") {
                $query = "INSERT INTO diseases (donor_id, disease_name, restriction) VALUES ('$donor_id', '$med', '$restriction')";
                if ($con->query($query) === TRUE) {
                    $message2 = "Restriction details added successfully for donor id: $donor_id";
                } else {
                    $message2 = "Failed to add restriction details for donor id: $donor_id" . $con->error;
                }
            } else {
                $query = "INSERT INTO diseases (donor_id, disease_name, restriction) VALUES ('$donor_id', 'None', 'None')";
                if ($con->query($query) === TRUE) {
                    $message2 = "Restriction details added successfully for donor id: $donor_id";
                } else {
                    $message2 = "Failed to add restriction details for donor id: $donor_id" . $con->error;
                }
            }
        } else {
            $message1 = "Error in adding donor" . $con->error;
        }
    }
    mysqli_close($con);
    ?>

    <script>
        function showMessage(message1, message2){
            alert(message1, message2);
        }
        showMessage("<?php echo $message1 . "<br>" . $message2; ?>");
    </script>

    <footer class="bottom-fixed">
        <a href="#">FAQ</a>
        <a href="search.php">Search Donor Details</a>
        <a href="About_Us.html">About Us</a>
        <a href="developer.html">Contact Us</a>
    </footer>
</body>

</html>
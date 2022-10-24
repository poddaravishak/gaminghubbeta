<?php

session_start();

if (empty($_POST["userid"])) {
        die("userid is required");
}

if (!filter_var($_POST["email"], FILTER_VALIDATE_EMAIL)) {
        die("Valid email is required");
}

if (strlen($_POST["password"]) < 8) {
        die("Password must be at least 8 characters");
}

if (!preg_match("/[a-z]/i", $_POST["password"])) {
        die("Password must contain at least one letter");
}

if (!preg_match("/[0-9]/", $_POST["password"])) {
        die("Password must contain at least one number");
}

$password_hash = password_hash($_POST["password"], PASSWORD_DEFAULT);

$mysqli = require __DIR__ . "/database.php";
$sql = "INSERT INTO usertable (name, email, password_hash)
        VALUES (?, ?, ?)";

$stmt = $mysqli->stmt_init();

if (!$stmt->prepare($sql)) {
        die("SQL error: " . $mysqli->error);
}
$stmt->bind_param(
        "sss",
        $_POST["userid"],
        $_POST["email"],
        $password_hash
);
if ($stmt->execute()) {

        $_SESSION['status'] = "Successfully signed up";
        header('location: loginpage.php');
        exit;
}
<?php
session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Define root path if not defined
if (!defined('ROOT')) define('ROOT', __DIR__ . '/');

require(ROOT . 'app/model/User.php');
require(ROOT . 'app/model/Mailer.php');

$User = new User();
$Mailer = new Mailer();
$otp = trim(rand(100000, 999999));

// Login
if (isset($_POST['loginEmail']) && isset($_POST['loginPassword'])) {
    $login_result = $User->login($_POST['loginEmail'], $_POST['loginPassword']);

    if ($login_result != null && !is_string($login_result)) {
        $_SESSION['loggedInStatus'] = true;
        $_SESSION['user'] = $login_result;
        header("Location: /furreverfriends/home");
        exit();
    } else {
        echo "<script>alert('Invalid email or password.');</script>";
    }
}

// Signup - Step 1: Send OTP
if (isset($_POST['signupEmail']) && !isset($_POST['verifyOtp'])) {
    $_SESSION['signupData'] = $_POST;
    $_SESSION['otp'] = $otp;

    $to = $_POST['signupEmail'];
    $subject = "Your OTP for PawPal Signup";
    $message = "Your OTP is: $otp";
    if ($Mailer->smtp_mailer($to, $subject, $message)) {
        echo "<script>alert('An OTP has been sent to your email. Please enter the OTP to complete your registration.');</script>";
    } else {
        echo "<script>alert('Failed to send OTP. Please try again.');</script>";
    }
}


// Signup - Step 2: Verify OTP and complete registration
if (isset($_POST['verifyOtp'])) {
    // if (isset($_SESSION['otp'], $_POST['otp']) && trim($_POST['otp']) === trim($_SESSION['otp'])) {
    if(1==1){
    // if (isset($_SESSION['otp']) && trim($_POST['otp']) === trim($_SESSION['otp'])) {
        if (isset($_SESSION['signupData'])) {
            $signup_result = $User->signup(
                $_SESSION['signupData']['signupName'], 
                $_SESSION['signupData']['signupEmail'], 
                $_SESSION['signupData']['signupPassword'], 
                $_SESSION['signupData']['signupPhone'], 
                // $_SESSION['signupData']['signupDob'],
                state: $_SESSION['signupData']['signupState'], 
                city: $_SESSION['signupData']['signupCity']
            );

            if ($signup_result === true) {
                echo "<script>alert('Signup Successful!');</script>";
                unset($_SESSION['signupData']);
                unset($_SESSION['otp']);
            } elseif ($signup_result === "email_exists") {
                echo "<script>alert('Email already exists! Please use a different email.');</script>";
            } elseif ($signup_result === "phone_exists") {
                echo "<script>alert('Phone number already exists! Please use a different phone number.');</script>";
            } else {
                echo "<script>alert('Signup Failed! Please try again.');</script>";
            }
        } else {
            echo "<script>alert('Signup data not found. Please start the signup process again.');</script>";
        }
    } else {
        echo "<script>alert('Invalid OTP. Please try again.');</script>";
    }
}


// Logout
if (isset($_GET['logout']) && $_GET['logout'] == true) {
    $_SESSION['loggedInStatus'] = false;
    $_SESSION['user'] = null;
    session_destroy();
    header("Location: /furreverfriends/authentication");
    exit();
}

require(ROOT . 'app/resources/view/authentication.php');
?>

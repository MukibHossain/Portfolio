<?php
session_start();
require_once 'includes/db.php';

$success = "";
$error = "";

if(isset($_POST['send_message']))
{
    $full_name = trim($_POST['full_name']);
    $email = trim($_POST['email']);
    $subject = trim($_POST['subject']);
    $message = trim($_POST['message']);

    if(
        !empty($full_name) &&
        !empty($email) &&
        !empty($subject) &&
        !empty($message)
    )
    {
        $stmt = $conn->prepare("
            INSERT INTO contact_messages
            (
                full_name,
                email,
                subject,
                message
            )
            VALUES
            (?, ?, ?, ?)
        ");

        $stmt->bind_param(
            "ssss",
            $full_name,
            $email,
            $subject,
            $message
        );

        if($stmt->execute())
        {
            $success = "Message sent successfully.";
        }
        else
        {
            $error = "Failed to send message.";
        }
    }
    else
    {
        $error = "Please fill all fields.";
    }
}
?>

<?php include 'includes/navbar.php'; ?>

<section class="contact-section">

<div class="container">

<div class="section-title text-center mb-5">

<h2>Contact Me</h2>

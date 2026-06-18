<?php
session_start();
require_once 'includes/db.php';

$success = "";
$error = "";

if(isset($_POST['send_message']))
{
    $name = trim($_POST['full_name']);
    $email = trim($_POST['email']);
    $subject = trim($_POST['subject']);
    $message = trim($_POST['message']);

    if(
        !empty($name) &&
        !empty($email) &&
        !empty($subject) &&
        !empty($message)
    )
    {
        $stmt = $conn->prepare("
            INSERT INTO contact_messages
            (
                name,
                email,
                subject,
                message
            )
            VALUES
            (?, ?, ?, ?)
        ");

        $stmt->bind_param(
            "ssss",
            $name,
            $email,
            $subject,
            $message
        );

        if($stmt->execute())
        {
            $success = "Message sent successfully!";
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

include 'includes/navbar.php';
?>

<section class="contact-section">

<div class="container">

<div class="section-title text-center mb-5">

<h2>Contact Me</h2>

<p>
Let's discuss research, collaboration, projects and opportunities.
</p>

</div>

<div class="row">

<div class="col-lg-5">

<div class="contact-info-card">

<h3>Get In Touch</h3>

<div class="contact-item">

<div class="contact-icon">
<i class="fas fa-envelope"></i>
</div>

<div>
<h5>Email</h5>
<p>mdalhossainmukib@gmail.com</p>
</div>

</div>

<div class="contact-item">

<div class="contact-icon">
<i class="fas fa-phone"></i>
</div>

<div>
<h5>Phone</h5>
<p>+8801981773889</p>
</div>

</div>

<div class="contact-item">

<div class="contact-icon">
<i class="fas fa-map-marker-alt"></i>
</div>

<div>
<h5>Location</h5>
<p>Dhaka, Bangladesh</p>
</div>

</div>

<div class="availability-badge">

<h5>Available For</h5>

<p>
Research Collaboration<br>
Internships<br>
Academic Projects<br>
Web Development
</p>

</div>

</div>

</div>

<div class="col-lg-7">

<div class="contact-form-card">

<?php if(!empty($success)) { ?>

<div class="alert alert-success">
<?php echo $success; ?>
</div>

<?php } ?>

<?php if(!empty($error)) { ?>

<div class="alert alert-danger">
<?php echo $error; ?>
</div>

<?php } ?>

<form method="POST">

<div class="mb-3">

<input
type="text"
name="full_name"
class="form-control custom-input"
placeholder="Full Name"
required>

</div>

<div class="mb-3">

<input
type="email"
name="email"
class="form-control custom-input"
placeholder="Email Address"
required>

</div>

<div class="mb-3">

<input
type="text"
name="subject"
class="form-control custom-input"
placeholder="Subject"
required>

</div>

<div class="mb-3">

<textarea
name="message"
rows="6"
class="form-control custom-input"
placeholder="Write your message..."
required></textarea>

</div>

<button
type="submit"
name="send_message"
class="btn btn-primary">

Send Message

</button>

</form>

</div>

</div>

</div>

</div>

</section>

<?php include 'includes/footer.php'; ?>
```

<?php
session_start();
require_once 'includes/config.php';
require_once 'includes/db.php';
require_once 'includes/functions.php';
?>

<?php include 'includes/navbar.php'; ?>

<!-- HERO SECTION -->

<section class="hero-section">

<div class="container">

<div class="row align-items-center min-vh-100">

<div class="col-lg-7">

<p class="hero-tag">
👋 Hello, I'm
</p>

<h1 class="hero-title">
Md Al Hossain Mukib
</h1>

<h2 class="typing-text">
<span id="typing"></span>
</h2>

<p class="hero-description">
A computer science undergraduate and independent researcher
specializing in Artificial Intelligence and Computer Vision,
focused on intelligent systems, research innovation,
and impactful real-world solutions.
</p>

<div class="hero-buttons">

<a href="#projects" class="btn btn-primary btn-lg">
View Projects
</a>

<a href="assets/uploads/mukib_cv.pdf"
class="btn btn-outline-light btn-lg"
download>
Download CV
</a>

</div>

<div class="social-icons mt-4">

<a href="https://github.com/MukibHossain" target="_blank">
<i class="fab fa-github"></i>
</a>

<a href="https://www.linkedin.com/in/mukibhossain/" target="_blank">
<i class="fab fa-linkedin"></i>
</a>

<a href="https://scholar.google.com/citations?user=p8k7WiEAAAAJ&hl=en&authuser=2" target="_blank">
<i class="fas fa-graduation-cap"></i>
</a>

<a href="https://www.researchgate.net/profile/Md-Al-Hossain-Mukib?ev=hdr_xprf" target="_blank">
<i class="fas fa-flask"></i>
</a>

</div>

<div class="row stats-row mt-5">

<div class="col-md-4">

<div class="stat-box">

<h3>10+</h3>

<p>Projects Built</p>

</div>

</div>

<div class="col-md-4">

<div class="stat-box">

<h3>4+</h3>

<p>Research Works</p>

</div>

</div>

<div class="col-md-4">

<div class="stat-box">

<h3>2027</h3>

<p>Graduation Year</p>

</div>

</div>

</div>

</div>

<div class="col-lg-5 text-center">

<img src="assets/images/profile.png" class="profile-image">

</div>

</div>

</div>

</section>

<!-- ABOUT -->

<section class="about-section" id="about">

<div class="container">

<div class="section-title text-center">

<h2>About Me</h2>

<p>
CSE Student • Independent Researcher • AI Enthusiast
</p>

</div>

<div class="row mt-5 align-items-center">

<div class="col-lg-6">

<div class="about-card">

<h3>
Who Am I?
</h3>

<p>
A Computer Science undergraduate and independent researcher
specializing in Artificial Intelligence, Computer Vision,
Machine Learning, and intelligent systems.
</p>

<p>
My work explores how AI-driven methods can address
practical challenges through research, innovation,
and scalable real-world implementation.
</p>

<p>
Future Goal:
To become a good human being and help people
by solving real-world problems through technology.
</p>

</div>

</div>

<div class="col-lg-6">

<div class="info-grid">

<div class="info-box">
<h4>University</h4>
<p>IUBAT</p>
</div>

<div class="info-box">
<h4>Current Year</h4>
<p>3rd Year</p>
</div>

<div class="info-box">
<h4>Expected Graduation</h4>
<p>August 2027</p>
</div>

<div class="info-box">
<h4>Location</h4>
<p>Dhaka, Bangladesh</p>
</div>

<div class="info-box">
<h4>Hobbies</h4>
<p>Cricket & Football</p>
</div>

<div class="info-box">
<h4>Language</h4>
<p>English & Bangla</p>
</div>

</div>

</div>

</div>

</div>

</section>

<!-- SKILLS -->

<section class="skills-section" id="skills">

<div class="container">

<div class="section-title text-center">

<h2>Skills & Technologies</h2>

<p>
Programming, AI Research, Deep Learning & Web Development
</p>

</div>

<div class="row mt-5">

<div class="col-lg-4">

<div class="skill-card">

<h3>💻 Programming</h3>

<div class="skill-item">

<div class="skill-info">
<span>Python</span>
<span>95%</span>
</div>

<div class="skill-bar">
<div class="skill-progress python"></div>
</div>

</div>

<div class="skill-item">

<div class="skill-info">
<span>C</span>
<span>85%</span>
</div>

<div class="skill-bar">
<div class="skill-progress c"></div>
</div>

</div>

<div class="skill-item">

<div class="skill-info">
<span>C++</span>
<span>80%</span>
</div>

<div class="skill-bar">
<div class="skill-progress cpp"></div>
</div>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="skill-card">

<h3>🤖 AI / ML Libraries</h3>

<div class="skill-tags">

<span>NumPy</span>
<span>Pandas</span>
<span>Requests</span>
<span>Matplotlib</span>
<span>Scikit-learn</span>
<span>PyTorch</span>
<span>TensorFlow</span>
<span>OpenCV</span>

</div>

</div>

</div>

<div class="col-lg-4">

<div class="skill-card">

<h3>🌐 Web Development</h3>

<div class="skill-tags">

<span>HTML5</span>
<span>CSS3</span>
<span>JavaScript</span>
<span>PHP</span>
<span>MySQL</span>
<span>Bootstrap</span>
<span>Django</span>
<span>AJAX</span>

</div>

</div>

</div>

</div>

</div>

</section>

<!-- PROJECTS -->

<section class="projects-section" id="projects">

<div class="container">

<div class="section-title text-center">

<h2>Featured Projects</h2>

<p>
Research, AI, Machine Learning & Web Development Projects
</p>

</div>

<div class="row mt-5">

<div class="col-lg-6">

<div class="project-card">

<img src="assets/images/quiz-system.png"
class="project-real-image">

<div class="project-content">

<h3>
Online Quiz System
</h3>

<p>
Modern PHP & MySQL based online quiz platform
with authentication, leaderboard, certificate generation,
admin dashboard, and secure quiz engine.
</p>

<div class="project-tags">

<span>PHP</span>
<span>MySQL</span>
<span>Bootstrap</span>
<span>AJAX</span>

</div>

<div class="project-buttons">

<a href="https://github.com/MukibHossain/Online-Quiz-System"
target="_blank"
class="btn btn-primary">
GitHub
</a>

<a href="#"
class="btn btn-outline-light">
Live Demo
</a>

</div>

</div>

</div>

</div>

<div class="col-lg-6">

<div class="project-card">

<img src="assets/images/crime-reporter.png"
class="project-real-image">

<div class="project-content">

<h3>
Community Crime/Incident Reporter
</h3>

<p>
Advanced incident reporting and visualization platform
with interactive maps, heatmaps, authentication,
admin control system, and analytics dashboard.
</p>

<div class="project-tags">

<span>PHP</span>
<span>Leaflet.js</span>
<span>Chart.js</span>
<span>Security</span>

</div>

<div class="project-buttons">

<a href="https://github.com/MukibHossain/Community-Crime-Incident-Reporter"
target="_blank"
class="btn btn-primary">
GitHub
</a>

<a href="#"
class="btn btn-outline-light">
Live Demo
</a>

</div>

</div>

</div>

</div>

</div>

</div>

</section>

<!-- RESEARCH -->

<section class="research-section" id="research">

<div class="container">

<div class="section-title text-center">

<h2>Research & Publications</h2>

<p>
Artificial Intelligence • Computer Vision • Intelligent Systems
</p>

</div>

<div class="research-container">

<div class="featured-research-card">

<div class="research-badge">
⭐ Featured Publication
</div>

<h2>
Predicting Indoor Air Quality in University Laboratories Using Classification-Based Machine Learning Models
</h2>

<p class="research-description">
Published in Proceedings of the International Conference on Current Problems in Engineering and Applied Sciences (ICCPEAS 2025).
This research focuses on classification-based machine learning techniques
for intelligent indoor air quality prediction in university laboratory environments.
</p>

<div class="research-meta">

<span class="research-status published">
Published
</span>

<span class="research-conference">
ICCPEAS 2025
</span>

</div>

<div class="research-links">

<a href="https://doi.org/10.2991/978-94-6239-668-5_93"
target="_blank"
class="research-btn">
DOI
</a>

<a href="#"
class="research-btn secondary-btn">
PDF
</a>

</div>

</div>

<div class="research-grid">

<div class="research-card">

<h3>
Visual Comfort Assessment for a Comparative Analysis of Dominant Features Using Machine Learning in Naturally Ventilated Cafeterias
</h3>

<p>
Machine learning based comparative analysis for intelligent visual comfort assessment in university cafeteria environments.
</p>

<div class="research-footer">

<span class="under-review">
Under Review
</span>

<a href="#">
PDF
</a>

</div>

</div>

<div class="research-card">

<h3>
Predicting Indoor Air Quality in Naturally Ventilated University Cafeterias Using Regression-Based Machine Learning Model
</h3>

<p>
Regression-based machine learning framework for indoor air quality prediction and analysis.
</p>

<div class="research-footer">

<span class="under-review">
Under Review
</span>

<a href="#">
PDF
</a>

</div>

</div>

<div class="research-card">

<h3>
Feature Ranking for Predicting Inhabitant Thermal Comfort in Urban Landscapes Using Machine Learning for Sustainable and Climate-Resilient Design
</h3>

<p>
Published abstract related to thermal comfort prediction and sustainable urban systems.
</p>

<div class="research-footer">

<span class="book-abstract">
Book Abstract
</span>

<a href="#">
Abstract
</a>

</div>

</div>

</div>

<div class="research-social text-center mt-5">

<a href="https://scholar.google.com/citations?user=p8k7WiEAAAAJ&hl=en&authuser=2"
target="_blank"
class="btn btn-primary">
Google Scholar
</a>

<a href="https://www.researchgate.net/profile/Md-Al-Hossain-Mukib?ev=hdr_xprf"
target="_blank"
class="btn btn-outline-light">
ResearchGate
</a>

</div>

</div>

</div>

</section>

<?php include 'includes/footer.php'; ?>
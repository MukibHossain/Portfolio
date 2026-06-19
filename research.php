<?php
session_start();
require_once 'includes/db.php';
include 'includes/navbar.php';
?>

<section class="research-section">

<div class="container">

<div class="section-title text-center mb-5">

<h2>Research & Publications</h2>

<p>
Artificial Intelligence • Machine Learning • Computer Vision
</p>

</div>

<!-- FEATURED PAPER -->

<div class="research-card featured-paper mb-5">

<div class="research-badge">
⭐ Featured Publication
</div>

<h3>
Predicting Indoor Air Quality in University Laboratories Using Classification-Based Machine Learning Models
</h3>

<p>
Published in Proceedings of ICCPEAS 2025.
This work investigates classification-based machine learning
approaches for intelligent indoor air quality prediction in
university laboratory environments.
</p>

<div class="research-actions">

<span class="badge bg-success">
Published
</span>

<a
href="https://doi.org/10.2991/978-94-6239-668-5_93"
target="_blank"
class="btn btn-primary">

DOI

</a>

<a
href="#"
class="btn btn-outline-light">

PDF

</a>

</div>

</div>

<div class="row">

<?php

$query = mysqli_query(
$conn,
"SELECT * FROM research_papers ORDER BY id DESC"
);

while($paper = mysqli_fetch_assoc($query))
{
?>

<div class="col-lg-6 mb-4">

<div class="research-card">

<h4>

<?php echo $paper['title']; ?>

</h4>

<p>

<?php echo $paper['abstract']; ?>

</p>

<div class="research-actions">

<span class="badge bg-info">

<?php echo $paper['status']; ?>

</span>

<?php
if(!empty($paper['doi_link']))
{
?>

<a
href="<?php echo $paper['doi_link']; ?>"
target="_blank"
class="btn btn-sm btn-primary">

DOI

</a>

<?php
}
?>

<?php
if(!empty($paper['pdf_link']))
{
?>

<a
href="<?php echo $paper['pdf_link']; ?>"
target="_blank"
class="btn btn-sm btn-outline-light">

PDF

</a>

<?php
}
?>

</div>

</div>

</div>

<?php
}
?>


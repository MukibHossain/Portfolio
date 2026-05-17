<?php

require_once 'db.php';

function clean_input($data)
{
    global $conn;

    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);

    return mysqli_real_escape_string($conn, $data);
}

function redirect($location)
{
    header("Location: $location");
    exit();
}

function is_logged_in()
{
    return isset($_SESSION['user_id']);
}

function is_admin()
{
    return isset($_SESSION['role']) && $_SESSION['role'] === 'admin';
}

function get_projects()
{
    global $conn;

    $sql = "SELECT * FROM projects ORDER BY id DESC";
    $result = mysqli_query($conn, $sql);

    return $result;
}

function get_research_papers()
{
    global $conn;

    $sql = "SELECT * FROM research_papers ORDER BY id DESC";
    $result = mysqli_query($conn, $sql);

    return $result;
}

function get_skills()
{
    global $conn;

    $sql = "SELECT * FROM skills ORDER BY proficiency DESC";
    $result = mysqli_query($conn, $sql);

    return $result;
}

?>
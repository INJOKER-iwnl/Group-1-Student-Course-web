<?php

$servername = '100.69.22.103:3306';
$username = 'student-course-admin';
$password = 'password';
$dbname = 'student_course_hub';
$port = 3306;

// Create connection
$conn = new mysqli($servername, $username, $password,$dbname,$port);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
//echo "Connected successfully";
?>
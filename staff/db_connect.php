<?php
$host = '100.69.22.103:3306';
$dbname = 'student_course_hub';
$username = 'student-course-admin';
$password = 'password';
try {
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>
<!-- Enable this for registration on local test (Check Registration) -->

<!-- <?php
session_start();
require 'db_connect.php'; // Include database connection

// Check if form is submitted
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);
    $confirm_password = trim($_POST['confirm_password']);
    $user_type = $_POST['user_type'];

    // Validate passwords
    if ($password !== $confirm_password) {
        $error = "Passwords do not match.";
    } else {
        // Hash the password
        $hashed_password = password_hash($password, PASSWORD_BCRYPT);

        // Insert the new user into the database
        try {
            $stmt = $pdo->prepare("INSERT INTO users (username, email, password, user_type) VALUES (:username, :email, :password, :user_type)");
            $stmt->execute([
                'username' => $username,
                'email' => $email,
                'password' => $hashed_password,
                'user_type' => $user_type
            ]);

            $_SESSION['user'] = $username;
            $_SESSION['user_type'] = $user_type;
            header("Location: /Student_Course_Hub-1/dashboard.php"); // Redirect after successful registration
            exit();
        } catch (PDOException $e) {
            $error = "Error: " . $e->getMessage();
        }
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <h2>Register</h2>
    
    <?php if (isset($error)) echo "<p style='color:red;'>$error</p>"; ?>
    
    <form method="POST">
        <label>Username:</label>
        <input type="text" name="username" required>
        
        <label>Email:</label>
        <input type="email" name="email" required>
        
        <label>Password:</label>
        <input type="password" name="password" required>
        
        <label>Confirm Password:</label>
        <input type="password" name="confirm_password" required>
        
        <label>User Type:</label>
        <select name="user_type" required>
            <option value="admin">Admin</option>
            <option value="teacher">Teacher</option>
            <option value="student">Student</option>
        </select>
        
        <button type="submit">Register</button>
    </form>
</body>
</html> -->

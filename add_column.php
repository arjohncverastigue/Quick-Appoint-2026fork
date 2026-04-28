<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "techno_q_a";

try {
    $pdo = new PDO("mysql:host=$servername;dbname=$database", $username, $password);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    $pdo->exec("ALTER TABLE department_services ADD COLUMN description TEXT AFTER service_name");
    echo "Column added successfully!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
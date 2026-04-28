<?php
include __DIR__ . '/../conn.php';

try {
    $pdo->exec("ALTER TABLE appointments ADD COLUMN calculated_fees TEXT NULL AFTER business_category");
    echo "calculated_fees column added!";
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage();
}
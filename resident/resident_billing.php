<?php 
session_start();
if (!isset($_SESSION['auth_id']) || $_SESSION['role'] !== 'Resident') {
    header("Location: ../login.php");
    exit();
}

include '../conn.php';
$authId = $_SESSION['auth_id'];

$stmt = $pdo->prepare("SELECT id FROM residents WHERE auth_id = ? LIMIT 1");
$stmt->execute([$authId]);
$resident = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$resident) {
    die("Resident profile not found.");
}
$residentId = $resident['id'];

$appointmentId = isset($_GET['appointment_id']) ? (int)$_GET['appointment_id'] : 0;

if (!$appointmentId) {
    die("Invalid appointment ID.");
}

// Fetch appointment details with fees
$query = "
    SELECT a.id, a.transaction_id, a.scheduled_for, a.calculated_fees, a.status,
           d.name AS department_name, s.service_name,
           CONCAT(lp.first_name, ' ', lp.last_name) AS personnel_name
    FROM appointments a
    JOIN departments d ON a.department_id = d.id
    JOIN department_services s ON a.service_id = s.id
    LEFT JOIN lgu_personnel lp ON a.personnel_id = lp.id
    WHERE a.id = :appointment_id AND a.resident_id = :resident_id
    LIMIT 1
";

$stmt = $pdo->prepare($query);
$stmt->execute(['appointment_id' => $appointmentId, 'resident_id' => $residentId]);
$appointment = $stmt->fetch(PDO::FETCH_ASSOC);

if (!$appointment) {
    die("Appointment not found or access denied.");
}

// Parse fees
$fees = [];
$totalAmount = 0;
if (!empty($appointment['calculated_fees'])) {
    $fees = json_decode($appointment['calculated_fees'], true);
    if (is_array($fees)) {
        foreach ($fees as $fee) {
            $totalAmount += floatval($fee['fee_amount']);
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Billing - Appointment #<?= htmlspecialchars($appointment['transaction_id']) ?></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        body {
            background: #f8f9fa;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .billing-container {
            max-width: 800px;
            margin: 2rem auto;
            padding: 0 1rem;
        }
        .billing-header {
            background: linear-gradient(135deg, #0D92F4, #27548A);
            border-radius: 20px;
            padding: 2rem;
            margin-bottom: 2rem;
            color: white;
            box-shadow: 0 10px 30px rgba(13, 146, 244, 0.2);
        }
        .billing-card {
            background: white;
            border-radius: 15px;
            padding: 2rem;
            margin-bottom: 1.5rem;
            box-shadow: 0 2px 12px rgba(0, 0, 0, 0.06);
        }
        .transaction-badge {
            background: #e3f2fd;
            color: #0D92F4;
            padding: 0.5rem 1rem;
            border-radius: 8px;
            font-weight: 600;
            display: inline-block;
            margin-bottom: 1rem;
        }
        .fee-item {
            display: flex;
            justify-content: space-between;
            padding: 0.75rem 0;
            border-bottom: 1px solid #f0f0f0;
        }
        .fee-item:last-child {
            border-bottom: none;
        }
        .total-section {
            background: #f8f9fa;
            border-radius: 10px;
            padding: 1.5rem;
            margin-top: 1.5rem;
        }
        .total-amount {
            font-size: 2rem;
            font-weight: 700;
            color: #0D92F4;
        }
        .btn-pay {
            background: linear-gradient(135deg, #0D92F4, #27548A);
            color: white;
            border: none;
            padding: 1rem 2rem;
            border-radius: 10px;
            font-size: 1.1rem;
            font-weight: 600;
            width: 100%;
            margin-top: 1rem;
            transition: transform 0.2s;
        }
        .btn-pay:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(13, 146, 244, 0.3);
        }
        .info-row {
            display: flex;
            margin-bottom: 0.75rem;
        }
        .info-label {
            font-weight: 600;
            color: #666;
            min-width: 150px;
        }
        .status-badge {
            background: #fff3cd;
            color: #856404;
            padding: 0.25rem 0.75rem;
            border-radius: 20px;
            font-size: 0.875rem;
            font-weight: 600;
        }
    </style>
</head>
<body>
    <div class="billing-container">
        <div class="billing-header">
            <h3><i class="fas fa-file-invoice-dollar mr-2"></i> Billing Details</h3>
            <p>Review and pay your appointment fees</p>
        </div>

        <div class="billing-card">
            <div class="transaction-badge">
                <i class="fas fa-hashtag"></i> <?= htmlspecialchars($appointment['transaction_id']) ?>
            </div>
            <span class="status-badge"><i class="fas fa-hourglass-half"></i> <?= htmlspecialchars($appointment['status']) ?></span>

            <h5 class="mt-3 mb-3">Appointment Details</h5>
            <div class="info-row">
                <div class="info-label">Department:</div>
                <div><?= htmlspecialchars($appointment['department_name']) ?></div>
            </div>
            <div class="info-row">
                <div class="info-label">Service:</div>
                <div><?= htmlspecialchars($appointment['service_name']) ?></div>
            </div>
            <?php if (!empty($appointment['personnel_name'])): ?>
            <div class="info-row">
                <div class="info-label">Personnel:</div>
                <div><?= htmlspecialchars($appointment['personnel_name']) ?></div>
            </div>
            <?php endif; ?>
            <div class="info-row">
                <div class="info-label">Scheduled Date:</div>
                <div><?= date('F d, Y \a\t h:i A', strtotime($appointment['scheduled_for'])) ?></div>
            </div>
        </div>

        <div class="billing-card">
            <h5 class="mb-3"><i class="fas fa-list mr-2"></i> Fee Breakdown</h5>
            <?php if (count($fees) > 0): ?>
                <?php foreach ($fees as $fee): ?>
                    <div class="fee-item">
                        <span><?= htmlspecialchars($fee['fee_name']) ?></span>
                        <span>Php <?= number_format(floatval($fee['fee_amount']), 2) ?></span>
                    </div>
                <?php endforeach; ?>
                <div class="total-section">
                    <div class="d-flex justify-content-between align-items-center">
                        <div>
                            <div class="text-muted">Total Amount Due</div>
                            <div class="total-amount">Php <?= number_format($totalAmount, 2) ?></div>
                        </div>
                    </div>
                    <button class="btn btn-pay" onclick="processPayment()">
                        <i class="fas fa-credit-card mr-2"></i> Proceed to Payment
                    </button>
                </div>
            <?php else: ?>
                <div class="alert alert-info">
                    <i class="fas fa-info-circle"></i> No fees associated with this appointment.
                </div>
            <?php endif; ?>
        </div>

        <div class="text-center mb-4">
            <button class="btn btn-outline-secondary" onclick="window.history.back()">
                <i class="fas fa-arrow-left mr-2"></i> Back to Appointments
            </button>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function processPayment() {
            alert('Payment processing is not yet implemented. This is a placeholder for the payment gateway integration.\n\nTotal Amount: Php <?= number_format($totalAmount, 2) ?>\n\nPlease contact the LGU office for payment instructions.');
            
            // TODO: Integrate with payment gateway (e.g., GCash, PayMaya, etc.)
            // Example: redirect to payment gateway
            // window.location.href = 'payment_gateway.php?appointment_id=<?= $appointmentId ?>&amount=<?= $totalAmount ?>';
        }
    </script>
</body>
</html>

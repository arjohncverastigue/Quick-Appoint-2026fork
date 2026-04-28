<?php
session_start();
if (!isset($_SESSION['auth_id']) || $_SESSION['role'] !== 'Admin') {
    http_response_code(403);
    header('Content-Type: application/json');
    echo json_encode([
        'status' => 'error',
        'message' => 'Unauthorized access'
    ]);
    exit();
}

include '../../conn.php';
header('Content-Type: application/json');

$deptId = $_POST['department_id'] ?? null;
$name = trim($_POST['name'] ?? '');
$acronym = trim($_POST['acronym'] ?? '');
$description = trim($_POST['description'] ?? '');

$serviceIds = $_POST['service_ids'] ?? [];
$serviceNames = $_POST['service_names'] ?? [];
$serviceDescriptions = $_POST['service_descriptions'] ?? [];
$requirementsMap = $_POST['requirements'] ?? [];

// Fees data
$feeIds = $_POST['fee_ids'] ?? [];
$feeNames = $_POST['fee_names'] ?? [];
$feeAmounts = $_POST['fee_amounts'] ?? [];
$feeDescriptions = $_POST['fee_descriptions'] ?? [];
$feeIdsNew = $_POST['fee_ids_new'] ?? [];
$feeNamesNew = $_POST['fee_names_new'] ?? [];
$feeAmountsNew = $_POST['fee_amounts_new'] ?? [];
$feeDescriptionsNew = $_POST['fee_descriptions_new'] ?? [];

if (!$deptId || !$name || empty($serviceNames)) {
    http_response_code(400);
    echo json_encode(['status' => 'error', 'message' => 'Invalid or missing data.']);
    exit;
}

try {
    $pdo->beginTransaction();

    // Update department basic info
    $stmt = $pdo->prepare("UPDATE departments SET name = ?, acronym = ?, description = ? WHERE id = ?");
    $stmt->execute([$name, $acronym, $description, $deptId]);

    // Process each service
    foreach ($serviceNames as $index => $serviceName) {
        $serviceId = $serviceIds[$index];
        $serviceDesc = isset($serviceDescriptions[$index]) ? trim($serviceDescriptions[$index]) : null;
        $serviceDesc = ($serviceDesc === '') ? null : $serviceDesc;

        // Check if this is a new service (ID starts with 'new_')
        if (strpos($serviceId, 'new') === 0) {
            // Insert new service with description
            $stmt = $pdo->prepare("INSERT INTO department_services (department_id, service_name, description) VALUES (?, ?, ?)");
            $stmt->execute([$deptId, trim($serviceName), $serviceDesc]);
            $newServiceId = $pdo->lastInsertId();

            // Insert requirements for new service
            if (!empty($requirementsMap[$serviceId])) {
                foreach ($requirementsMap[$serviceId] as $req) {
                    if (trim($req) !== '') {
                        $stmt = $pdo->prepare("INSERT INTO service_requirements (service_id, requirement) VALUES (?, ?)");
                        $stmt->execute([$newServiceId, trim($req)]);
                    }
                }
            }
        } else {
            // Update existing service with description
            $stmt = $pdo->prepare("UPDATE department_services SET service_name = ?, description = ? WHERE id = ?");
            $stmt->execute([trim($serviceName), $serviceDesc, $serviceId]);

            // Delete old requirements
            $stmt = $pdo->prepare("DELETE FROM service_requirements WHERE service_id = ?");
            $stmt->execute([$serviceId]);

            // Insert updated requirements
            if (!empty($requirementsMap[$serviceId])) {
                foreach ($requirementsMap[$serviceId] as $req) {
                    if (trim($req) !== '') {
                        $stmt = $pdo->prepare("INSERT INTO service_requirements (service_id, requirement) VALUES (?, ?)");
                        $stmt->execute([$serviceId, trim($req)]);
                    }
                }
            }
        }
    }

    // Delete all existing fees for this department
    $stmt = $pdo->prepare("DELETE FROM department_fees WHERE department_id = ?");
    $stmt->execute([$deptId]);

    // Re-insert existing fees (filter out empty names)
    if (!empty($feeIds) && is_array($feeIds)) {
        $feeStmt = $pdo->prepare("INSERT INTO department_fees (department_id, fee_name, fee_amount, fee_description) VALUES (?, ?, ?, ?)");
        foreach ($feeIds as $index => $feeId) {
            $feeName = isset($feeNames[$index]) ? trim($feeNames[$index]) : '';
            if ($feeName !== '') {
                $feeAmount = isset($feeAmounts[$index]) ? floatval($feeAmounts[$index]) : 0;
                $feeDesc = isset($feeDescriptions[$index]) ? trim($feeDescriptions[$index]) : null;
                $feeStmt->execute([$deptId, $feeName, $feeAmount, $feeDesc]);
            }
        }
    }

    // Insert new fees
    if (!empty($feeIdsNew) && is_array($feeIdsNew)) {
        $feeStmt = $pdo->prepare("INSERT INTO department_fees (department_id, fee_name, fee_amount, fee_description) VALUES (?, ?, ?, ?)");
        foreach ($feeIdsNew as $index => $feeId) {
            $feeName = isset($feeNamesNew[$index]) ? trim($feeNamesNew[$index]) : '';
            if ($feeName !== '') {
                $feeAmount = isset($feeAmountsNew[$index]) ? floatval($feeAmountsNew[$index]) : 0;
                $feeDesc = isset($feeDescriptionsNew[$index]) ? trim($feeDescriptionsNew[$index]) : null;
                $feeStmt->execute([$deptId, $feeName, $feeAmount, $feeDesc]);
            }
        }
    }

    $pdo->commit();
    echo json_encode(['status' => 'success', 'message' => 'Department updated successfully!']);
    exit;

} catch (Exception $e) {
    $pdo->rollBack();
    http_response_code(500);
    echo json_encode(['status' => 'error', 'message' => 'Database error: ' . $e->getMessage()]);
}
?>
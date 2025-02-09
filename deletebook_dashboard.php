<?php
include("data_class.php");

if (isset($_GET['deletebookid'])) {
    $deletebookid = $_GET['deletebookid'];

    $obj = new data();
    $obj->setconnection();
    $obj->deletebook($deletebookid);

    // Redirect back to admin dashboard with a success message
    header("Location: admin_service_dashboard.php?msg=deleted");
    exit();
} else {
    // Redirect if no ID is provided
    header("Location: admin_service_dashboard.php?msg=error");
    exit();
}
?>

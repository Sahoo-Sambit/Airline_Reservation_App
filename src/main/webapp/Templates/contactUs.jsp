<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Custom CSS -->
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
            margin-bottom: 50px;
        }

        .contact-header {
            font-weight: bold;
            font-size: 32px;
            margin-bottom: 30px;
        }

        .contact-info {
            font-size: 20px;
            margin-bottom: 20px;
        }

        .contact-info i {
            margin-right: 10px;
        }

        .contact-img {
            border-radius: 10px;
            box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <img src="https://img.freepik.com/premium-vector/illustration-vector-graphic-cartoon-character-online-registration_516790-1808.jpg" alt="Contact Us" class="img-fluid contact-img "width=500px>
        </div>
        <div class="col-lg-6 mt-5">
            <div class="row mt-5">
                <p class="text-start contact-header text-danger w-responsive mx-auto mb-5 ">Do you have any questions? Please do not hesitate to contact us directly.</p>
            </div>
            <h2 class="contact-header">Contact Us</h2>
            <div class="contact-info">
                <i class="fas fa-building"></i> Flight Reservation System
            </div>
            <div class="contact-info">
                <i class="fas fa-map-marker-alt"></i> India
            </div>
            <div class="contact-info">
                <i class="fas fa-envelope"></i> flightReservation@gmail.com
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS, jQuery, and Popper.js -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

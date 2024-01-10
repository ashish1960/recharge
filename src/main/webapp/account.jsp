<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Payment Page</title>
    <!-- Bootstrap CSS link -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Additional CSS styles -->
    <style>
        body {
            background-color: #f8f9fa;
            color: #495057;
            font-family: 'Arial', sans-serif;
        }

        .container {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }

        h2 {
            color: #007bff;
        }

        .form-control {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 5px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Payment</h2>

        <!-- Form for payment information -->
        <form >
            Card Number: <input type="text" class="form-control" name="cardNumber" required><br>
            Expiration Date: <input type="text" class="form-control" name="expirationDate" placeholder="MM/YYYY" required><br>
            CVV: <input type="password" class="form-control" name="cvv" maxlength="3" required><br>
                     <!-- Hidden input for passing additional information like the recharge ID -->
                <button type="submit" value="Pay Now" class="btn btn-primary"> <a href="transcation_success.jsp">pay now</button></a>
        </form>
    </div>

    <!-- Bootstrap JS and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

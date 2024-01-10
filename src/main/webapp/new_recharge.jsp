<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recharge Page</title>
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

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .modal-content {
            border-radius: 10px;
        }

        label {
            font-weight: bold;
            color: #007bff;
        }

        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            border-radius: 5px;
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
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2>Recharge</h2>

        <!-- Button to trigger the modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#planModal">
            Select Plan
        </button>

        <!-- Form for other inputs -->
        <form action="rechargeController">
            Mobile Number: <input type="text" id="mobileNumber" name="mobile_number" required><br>
            Amount: <input type="text" id="amountInput" name="amount" readonly required><br>
            <!-- Plan Id input, hidden for now, will be updated by JavaScript -->
            <input type="hidden" id="planIdInput" name="planId" required>
            <input type="submit" value="Recharge" class="btn btn-success">
        </form>
    </div>

    <!-- Modal -->
    <div class="modal" id="planModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Select Plan</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- Modal Body -->
                <div class="modal-body">
                    
                    <label for="planSelect">Select Plan:</label>
                    <select id="planSelect" name="planId" class="form-control">
                        <option value="1">₹299 15GB 30 days</option>
                        <option value="2">₹99 1.5GB 15 days</option>
                        <!-- Add more options as needed -->
                    </select>
                </div>

                <!-- Modal Footer -->
               
            </div>
        </div>
    </div>

    <!-- Bootstrap JS and jQuery scripts -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Script to update the amount input based on the selected plan -->
    <script>
        $('#planModal').on('hidden.bs.modal', function (e) {
            // Update the amount input when the modal is closed
            var selectedPlan = $('#planSelect').val();
            // Replace this with logic to fetch the amount from the database based on the selected plan
            var amount = fetchAmount(selectedPlan);
            $('#amountInput').val(amount);
            // Update the hidden planIdInput
            $('#planIdInput').val(selectedPlan);
        });

        // Function to fetch the amount based on the selected plan
        function fetchAmount(planId) {
            // Replace this with actual logic to fetch the amount from the database
            // You might need to make an AJAX call to your server
            // For simplicity, returning a hardcoded value here
            if (planId === '1') {
                return 100.00;
            } else if (planId === '2') {
                return 99.00;
            } else {
                return 0.00;
            }
        }

        // Function to submit the form after selecting the plan
        function submitRecharge() {
            // Optionally, you can add additional logic before submitting the form
            // For example, validate the mobile number, amount, etc.
            // Then submit the form
            document.forms[0].submit();
        }
    </script>
</body>
</html>

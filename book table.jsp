<%
   
    double[] tablePrices = {500.00, 1000.00, 500.00, 500.00, 500.00};
%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restaurant Table Booking</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flatpickr/4.6.13/flatpickr.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        
        .booking-container {
            width: 100%;
            max-width: 600px;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 30px;
            margin-bottom: 30px;
        }
        
        .header {
            background-color: orange;
            color: white;
            padding: 15px 20px;
            font-size: 18px;
            font-weight: bold;
        }
        
        .content {
            padding: 20px;
        }
        
        .tables-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .table-option {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        
        .table-img {
            background-color: #e5e5e5;
            border-radius: 5px;
            width: 100%;
            height: 80px;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 5px;
            position: relative;
            cursor: pointer;
        }
        
        .table-img.selected {
            border: 2px solid #FF8C2E;
        }
        
        .table-img.large {
            grid-column: span 2;
        }
        
        .rectangle-table {
            width: 70%;
            height: 40px;
            background-color: #d0d0d0;
            border-radius: 5px;
            position: relative;
        }
        
        .table-img.large .rectangle-table {
            width: 85%;
        }
        
        .chair {
            width: 10px;
            height: 20px;
            background-color: #b5b5b5;
            border-radius: 3px;
            position: absolute;
        }
        
        .left-chair {
            left: -15px;
            top: 10px;
        }
        
        .right-chair {
            right: -15px;
            top: 10px;
        }
        
        .top-chair {
            top: -15px;
            left: 50%;
            transform: translateX(-50%) rotate(90deg);
        }
        
        .bottom-chair {
            bottom: -15px;
            left: 50%;
            transform: translateX(-50%) rotate(90deg);
        }
        
        .long-table .top-chair, .long-table .bottom-chair {
            width: 10px;
            height: 20px;
        }
        
        .long-table .top-chair:nth-child(3),
        .long-table .bottom-chair:nth-child(7) {
            left: 30%;
        }
        
        .long-table .top-chair:nth-child(4),
        .long-table .bottom-chair:nth-child(8) {
            left: 70%;
        }
        
        .table-name {
            font-size: 14px;
            color: #333;
        }
        
        .form-group {
            margin-bottom: 15px;
        }
        
        label {
            display: block;
            font-size: 14px;
            color: #333;
            margin-bottom: 5px;
        }
        
        input, select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }
        
        .btn {
            display: block;
            width: 100%;
            padding: 12px;
            background-color: orange;
            color: white;
            border: none;
            border-radius: 10px;
            font-size: 16px;
            cursor: pointer;
            text-align: center;
            margin-bottom: 15px;
        }
        
        .payment-section {
            margin-top: 20px;
            display: none;
        }
        
        .payment-section h2 {
            margin-bottom: 15px;
            font-size: 20px;
            color: #333;
        }
        
        .payment-details {
            margin-bottom: 20px;
        }
        
        .payment-row {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
        }
        
        .payment-row.total {
            font-weight: bold;
            margin-top: 10px;
            padding-top: 10px;
            border-top: 1px solid #ddd;
        }
        
        /* Calendar and Time Selection Styles */
        .date-time-selector {
            margin-bottom: 20px;
        }
        
        /* Table Availability Indicator */
        .availability-indicator {
            position: absolute;
            top: 5px;
            right: 5px;
            width: 12px;
            height: 12px;
            border-radius: 50%;
        }
        
        .available {
            background-color: #4CAF50;
        }
        
        .booked {
            background-color: #F44336;
        }
        
        .pending {
            background-color: #FFC107;
        }
        
        /* Flatpickr Customization */
        .flatpickr-day.selected {
            background: #FF8C2E;
            border-color: #FF8C2E;
        }
        
        .flatpickr-day.selected:hover {
            background: #e67e27;
            border-color: #e67e27;
        }

        /* Time restriction notice */
        .time-restriction {
            font-size: 12px;
            color: #666;
            margin-top: 5px;
            font-style: italic;
        }
        
        /* Price calculator section */
        .price-calculator {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            border: 1px solid #eee;
        }
        
        .price-calculator h3 {
            margin-bottom: 10px;
            color: #333;
            font-size: 16px;
        }
        
        .price-options {
            display: flex;
            flex-wrap: wrap;
            gap: 10px;
            margin-bottom: 15px;
        }
        
        .price-option {
            display: flex;
            align-items: center;
            gap: 5px;
        }
        
        .price-option input {
            width: auto;
        }
        
        .price-summary {
            background-color: #fff;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ddd;
        }
        
        /* Loading overlay */
        .loading-overlay {
            display: none;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            z-index: 1000;
            justify-content: center;
            align-items: center;
        }
        
        .loading-spinner {
            width: 50px;
            height: 50px;
            border: 5px solid #f3f3f3;
            border-top: 5px solid orange;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        
        /* User message */
        .user-message {
            background-color: #e8f5e9;
            border: 1px solid #c8e6c9;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 15px;
            display: none;
        }
        
        /* Debug info */
        .debug-info {
            margin-top: 20px;
            padding: 10px;
            background-color: #f5f5f5;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 12px;
            color: #666;
            display: none;
        }
    </style>
</head>
<body>
    <!-- Loading overlay -->
    <div class="loading-overlay" id="loading-overlay">
        <div class="loading-spinner"></div>
    </div>

    <div class="booking-container">
        <div class="header">Select table</div>
        <div class="content">
            <!-- User message for registration status -->
            <div class="user-message" id="user-message"></div>
            
            <div class="tables-grid">
                <div class="table-option">
                    <div class="table-img" data-table="Table 01" data-price="<%= tablePrices[0] %>" data-seats="4">
                        <div class="availability-indicator available"></div>
                        <div class="rectangle-table">
                            <div class="chair left-chair"></div>
                            <div class="chair right-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair bottom-chair"></div>
                        </div>
                    </div>
                    <div class="table-name">Table 01 (₹<%= String.format("%.2f", tablePrices[0]) %>)</div>
                </div>
                
                <div class="table-option" style="grid-column: span 2;">
                    <div class="table-img large" data-table="Table 02 Large" data-price="<%= tablePrices[1] %>" data-seats="8">
                        <div class="availability-indicator available"></div>
                        <div class="rectangle-table long-table">
                            <div class="chair left-chair"></div>
                            <div class="chair right-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair bottom-chair"></div>
                            <div class="chair bottom-chair"></div>
                            <div class="chair bottom-chair"></div>
                        </div>
                    </div>
                    <div class="table-name">Table 02 Large (₹<%= String.format("%.2f", tablePrices[1]) %>)</div>
                </div>
                
                <div class="table-option">
                    <div class="table-img" data-table="Table 03" data-price="<%= tablePrices[2] %>" data-seats="4">
                        <div class="availability-indicator available"></div>
                        <div class="rectangle-table">
                            <div class="chair left-chair"></div>
                            <div class="chair right-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair bottom-chair"></div>
                        </div>
                    </div>
                    <div class="table-name">Table 03 (₹<%= String.format("%.2f", tablePrices[2]) %>)</div>
                </div>
                
                <div class="table-option">
                    <div class="table-img" data-table="Table 04" data-price="<%= tablePrices[3] %>" data-seats="4">
                        <div class="availability-indicator available"></div>
                        <div class="rectangle-table">
                            <div class="chair left-chair"></div>
                            <div class="chair right-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair bottom-chair"></div>
                        </div>
                    </div>
                    <div class="table-name">Table 04 (₹<%= String.format("%.2f", tablePrices[3]) %>)</div>
                </div>
                
                <div class="table-option">
                    <div class="table-img" data-table="Table 05" data-price="<%= tablePrices[4] %>" data-seats="4">
                        <div class="availability-indicator available"></div>
                        <div class="rectangle-table">
                            <div class="chair left-chair"></div>
                            <div class="chair right-chair"></div>
                            <div class="chair top-chair"></div>
                            <div class="chair bottom-chair"></div>
                        </div>
                    </div>
                    <div class="table-name">Table 05 (₹<%= String.format("%.2f", tablePrices[4]) %>)</div>
                </div>
            </div>
            
            <form id="booking-form" method="post" action="process-booking.jsp">
                <div class="form-group">
                    <label>Selected table - </label>
                    <select id="table-select" name="table">
                        <option value="" data-price="0">Choose a table</option>
                        <option value="Table 01" data-price="<%= tablePrices[0] %>">Table 01</option>
                        <option value="Table 02 Large" data-price="<%= tablePrices[1] %>">Table 02 Large</option>
                        <option value="Table 03" data-price="<%= tablePrices[2] %>">Table 03</option>
                        <option value="Table 04" data-price="<%= tablePrices[3] %>">Table 04</option>
                        <option value="Table 05" data-price="<%= tablePrices[4] %>">Table 05</option>
                    </select>
                </div>
                
                <div class="form-group">
                    <label for="name">Name:</label>
                    <input type="text" id="name" name="name" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="phone">Phone Number:</label>
                    <input type="text" id="phone" name="phone" required>
                </div>
                
                <div class="form-group">
                    <label>Total Price: ₹</label>
                    <span id="total-price">0.00</span>
                    <input type="hidden" id="total-price-input" name="total_price" value="0.00">
                </div>
                
                <div class="date-time-selector">
                    <div class="form-group">
                        <label for="date-picker">Select Date</label>
                        <input type="date" id="date-picker" name="date" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="time-picker">Select Time</label>
                        <input type="time" id="time-picker" name="time" required>
                        <div class="time-restriction">Restaurant hours: 12:00 PM - 10:00 PM (22:00)</div>
                    </div>
                </div>
                
                <button type="submit" class="btn" id="confirm-btn">Confirm</button>
            </form>
            
            <script>
document.querySelectorAll(".table-img").forEach(table => {
    table.addEventListener("click", function() {
        let selectedPrice = parseFloat(this.getAttribute("data-price")).toFixed(2);
        document.getElementById("table-select").value = this.getAttribute("data-table");
        document.getElementById("total-price").innerText = selectedPrice;
        document.getElementById("total-price-input").value = selectedPrice; 
    });
});
</script>

        </div>
    </div>
</body>
</html>
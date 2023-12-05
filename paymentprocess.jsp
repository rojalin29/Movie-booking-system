<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Movie Ticket Payment Page</title>
</head>
<body>
	<h1>Movie Ticket Payment Page</h1>
	<form action="process-payment" method="post">
		<label for="seat-type">Select Seat Type:</label>
		<select name="seat-type" id="seat-type">
			<option value="silver">Silver (Rs. 100)</option>
			<option value="gold">Gold (Rs. 200)</option>
			<option value="platinum">Platinum (Rs. 400)</option>
		</select>
		<br>
		<label for="num-seats">Number of Seats:</label>
		<input type="number" name="num-seats" min="1" max="6" required>
		<br>
		<label for="total-cost">Total Cost:</label>
		<input type="text" name="total-cost" readonly>
		<br>
		<label for="cardholder-name">Cardholder Name:</label>
		<input type="text" name="cardholder-name" required>
		<br>
		<label for="card-number">Card Number:</label>
		<input type="text" name="card-number" required pattern="[0-9]{16}">
		<br>
		<label for="expiry-month">Expiry Month:</label>
		<input type="text" name="expiry-month" required pattern="[0-9]{2}">
		<br>
		<label for="expiry-year">Expiry Year:</label>
		<input type="text" name="expiry-year" required pattern="[0-9]{4}">
		<br>
		<label for="cvv">CVV:</label>
		<input type="text" name="cvv" required pattern="[0-9]{3}">
		<br>
		<button type="submit">Pay Now</button>
	</form>
	
	<script>
		const seatType = document.getElementById("seat-type");
		const numSeats = document.getElementsByName("num-seats")[0];
		const totalCost = document.getElementsByName("total-cost")[0];
		
		// Calculate total cost when seat type or number of seats is changed
		function calculateTotalCost() {
			const seatTypeValue = seatType.value;
			const numSeatsValue = numSeats.value;
			let costPerSeat = 0;
			if (seatTypeValue === "silver") {
				costPerSeat = 100;
			} else if (seatTypeValue === "gold") {
				costPerSeat = 200;
			} else if (seatTypeValue === "platinum") {
				costPerSeat = 400;
			}
			const totalCostValue = costPerSeat * numSeatsValue;
			totalCost.value = "Rs. " + totalCostValue;
		}
		
		seatType.addEventListener("change", calculateTotalCost);
		numSeats.addEventListener("input", calculateTotalCost);
	</script>
</body>
</html>

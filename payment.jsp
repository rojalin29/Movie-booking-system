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
	<form action="payment" method="post">
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

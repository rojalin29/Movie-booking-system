<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking1</title>
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="style1.css">
</head>
<body>
  <header>
        <h1>BookYourShow</h1>
    </header>
    <nav>
        <ul>
          <li><a href="homepage.jsp">Home</a></li>
          <li><a href="about.html">About Us</a></li>
          <li><a href="movies.jsp">Movies</a></li>
          <li><a href="login.jsp">Login</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
        </ul>
    </nav>
 <form action="payment.html">
        	<label for="list">Choose Date And Time</label>
        	<select id="list" name="date&time" size="1">
        	<option value="friday">Friday, April 29th - 7:00 PM</option>
        	<option value="saturday">Saturday, April 30th - 2:00 PM</option>
        	<option value="sunday">Sunday, May 1st - 4:00 PM</option>
        	</select>
        	<br>
        </form>
<form action="payment.html" method="post">
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
		 <a href="payment.html"><button type="submit">Pay Now</button></a>
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

		function makePayment() {
			document.getElementById('mySelect').options[1].selected = true;
		}
	</script>
  <div>
    <footer style="position:relative;bottom:-5px">
        <p>&copy; 2023 Movie Ticket Booking System. All rights reserved.</p>
    
    </footer>
    </div>  
</body>
</html>

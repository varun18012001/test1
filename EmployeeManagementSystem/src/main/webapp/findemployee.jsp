<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Find Employee</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	text-align: center;
	margin: 50px;
}

h2 {
	color: #333;
}

form {
	width: 50%;
	margin: auto;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}

label {
	display: block;
	margin-bottom: 8px;
}

input {
	width: 100%;
	padding: 8px;
	margin-bottom: 15px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button {
	background-color: #2ecc71;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
}

button:hover {
	background-color: #27ae60;
}
</style>
</head>
<body>
	<h2>Find Employee</h2>

	<form action="findemployee" method="post">
		<label for="id">Employee ID:</label> <input type="number" id="id"
			name="id" required>

		<button type="submit">Find</button>
	</form>
</body>
</html>

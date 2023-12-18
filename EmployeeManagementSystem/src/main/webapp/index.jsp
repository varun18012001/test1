<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Welcome to Company</title>
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

a {
	text-decoration: none;
	color: #fff;
}

.create-btn {
	background-color: #3498db;
}

.find-btn {
	background-color: #2ecc71;
}

.update-btn {
	background-color: #e67e22;
}

.delete-btn {
	background-color: #e74c3c;
}

button {
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin: 10px;
	font-size: 16px;
}

button:hover {
	opacity: 0.8;
}
</style>
</head>
<body>
	<h2>Welcome To Company</h2>

	<a href="save"><button class="create-btn" >Create</button></a>
	<a href="find"><button class="find-btn" >Find</button></a>
	<a href="update"><button class="update-btn" >Update</button></a>
	<a href="delete"><button class="delete-btn">Delete</button></a>
</body>
</html>

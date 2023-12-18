<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	width: 50%;
	padding: 20px;
	background-color: #fff;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	margin-top: 50px;
}

label {
	display: block;
	margin-bottom: 8px;
	color: #333;
}

input {
	width: calc(100% - 16px);
	padding: 8px;
	margin-bottom: 15px;
	box-sizing: border-box;
	border: 1px solid #ccc;
	border-radius: 4px;
}

button:hover {
	background-color: red;
	color: black;
}

button {
	width: calc(100% - 16px);
	display: flex;
	padding: 15px;
	text-align: center;
	background-color: green;
	font-size: 10px;
	color: white;
	justify-content: center;
	font-size: 18px;
}
</style>
</head>
<body>
	<div class="container">
		<h1>Your Details</h1>
		<form:form action="detail" modelAttribute="employee" method="post">
			<label for="id">Employee ID:</label>
			<form:input path="id" id="id" readonly="true" />

			<label for="name">Employee Name:</label>
			<form:input path="name" id="name" readonly="true" />

			<label for="email">Employee Email:</label>
			<form:input path="email" id="email" readonly="true" />

			<label for="phno">Employee Phone:</label>
			<form:input path="phno" id="phno" readonly="true" />

			<label for="age">Employee Age:</label>
			<form:input path="age" id="age" readonly="true" />

			<label for="gender">Employee Gender:</label>
			<form:input path="gender" id="gender" readonly="true" />

			<label for="role">Employee Role:</label>
			<form:input path="role" id="role" readonly="true" />
			<a href="index.jsp"><button type="submit">Continue</button></a>
		</form:form>
	</div>
</body>
</html>
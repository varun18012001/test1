<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
            background-color: #ff4040; /* Light red */
            color: black;
        }

        button {
            width: calc(100% - 16px);
            display: flex;
            padding: 15px;
            text-align: center;
            background-color: #4caf50; /* Green */
            font-size: 18px;
            color: white;
            justify-content: center;
        }
    </style>
</head>
<body>
    ${msg}
    <div class="container">
        <form:form action="saveemployee" modelAttribute="employee" method="post">
            <label for="id">Employee ID:</label>
            <form:input path="id" id="id" />

            <label for="name">Employee Name:</label>
            <form:input path="name" id="name" />

            <label for="email">Employee Email:</label>
            <form:input path="email" id="email" />

            <label for="phno">Employee Phone:</label>
            <form:input path="phno" id="phno" />

            <label for="age">Employee Age:</label>
            <form:input path="age" id="age" />

            <label for="gender">Employee Gender:</label>
            <form:input path="gender" id="gender" />

            <label for="role">Employee Role:</label>
            <form:input path="role" id="role" />
            
            <button type="submit" onclick="ShowpopUp()">Register</button>
        </form:form>
    </div>
    <script type="text/javascript">
        var message = "${msg}";
        function ShowpopUp() {
            if (message) {
                alert("Inserted....!");
            } else {
                alert("Not Inserted....!");
            }
        }
    </script>
</body>
</html>

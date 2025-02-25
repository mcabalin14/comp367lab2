<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.time.LocalTime" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>COMP 367 - Lab 2 | Michael Angelo Cabalinan</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            text-align: center;
            margin: 0;
            padding: 50px;
        }
        h1 {
            color: #333;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 60%;
            max-width: 800px;
            margin: auto;
            display: inline-block;
        }
    </style>
</head>
<body>
    <div class="container">
        <%
            String name = request.getParameter("name");
            if (name == null || name.trim().isEmpty()) {
                name = "Your Grace"; 
            }
            LocalTime now = LocalTime.now();
            String greeting = now.getHour() < 12 ? "Good morning" : "Good afternoon";
        %>
        <h1><%= greeting %>, <%= name %>! Welcome to COMP367!</h1>
        <p>Comp367 Lab 2</p>
        <p>Michael Angelo Cabalinan</p>
        <p>300924795</p>
    </div>
</body>
</html>



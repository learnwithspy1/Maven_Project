<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Hello World JSP</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            text-align: center;
            margin-top: 80px;
        }
        h1 {
            color: #333;
        }
        p {
            color: #555;
        }
        .box {
            background: white;
            padding: 30px;
            width: 40%;
            margin: auto;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #ccc;
        }
    </style>
</head>
<body>

    <div class="box">
        <h1>Welcome to My WebApp</h1>
        <p>This is a sample JSP page deployed using Maven.</p>

        <hr style="margin: 20px">

        <p>Current Time (JSP example):</p>
        <h3><%= new java.util.Date() %></h3>
    </div>

</body>
</html>

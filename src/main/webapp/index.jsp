<!DOCTYPE html>
<html>
<head>
    <title>Sample Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;
            margin: 0;
            padding: 40px;
        }
        .container {
            background: white;
            width: 400px;
            margin: auto;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0px 0px 10px #bbb;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
        }
        input, select, textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0 20px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        button {
            width: 100%;
            padding: 12px;
            background: #0066ff;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        button:hover {
            background: #0051cc;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Registration Form</h2>

    <form action="submit.jsp" method="post">
        
        <label>Full Name</label>
        <input type="text" name="fullname" required>

        <label>Email</label>
        <input type="email" name="email" required>

        <label>Phone Number</label>
        <input type="text" name="phone" required>

        <label>Gender</label>
        <select name="gender" required>
            <option value="">-- Select --</option>
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select>

        <label>Address</label>
        <textarea name="address" rows="3" required></textarea>

        <button type="submit">Submit</button>

    </form>
</div>

</body>
</html>

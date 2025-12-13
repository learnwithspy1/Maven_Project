<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Flight Booking</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <style>
    body {
      font-family: Arial, Helvetica, sans-serif;
      background: linear-gradient(120deg, #74ebd5, #acb6e5);
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 900px;
      margin: 40px auto;
      background: #ffffff;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 10px 25px rgba(0,0,0,0.15);
    }
    h1 {
      text-align: center;
      color: #2c3e50;
      margin-bottom: 20px;
    }
    .form-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 15px;
    }
    label {
      font-weight: bold;
      font-size: 14px;
    }
    input, select {
      width: 100%;
      padding: 10px;
      margin-top: 5px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 14px;
    }
    .btn {
      margin-top: 25px;
      width: 100%;
      padding: 12px;
      font-size: 16px;
      font-weight: bold;
      color: #fff;
      background: #3498db;
      border: none;
      border-radius: 8px;
      cursor: pointer;
      transition: background 0.3s;
    }
    .btn:hover {
      background: #2980b9;
    }
    .result {
      margin-top: 25px;
      padding: 15px;
      background: #ecf9f1;
      border: 1px solid #2ecc71;
      border-radius: 8px;
      display: none;
    }
    .footer {
      text-align: center;
      margin-top: 30px;
      font-size: 13px;
      color: #666;
    }
  </style>
</head>
<body>

<div class="container">
  <h1>✈ Flight Booking</h1>

  <form id="flightForm">
    <div class="form-grid">
      <div>
        <label>From</label>
        <input type="text" id="from" placeholder="City / Airport" required>
      </div>
      <div>
        <label>To</label>
        <input type="text" id="to" placeholder="City / Airport" required>
      </div>
      <div>
        <label>Departure Date</label>
        <input type="date" id="depart" required>
      </div>
      <div>
        <label>Return Date</label>
        <input type="date" id="return">
      </div>
      <div>
        <label>Passengers</label>
        <select id="passengers">
          <option>1</option>
          <option>2</option>
          <option>3</option>
          <option>4</option>
          <option>5</option>
        </select>
      </div>
      <div>
        <label>Class</label>
        <select id="class">
          <option>Economy</option>
          <option>Premium Economy</option>
          <option>Business</option>
          <option>First Class</option>
        </select>
      </div>
    </div>

    <button type="submit" class="btn">Search Flights</button>
  </form>

  <div class="result" id="result"></div>

  <div class="footer">
    Demo Flight Booking Page | HTML + CSS + JavaScript (Single File)
  </div>
</div>

<script>
  document.getElementById("flightForm").addEventListener("submit", function(e) {
    e.preventDefault();

    const from = document.getElementById("from").value;
    const to = document.getElementById("to").value;
    const depart = document.getElementById("depart").value;
    const ret = document.getElementById("return").value || "N/A";
    const passengers = document.getElementById("passengers").value;
    const travelClass = document.getElementById("class").value;

    const result = document.getElementById("result");
    result.style.display = "block";
    result.innerHTML = `
      <h3>Flight Search Details</h3>
      <p><b>From:</b> ${from}</p>
      <p><b>To:</b> ${to}</p>
      <p><b>Departure:</b> ${depart}</p>
      <p><b>Return:</b> ${ret}</p>
      <p><b>Passengers:</b> ${passengers}</p>
      <p><b>Class:</b> ${travelClass}</p>
      <p style="color: green; font-weight: bold;">Flights found successfully (Demo)</p>
    `;
  });
</script>

</body>
</html>

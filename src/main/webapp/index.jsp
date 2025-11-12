<html>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Eventify - Event Management</title>
  <style>
    body {
      margin: 0;
      font-family: 'Segoe UI', sans-serif;
      background-color: #f4f4f4;
      color: #333;
    }

    header {
      background-color: #2c3e50;
      color: white;
      padding: 20px;
      text-align: center;
    }

    nav ul {
      list-style: none;
      padding: 0;
      display: flex;
      justify-content: center;
      gap: 20px;
      margin-top: 10px;
    }

    nav a {
      color: white;
      text-decoration: none;
      font-weight: bold;
    }

    .hero {
      background: url('https://via.placeholder.com/1200x400') no-repeat center center/cover;
      color: white;
      text-align: center;
      padding: 100px 20px;
    }

    .hero .btn {
      background-color: #e67e22;
      color: white;
      padding: 10px 20px;
      text-decoration: none;
      font-weight: bold;
      border-radius: 5px;
    }

    .events {
      padding: 40px 20px;
      text-align: center;
    }

    .event-card {
      background-color: white;
      margin: 20px auto;
      padding: 20px;
      max-width: 600px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    footer {
      background-color: #2c3e50;
      color: white;
      text-align: center;
      padding: 10px;
    }
  </style>
</head>
<body>
  <header>
    <h1>Eventify</h1>
    <nav>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Events</a></li>
        <li><a href="#">About</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
  </header>

  <section class="hero">
    <h2>Plan. Promote. Celebrate.</h2>
    <p>Your trusted partner for unforgettable events.</p>
    <a href="#" class="btn">Explore Events</a>
  </section>

  <section class="events">
    <h2>Upcoming Events</h2>
    <div class="event-card">
      <h3>Tech Conference 2025</h3>
      <p>Join industry leaders for a day of innovation and networking.</p>
      <span>Date: Nov 20, 2025</span>
    </div>
    <div class="event-card">
      <h3>Wedding Expo</h3>
      <p>Discover vendors, trends, and ideas for your big day.</p>
      <span>Date: Dec 5, 2025</span>
    </div>
  </section>

  <footer>
    <p>&copy; 2025 Eventify. All rights reserved.</p>
  </footer>
</body></html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Simple Webpage</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
        }
        header {
            background: #007BFF;
            color: white;
            padding: 1rem 0;
            text-align: center;
        }
        nav {
            background: #f4f4f4;
            padding: 0.5rem;
            text-align: center;
        }
        nav a {
            margin: 0 10px;
            text-decoration: none;
            color: #333;
        }
        main {
            padding: 1rem;
        }
        footer {
            background: #333;
            color: white;
            text-align: center;
            padding: 1rem 0;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to My Website</h1>
        <p>Your one-stop destination for learning HTML!</p>
    </header>
    <nav>
        <a href="#home">Home</a>
        <a href="#about">About</a>
        <a href="#contact">Contact</a>
    </nav>
    <main>
        <section id="home">
            <h2>Home</h2>
            <p>This is the homepage of my simple website. Here, you can find various resources and information.</p>
        </section>
        <section id="about">
            <h2>About</h2>
            <p>This website is built using HTML and CSS to demonstrate clean and responsive design practices.</p>
        </section>
        <section id="contact">
            <h2>Contact</h2>
            <p>Feel free to reach out via email at <a href="mailto:example@example.com">example@example.com</a>.</p>
        </section>
    </main>
    <footer>
        <p>&copy; 2025 My Simple Webpage. All rights reserved.</p>
    </footer>
</body>
</html>

<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>My Home — Welcome</title>
  <meta name="description" content="Simple modern homepage template — hero, features, gallery and contact." />

  <!-- Simple, self-contained styles -->
  <style>
    :root{
      --bg:#f6f8fb;
      --card:#ffffff;
      --muted:#6b7280;
      --accent:#2563eb;
      --glass: rgba(255,255,255,0.6);
      font-family: Inter, system-ui, -apple-system, "Segoe UI", Roboto, "Helvetica Neue", Arial;
    }
    *{box-sizing:border-box}
    body{margin:0;background:linear-gradient(180deg,#f8fbff 0,#f6f8fb 100%);color:#0f172a;line-height:1.45}
    .container{max-width:1100px;margin:0 auto;padding:28px;}

    /* Header */
    header{display:flex;align-items:center;justify-content:space-between;padding:14px 0}
    .brand{display:flex;gap:12px;align-items:center;text-decoration:none;color:inherit}
    .logo{width:44px;height:44px;border-radius:10px;background:linear-gradient(135deg,#60a5fa,#7c3aed);display:flex;align-items:center;justify-content:center;color:#fff;font-weight:700}
    nav{display:flex;gap:18px;align-items:center}
    nav a{color:var(--muted);text-decoration:none;padding:8px 10px;border-radius:8px}
    nav a.primary{background:var(--accent);color:#fff;padding:8px 12px}
    .menu-toggle{display:none}

    /* Hero */
    .hero{display:grid;grid-template-columns:1fr 420px;gap:28px;align-items:center;padding:28px 0}
    .hero h1{font-size:2.1rem;margin:0 0 12px}
    .hero p{color:var(--muted);margin:0 0 18px}
    .cta{display:flex;gap:12px}
    .btn{background:var(--accent);color:#fff;padding:10px 16px;border-radius:10px;text-decoration:none}
    .btn.ghost{background:transparent;border:1px solid #e6eefc;color:var(--accent)}

    /* Card preview */
    .preview{background:linear-gradient(180deg,#fff,#fbfdff);border-radius:14px;padding:18px;box-shadow:0 6px 20px rgba(15,23,42,0.06)}
    .preview img{width:100%;height:260px;object-fit:cover;border-radius:10px;display:block}
    .meta{display:flex;justify-content:space-between;align-items:center;margin-top:10px;color:var(--muted);font-size:0.9rem}

    /* Features */
    .features{display:grid;grid-template-columns:repeat(auto-fit,minmax(230px,1fr));gap:16px;margin:26px 0}
    .card{background:var(--card);border-radius:12px;padding:16px;box-shadow:0 6px 18px rgba(9,10,11,0.03)}
    .card h3{margin:0 0 8px;font-size:1.05rem}
    .card p{margin:0;color:var(--muted);font-size:0.95rem}

    /* Gallery */
    .gallery{display:grid;grid-template-columns:repeat(3,1fr);gap:8px;margin:18px 0}
    .thumb{background:linear-gradient(180deg,#eef7ff,#fff);height:120px;border-radius:8px;display:flex;align-items:center;justify-content:center;color:var(--muted);font-weight:600}

    /* Contact */
    .contact{display:grid;grid-template-columns:1fr 1fr;gap:16px;margin:20px 0}
    label{display:block;font-size:0.9rem;margin-bottom:6px;color:var(--muted)}
    input,textarea{width:100%;padding:10px;border-radius:8px;border:1px solid #e6eefc;background:transparent}
    textarea{min-height:120px;resize:vertical}

    /* Footer */
    footer{padding:20px 0;color:var(--muted);font-size:0.9rem;text-align:center;border-top:1px solid rgba(15,23,42,0.03);margin-top:28px}

    /* Responsive */
    @media (max-width:920px){
      .hero{grid-template-columns:1fr}
      .preview{order:-1}
      .gallery{grid-template-columns:repeat(2,1fr)}
      .contact{grid-template-columns:1fr}
      nav{display:none}
      .menu-toggle{display:block}
    }
  </style>
</head>
<body>
  <div class="container">
    <header>
      <a class="brand" href="#">
        <div class="logo">MP</div>
        <div>
          <div style="font-weight:700">MyProject</div>
          <div style="font-size:0.8rem;color:var(--muted)">modern starter</div>
        </div>
      </a>

      <nav aria-label="Main navigation">
        <a href="#features">Features</a>
        <a href="#gallery">Gallery</a>
        <a href="#contact">Contact</a>
        <a class="primary" href="#get">Get Started</a>
      </nav>

      <button class="menu-toggle" aria-expanded="false" aria-controls="mobile-menu" onclick="toggleMenu(this)">☰</button>
    </header>

    <main>
      <section class="hero" aria-labelledby="hero-heading">
        <div>
          <h1 id="hero-heading">Deploy. Preview. Repeat. — Fast.</h1>
          <p>Simple Playbook + Docker workflow to build and run your app. This starter page includes hero, features, gallery and contact — all in a single file.</p>
          <div class="cta">
            <a class="btn" href="#get">Get Started</a>
            <a class="btn ghost" href="#features">Learn More</a>
          </div>

          <div class="features" id="features" style="margin-top:22px">
            <div class="card">
              <h3>Automate</h3>
              <p>Run repeatable tasks using Ansible or simple scripts to ensure consistent deployments.</p>
            </div>
            <div class="card">
              <h3>Containerize</h3>
              <p>Package your app with Docker for predictable runtime and easy scaling.</p>
            </div>
            <div class="card">
              <h3>Monitor</h3>
              <p>Simple health checks and metrics help you spot problems early and fix them fast.</p>
            </div>
          </div>
        </div>

        <aside class="preview" aria-label="App preview">
          <!-- Placeholder image — replace with your app screenshot -->
          <img src="data:image/svg+xml;utf8,
            <svg xmlns='http://www.w3.org/2000/svg' width='800' height='520'>
              <rect width='100%' height='100%' fill='%23eef6ff'/>
              <text x='50%' y='50%' dominant-baseline='middle' text-anchor='middle' fill='%23707f8f' font-size='28'>App Preview</text>
            </svg>"
            alt="App preview (placeholder)" />
          <div class="meta">
            <div>v1.0 • Live Preview</div>
            <div style="color:var(--muted)">Public</div>
          </div>
        </aside>
      </section>

      <section id="gallery" aria-labelledby="gallery-heading">
        <h2 id="gallery-heading" style="margin:12px 0 8px">Gallery</h2>
        <div class="gallery" role="list">
          <div class="thumb">Screenshot 1</div>
          <div class="thumb">Screenshot 2</div>
          <div class="thumb">Screenshot 3</div>
        </div>
      </section>

      <section id="contact" aria-labelledby="contact-heading">
        <h2 id="contact-heading" style="margin:12px 0 8px">Contact</h2>
        <form onsubmit="event.preventDefault(); alert('Thanks — form submitted (demo)');" class="contact" aria-label="Contact form">
          <div>
            <label for="name">Name</label>
            <input id="name" name="name" placeholder="Your name" required />
          </div>
          <div>
            <label for="email">Email</label>
            <input id="email" type="email" name="email" placeholder="you@example.com" required />
          </div>
          <div style="grid-column:1/-1">
            <label for="message">Message</label>
            <textarea id="message" name="message" placeholder="Tell us about your project"></textarea>
          </div>
          <div style="grid-column:1/-1;display:flex;justify-content:flex-end">
            <button class="btn" type="submit">Send Message</button>
          </div>
        </form>
      </section>
    </main>

    <footer>
      © <span id="year"></span> MyProject — Built with HTML &amp; CSS. • <a href="#" style="color:var(--muted);text-decoration:underline">Privacy</a>
    </footer>
  </div>

  <script>
    // small helpers
    document.getElementById('year').textContent = new Date().getFullYear();

    function toggleMenu(btn){
      var expanded = btn.getAttribute('aria-expanded') === 'true';
      btn.setAttribute('aria-expanded', String(!expanded));
      // very small mobile menu fallback
      var nav = document.querySelector('nav');
      if(nav.style.display === 'flex'){ nav.style.display = 'none'; }
      else{ nav.style.display = 'flex'; nav.style.flexDirection = 'column'; nav.style.gap = '8px'; }
    }
  </script>
</body>
</html>

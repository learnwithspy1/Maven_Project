<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width,initial-scale=1" />
  <title>Hotel Management - Basic</title>
  <style>
    :root {
      --accent: #0f62fe;
      --muted: #666;
      --bg: #f6f8fb;
      --card: #ffffff;
    }
    body { font-family: Inter, system-ui, Arial; margin:0; background:var(--bg); color:#111;}
    header { background:var(--card); padding:12px 20px; display:flex; align-items:center; justify-content:space-between; box-shadow:0 1px 3px rgba(0,0,0,.06); }
    header h1 { margin:0; font-size:18px; }
    .container { display:flex; gap:20px; padding:20px; }
    nav { width:220px; background:var(--card); border-radius:10px; padding:12px; box-shadow:0 2px 8px rgba(0,0,0,.04); height:calc(100vh - 96px); }
    nav button { display:block; width:100%; margin:8px 0; padding:10px; border:0; background:transparent; text-align:left; cursor:pointer; border-radius:6px; }
    nav button.active { background:linear-gradient(90deg, rgba(15,98,254,0.08), transparent); color:var(--accent); font-weight:600; }
    main { flex:1; min-height:600px; }
    .card { background:var(--card); padding:16px; border-radius:10px; box-shadow:0 2px 8px rgba(0,0,0,.04); margin-bottom:16px; }
    .grid { display:grid; gap:12px; grid-template-columns:repeat(auto-fit,minmax(220px,1fr)); }
    table { width:100%; border-collapse:collapse; }
    th, td { text-align:left; padding:8px; border-bottom:1px solid #eee; font-size:14px; }
    .muted { color:var(--muted); font-size:13px; }
    .btn { padding:8px 12px; border-radius:6px; border:0; cursor:pointer; background:var(--accent); color:#fff; }
    .btn.ghost { background:transparent; color:var(--accent); border:1px solid rgba(15,98,254,0.12); }
    form label { display:block; font-size:13px; margin:6px 0 4px; }
    input, select { width:100%; padding:8px; border-radius:6px; border:1px solid #ddd; box-sizing:border-box; }
    .status-available { color:green; font-weight:600; }
    .status-occupied { color:#c0392b; font-weight:600; }
    footer { padding:12px 20px; color:var(--muted); font-size:13px; }
    @media (max-width:880px){ .container{flex-direction:column} nav{height:auto;width:100%} }
  </style>
</head>
<body>

<header>
  <h1>Hotel Management</h1>
  <div class="muted">Simple demo • No backend</div>
</header>

<div class="container">
  <nav>
    <button class="active" data-view="dashboard">Dashboard</button>
    <button data-view="rooms">Rooms</button>
    <button data-view="bookings">Bookings</button>
    <button data-view="guests">Guests</button>
    <button data-view="reports">Reports</button>
  </nav>

  <main>
    <!-- Dashboard -->
    <section id="dashboard" class="view card">
      <div style="display:flex;justify-content:space-between;align-items:center">
        <h2 style="margin:0">Dashboard</h2>
        <div class="muted" id="lastUpdated">Last updated: --</div>
      </div>

      <div class="grid" style="margin-top:12px">
        <div class="card">
          <h3 style="margin:0">Rooms Overview</h3>
          <p class="muted">Quick status of rooms</p>
          <div id="overviewRooms" style="margin-top:10px; display:flex; gap:10px; align-items:center;">
            <!-- injected -->
          </div>
        </div>

        <div class="card">
          <h3 style="margin:0">Today's Bookings</h3>
          <p class="muted">Check-ins/check-outs</p>
          <ul id="todayBookings" style="margin-top:10px; padding-left:16px"></ul>
        </div>

        <div class="card">
          <h3 style="margin:0">Quick Book</h3>
          <p class="muted">Create a booking quickly</p>
          <form id="quickBookForm" style="margin-top:8px">
            <label>Guest name</label>
            <input id="qbName" placeholder="e.g., Ravi Kumar" required>
            <label>Room</label>
            <select id="qbRoom"></select>
            <label>Check-in</label>
            <input id="qbIn" type="date" required>
            <label>Check-out</label>
            <input id="qbOut" type="date" required>
            <div style="margin-top:8px; text-align:right">
              <button class="btn" type="submit">Book</button>
            </div>
          </form>
        </div>
      </div>
    </section>

    <!-- Rooms -->
    <section id="rooms" class="view card" style="display:none">
      <h2>Rooms</h2>
      <p class="muted">Manage room list and availability</p>

      <div style="display:flex; gap:12px; margin-top:10px; flex-wrap:wrap">
        <div style="flex:1; min-width:260px;">
          <h3 style="margin-top:0">Add Room</h3>
          <form id="addRoomForm">
            <label>Room number</label>
            <input id="roomNumber" placeholder="e.g., 101" required>
            <label>Type</label>
            <select id="roomType">
              <option>Single</option>
              <option>Double</option>
              <option>Deluxe</option>
              <option>Suite</option>
            </select>
            <label>Price / night</label>
            <input id="roomPrice" type="number" min="0" value="100" required>
            <div style="margin-top:8px; text-align:right"><button class="btn" type="submit">Add</button></div>
          </form>
        </div>

        <div style="flex:2; min-width:320px;">
          <h3 style="margin-top:0">Room List</h3>
          <table id="roomsTable">
            <thead><tr><th>Room</th><th>Type</th><th>Price</th><th>Status</th><th></th></tr></thead>
            <tbody></tbody>
          </table>
        </div>
      </div>
    </section>

    <!-- Bookings -->
    <section id="bookings" class="view card" style="display:none">
      <h2>Bookings</h2>
      <p class="muted">All bookings</p>

      <table id="bookingsTable" style="margin-top:12px">
        <thead><tr><th>Guest</th><th>Room</th><th>Check-in</th><th>Check-out</th><th>Status</th><th></th></tr></thead>
        <tbody></tbody>
      </table>
    </section>

    <!-- Guests -->
    <section id="guests" class="view card" style="display:none">
      <h2>Guests</h2>
      <p class="muted">Registered guests</p>
      <table id="guestsTable" style="margin-top:12px">
        <thead><tr><th>Name</th><th>Phone</th><th>Notes</th></tr></thead>
        <tbody></tbody>
      </table>
    </section>

    <!-- Reports (placeholder) -->
    <section id="reports" class="view card" style="display:none">
      <h2>Reports</h2>
      <p class="muted">Revenue, occupancy, and other stats will appear here.</p>
      <div class="card" style="margin-top:12px">
        <h4 style="margin:0">Occupancy</h4>
        <p class="muted" id="reportOccupancy">--</p>
      </div>
    </section>
  </main>
</div>

<footer>
  Demo hotel management template — extend with a backend (REST API, database) to save data.
</footer>

<script>
  // -----------------------------
  // Simple in-memory demo dataset
  // -----------------------------
  const state = {
    rooms: [
      { number: "101", type: "Single", price: 120, status: "available" },
      { number: "102", type: "Double", price: 180, status: "occupied" },
      { number: "201", type: "Deluxe", price: 250, status: "available" }
    ],
    bookings: [
      { id: 1, guest: "Asha R", room: "102", checkIn: "2025-11-10", checkOut: "2025-11-12", status: "checked-in" }
    ],
    guests: [
      { name: "Asha R", phone: "9876543210", notes: "" }
    ],
    nextBookingId: 2
  };

  // -----------------------------
  // Utility / Rendering Functions
  // -----------------------------
  function $(s) { return document.querySelector(s); }
  function $all(s) { return Array.from(document.querySelectorAll(s)); }

  function formatDate(d){ if(!d) return ""; return (new Date(d)).toLocaleDateString(); }

  function renderRoomsTable(){
    const tbody = $("#roomsTable tbody");
    tbody.innerHTML = "";
    state.rooms.forEach(r=>{
      const tr = document.createElement("tr");
      tr.innerHTML = `
        <td>${r.number}</td>
        <td>${r.type}</td>
        <td>₹ ${r.price}</td>
        <td class="${r.status === 'available' ? 'status-available' : 'status-occupied'}">${r.status}</td>
        <td style="text-align:right">
          <button class="btn ghost" data-action="toggle" data-id="${r.number}">${r.status === 'available' ? 'Check-in' : 'Free'}</button>
        </td>
      `;
      tbody.appendChild(tr);
    });
  }

  function renderBookings(){
    const tbody = $("#bookingsTable tbody");
    tbody.innerHTML = "";
    state.bookings.forEach(b=>{
      const tr = document.createElement("tr");
      tr.innerHTML = `
        <td>${b.guest}</td>
        <td>${b.room}</td>
        <td>${formatDate(b.checkIn)}</td>
        <td>${formatDate(b.checkOut)}</td>
        <td>${b.status}</td>
        <td style="text-align:right">
          <button class="btn ghost" data-action="checkout" data-id="${b.id}">Check-out</button>
        </td>
      `;
      tbody.appendChild(tr);
    });
  }

  function renderGuests(){
    const tbody = $("#guestsTable tbody");
    tbody.innerHTML = "";
    state.guests.forEach(g=>{
      const tr = document.createElement("tr");
      tr.innerHTML = `<td>${g.name}</td><td>${g.phone || "-"}</td><td>${g.notes || "-"}</td>`;
      tbody.appendChild(tr);
    });
  }

  function renderOverview(){
    const div = $("#overviewRooms");
    const total = state.rooms.length;
    const occupied = state.rooms.filter(r=>r.status === "occupied").length;
    const available = total - occupied;
    div.innerHTML = `
      <div><strong>Total</strong><div class="muted">${total}</div></div>
      <div><strong>Occupied</strong><div class="muted">${occupied}</div></div>
      <div><strong>Available</strong><div class="muted">${available}</div></div>
    `;
    $("#lastUpdated").textContent = "Last updated: " + new Date().toLocaleString();
  }

  function populateRoomSelects(){
    const sel = $("#qbRoom");
    sel.innerHTML = "";
    state.rooms.forEach(r=>{
      const opt = document.createElement("option");
      opt.value = r.number;
      opt.textContent = `${r.number} — ${r.type} (${r.status})`;
      sel.appendChild(opt);
    });

    // quick book room list for add room form not needed
  }

  function renderTodayBookings(){
    const ul = $("#todayBookings");
    ul.innerHTML = "";
    const today = new Date().toISOString().slice(0,10);
    state.bookings.filter(b=>b.checkIn === today || b.checkOut === today).forEach(b=>{
      const li = document.createElement("li");
      li.textContent = `${b.guest} — ${b.room} (${b.status})`;
      ul.appendChild(li);
    });
    if(ul.children.length === 0) {
      ul.innerHTML = '<li class="muted">No bookings for today</li>';
    }
  }

  // -----------------------------
  // Actions
  // -----------------------------
  // nav
  $all("nav button").forEach(btn=>{
    btn.addEventListener("click", ()=>{
      $all("nav button").forEach(b=>b.classList.remove("active"));
      btn.classList.add("active");
      const view = btn.dataset.view;
      $all(".view").forEach(v=> v.style.display = (v.id === view ? "" : "none"));
    });
  });

  // Add room
  $("#addRoomForm").addEventListener("submit", e=>{
    e.preventDefault();
    const number = $("#roomNumber").value.trim();
    const type = $("#roomType").value;
    const price = Number($("#roomPrice").value) || 0;
    if(!number) return alert("Enter room number");
    state.rooms.push({ number, type, price, status: "available" });
    $("#addRoomForm").reset();
    renderAll();
  });

  // Quick book
  $("#quickBookForm").addEventListener("submit", e=>{
    e.preventDefault();
    const guest = $("#qbName").value.trim();
    const room = $("#qbRoom").value;
    const checkIn = $("#qbIn").value;
    const checkOut = $("#qbOut").value;
    if(!guest || !room || !checkIn || !checkOut) return alert("Fill all fields");
    // basic occupancy check
    const roomObj = state.rooms.find(r=>r.number === room);
    if(roomObj.status === "occupied") {
      if(!confirm("Room appears occupied. Force booking?")) return;
    }
    state.bookings.push({ id: state.nextBookingId++, guest, room, checkIn, checkOut, status: "booked" });
    // mark room occupied if checkIn is today or earlier
    const today = new Date().toISOString().slice(0,10);
    if(checkIn <= today) roomObj.status = "occupied";
    // add guest if new
    if(!state.guests.find(g=>g.name === guest)) state.guests.push({ name: guest, phone: "", notes: "" });
    $("#quickBookForm").reset();
    renderAll();
    alert("Booking created");
  });

  // delegated buttons for rooms and bookings
  document.addEventListener("click", e=>{
    const btn = e.target.closest("button[data-action]");
    if(!btn) return;
    const action = btn.dataset.action;
    if(action === "toggle"){
      const id = btn.dataset.id;
      const room = state.rooms.find(r=>r.number === id);
      if(!room) return;
      room.status = (room.status === "available") ? "occupied" : "available";
      renderAll();
    } else if(action === "checkout"){
      const id = Number(btn.dataset.id);
      const booking = state.bookings.find(b=>b.id === id);
      if(!booking) return;
      booking.status = "checked-out";
      // free room
      const room = state.rooms.find(r=>r.number === booking.room);
      if(room) room.status = "available";
      renderAll();
      alert("Checked out: " + booking.guest);
    }
  });

  // -----------------------------
  // Full render
  // -----------------------------
  function renderAll(){
    renderRoomsTable();
    renderBookings();
    renderGuests();
    populateRoomSelects();
    renderOverview();
    renderTodayBookings();
    // reports (simple)
    const total = state.rooms.length;
    const occupied = state.rooms.filter(r=>r.status === "occupied").length;
    $("#reportOccupancy").textContent = `${occupied} / ${total} occupied (${Math.round((occupied/total)*100 || 0)}%)`;
  }

  // init
  renderAll();
</script>
</body>
</html>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rooms &amp; Suites </title>
    <style>
        .container{
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            border: 2px solid rgb(135, 104, 24);
            gap: 20px;
            padding: 30px;
    /* max-width: 800px;
    width: 100%; */

        }
        #div1{
            text-align: center;
    font-family: Arial, Helvetica, sans-serif;
    background: white;
    padding: 15px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    transition: transform 0.3s, box-shadow 0.3s;
}
#details{
                width: 174px;
                height: 50px;
                background-color:  rgb(246, 195, 54);
                font-size: x-large;
                
            }
            
            @media screen and (max-width: 1024px) {
            .container {
                grid-template-columns: repeat(1, 1fr); /* Single column layout */
                padding: 20px;
            }

            div {
                width: 90%; /* Adjust width for better fit */
                margin: auto;
            }

            #details {
                width: 100%;
                height: 45px;
                font-size: large;
            }
        }

        @media screen and (max-width: 768px) {
            .container {
                padding: 15px;
            }

            div {
                width: 95%;
            }

            #details {
                width: 100%;
                height: 40px;
                font-size: medium;
            }
        }

        @media screen and (max-width: 480px) {
            .container {
                padding: 10px;
            }

            div {
                width: 100%;
            }

            #details {
                width: 100%;
                height: 35px;
                font-size: small;
            }
        }
        
    </style>
    <script>
        function fun(){
            alert("Successfully added to wishlist.. Thanks for adding...");
            
        }
    </script>
</head>
<body>
    <div style="margin-bottom: -250px;"></div>
    <div id="header-container"></div>
    <div style="margin-top: -40px;"></div>
    <!-- <div style="margin-top: -70px;"></div> -->
        <script>
            function loadComponent(id, file) {
                fetch(file)
                    .then(response => response.text())
                    .then(data => {
                        document.getElementById(id).innerHTML = data;
                    });
            }
    
            // Load Header and Footer
            loadComponent('header-container', 'roomsheader.html');
            loadComponent('footer-container', 'footer.html');
        </script>
    
    <div id="div1">
        <hr>
    <div class="container">
     
        <div >
            <img src="img1.jpg" alt="Single Room" height="267px" width="400px">
            <p style="font-family: courier;"><b>Single Room </b>:  A room for one person </p>
                        <p style="font-family:NSimSun;"> A single room is a hotel room designed for one person to stay in. It usually has one bed, which is typically a double or queen bed.<br><b>Rate</b>(Per person): 
                        <x style="font-family:verdana"><b>250 ₹</b></x></p>
                        <a href="detials1.html" >
                            <input type="button" value="Details" id="details"></a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="🤍 Wishlist" id="details" onclick="fun()">
        </div>
        <div >
            <img src="img2.jpg" alt="Double room" height="267px" width="400px" >
            <p style="font-family: courier;"><b>Double Room </b>:  A room for two person </p>
                        <p style="font-family:NSimSun;">  A room for two people, with either one double bed or two twin beds. <br><b>Rate</b>(Per person): 
                        <x style="font-family:verdana"><b>300 ₹</b></x></p><br>
                        <a href="details2.html" >
                    <input type="button" value="Details" id="details"></a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="🤍Wishlist" id="details" onclick="fun()">

        </div>
        <div >
            <img src="img3.jpg" alt="Twin Room" height="267px" width="400px">
            <p style="font-family: courier;"><b>Twin Room </b>:  A room for family stay </p>
            <p style="font-family:NSimSun;">  A room with two single beds, which is good for people traveling together who want to save money. <br><b>Rate</b>(Per person): 
            <x style="font-family:verdana"><b>260 ₹</b></x></p><br>
            <a href="detials3.html" >
        <input type="button" value="Details" id="details"></a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="🤍Wishlist" id="details" onclick="fun()">
        </div>
        <div>
            <img  src="img4.jpg" alt="single room" height="267px" width="400px">
            <p style="font-family: courier;"><b>Deluxe Room</b> :  A room for Family </p>
                    <p style="font-family:NSimSun;"> A deluxe room is one of the most popular choices of guests.It comes with more facility and 24hrs service.<br><b>Rate</b>(Per person): 
                    <x style="font-family:verdana"><b>1,500 ₹</b></x></p><br>
                    <a href="detials4.html" >
                <input type="button" value="Details" id="details"></a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="🤍Wishlist" id="details" onclick="fun()">
        </div>
        <div>
            <img src="img5.jpg" alt="double" height="267px" width="400px" >
                <p style="font-family: courier;"><b>Queens Room </b>:  A room for Queens</p>
                <p style="font-family:NSimSun;">  As the name suggests, queen rooms offer queen-sized beds that can accommodate two adults comfortably. <br><b>Rate</b>(Per person): 
                <x style="font-family:verdana"><b>3000 ₹</b></x></p><br>
                <a href="detials5.html" >
            <input type="button" value="Details" id="details"></a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="🤍Wishlist" id="details" onclick="fun()">

        </div>
        <div>
            <img src="img6.jpg" alt="u" height="267px" width="400px">
                        <p style="font-family: courier;"><b>Rooms With a View</b> :  A room for family views </p>
                        <p style="font-family:NSimSun;">  A room consisting a beautiful view makes day more happy and refresh our brain. <br><b>Rate</b>(Per person): 
                        <x style="font-family:verdana"><b>1000 ₹</b></x></p><br>
                        <a href="detials6.html" >
                    <input type="button" value="Details" id="details"></a>&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" value="🤍Wishlist" id="details" onclick="fun()">

        </div>
   
         
    </div>
    <br>
  <hr>
    </div>
 
    <div id="footer-container"></div>  

</body>
</html>

<?php  include 'Connection.php'; ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserManagement Page</title>
    <script src="Feedback.js"></script>
    <link rel = "stylesheet" href="admin.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <script>
        var date = new Date();
        var current_date = date.getDate()+"-"+(date.getMonth()+1)+"-"+ date.getFullYear();
	      document.getElementById("p1").innerHTML = current_date;
    </script>
</head>
<body>
    <hr class = "new1">
    <!-- add a logo (b) -->
    <div class="find">
        <img src="profile pic-modified.jpg" alt="Avatar" class="avatar">
        <h1 class="p3">Admin</h1>
        <input type="text" placeholder="Search..">
        <img src="logo.png" alt = "bidZone" width= "100%" height= "100%" input type="text" placeholder="Search.." class="logo">
    </div>
	
    <!-- add a header (c)-->
    <header>
        <!-- add a horizontal line (d)-->
		<hr class = "new1">
        <!-- add a horizontal menu (e) -->
		<div class="bar">
      <div class="headbtn">
		    <a class="active" id="button" href= "admin.php">Dashboard</a></li>
			  <a id="button" href= "UserManagement.php">Manage User</a></li>
			  <a id="button" href= "ManageAuction.php">Manage Auction</a></li>
		    <a id="button" href= "Feedback.php">Feedback</a></li>
      </div>
    </div>	
		<br>
        <h2 class="p1">My Account</h2>
        <!-- add a sub-header (c) -->
		    <h2 class="p2">Profile Picture</h2><br>
        <img src="profile pic-modified.jpg" alt="Avatar" class="avatar2">
        <h3 class="p4">Change Your Profile Picture<h3> 
        <h4 class="p5">A picture helps people recognize you and lets you know when you are signed in to your account</h4>      

        <div id="spects">
            <button id="btn1" type="button" onclick="loadData('btn1')"><b>Change Profile Picture</b></button>      
        </div>
        <h4 class="p6">Maximum image size is 1 MB</h4>

        <div class="form">
            <h2 class="p7">Account Information</h2><br><br>
            <form action="/action_page.php">
              <label for="fname">First name :</label>
              <input type="text" id="name" placeholder="Enter First Name" name="fname" class="input"><br><br>
              <label for="lname">Last name :</label>
              <input type="text" id="name" placeholder="Enter Last Name" name="lname" class="input"><br><br>
              <label for="mail">Email :</label>
              <input type="text" id="name" placeholder="Enter Your Email Address" name="mail" class="input"><br><br>
              <label for="Pnumber">Phone Number :</label>
              <input type="text" id="name" placeholder="Mobile Number(e.g.0714455666)" name="lname" class="input"><br><br>
              <label for="Address">Address :</label>
              <input type="text" id="Aname" placeholder="Enter Your Address" name="Address" class="input"><br><br>
            </form>
            <h2 class="p9">Password : </h2>   

        <div id="spects">
            <button id="btn2" type="button" onclick="loadData('btn1')"><b>Change Password</b></button>
        </div>          
        <div id="spects">
            <button id="btn3" type="button" onclick="loadData('btn1')"><b>Save Changes</b></button>
            <button id="btn4" type="button" onclick="loadData('btn1')"><b>Logout</b></button>      
        </div>

        <div id="spects">
            <button id="btn5" type="button" onclick="loadData('btn1')"><b>Delete Account</b></button>      
        </div>
        </div>







        <!-- add a footer (g)-->
        <br>
        <footer class="footer">
            <div class="container">
             <div class="row">
               <div class="footer-col">
                   <h4>BidZone</h4>
                   <img src="logo.png">
                   <ul class="info">
                     <li>
                       <span><i class="fa fa-map-marker" aria-hidden="true"></i>
                       </span>
                       <span>456,Park Street,Colombo 03.<br>Sri Lanka</span>
                     </li>
                     <li>
                       <span><i class="fa fa-phone" aria-hidden="true"></i></span>
                       <p><a href="tel:+94112548654">+94112548654</a></p>
                       <p><a href="tel:+94112548700">+94112548700</a></p>
                     </li>
                     <li>
                       <span><i class="fa fa-envelope" aria-hidden="true"></i></span>
                       <p><a href="mailto:bidzone@gmail.com">bidzone@gmail.com</a></p>
                     </li>
                   </ul>
               </div>
               <div class="footer-col">
                 <h4>Company</h4>
                 <ul>
                   <li><a href="#">Home</a></li>
                   <li><a href="#">About Us</a></li>
                   <li><a href="#">Contact Us</a></li>
                 </ul>
               </div>
               <div class="footer-col">
                 <h4>services</h4>
                 <ul>
                   <li><a href="#">Help Us</a></li>
                 </ul>
               </div>
               <div class="footer-col">
                 <h4>follow us</h4>
                 <div class="social-links">
                   <a href="#"><i class="fab fa-facebook-f"></i></a>
                   <a href="#"><i class="fab fa-twitter"></i></a>
                   <a href="#"><i class="fab fa-instagram"></i></a>
                   <a href="#"><i class="fab fa-linkedin-in"></i></a>
                 </div>
               </div>
             </div>
            </div>
        </footer>
	</body>
</html>

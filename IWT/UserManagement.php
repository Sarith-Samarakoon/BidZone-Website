<?php  include 'Connection.php'; ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UserManagement Page</title>
    <script src="Feedback.js"></script>
    <link rel = "stylesheet" href="UserManagement.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
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
                  <a  id="button" href= "admin.html">Dashboard</a></li>
                  <a class="active" id="button" href= "#">Manage User</a></li>
                  <a id="button" href= "ManageAuction.php">Manage Auction</a></li>
                  <a id="button" href= "Feedback.php">Feedback</a></li>
            </div>
        </div>		
		<br>
    <h1 class="p1">User Accounts</h1><br>
    <hr class="new1">

    <table border="2px" cellpadding="100px" cellspacing="10px">
        <tr>
            <th>UserID</th>
            <th>UserName</th>
            <th>NIC</th>
            <th>pNumber</th>
            <th>Email</th>
            <th>Bday</th>
            <th>Password </th>
            <th>UserType</th>
        </tr>
            <?php
                $query = "SELECT * FROM user";
                $data = mysqli_query($con,$query);
                $result = mysqli_num_rows($data);
                
                if($result){
                  while($row=mysqli_fetch_array($data)){
            ?>
                <tr>
                  
                <td><?php echo $row['UserID'];?></td>
                <td><?php echo $row['UserName'];?></td>
                <td><?php echo $row['NIC'];?></td>
                <td><?php echo $row['pNumber'];?></td>
                <td><?php echo $row['Email'];?></td>
                <td><?php echo $row['Bday'];?></td>
                <td><?php echo $row['Password'];?></td>
                <td><?php echo $row['userType'];?></td>
                <td><button id="btn2" type="button" onclick="loadData('btn1')"><b>Update</b></button></td>
                <td><button id="btn1" type="button" onclick="loadData('btn1')"><b>Delete</b></button></td>
            
                </tr>
            <?php
                  }
                }else
                {
                  ?>
                    <tr>
                      <td>No Records found</td>
                    </tr>
                  <?php
                }

      
            ?>

    </table>

    <hr class="new1">







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
                   <li><a href="homeNew.php">Home</a></li>
                   <li><a href="about/about us.html">About Us</a></li>
                   <li><a href="contact/contact-us.php">Contact Us</a></li>
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
                   <a href="https://www.facebook.com/"><i class="fab fa-facebook-f"></i></a>
                   <a href="https://twitter.com/"><i class="fab fa-twitter"></i></a>
                   <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
                   <a href="https://lk.linkedin.com/"><i class="fab fa-linkedin-in"></i></a>
                 </div>
               </div>
             </div>
            </div>
        </footer>
	</body>
</html>
<?php  include 'Connection.php'; ?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feedback Page</title>
    <script src="Feedback.js"></script>
    <link rel = "stylesheet" href="Feedback.css">
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
                  <a id="button" href= "admin.html">Dashboard</a></li>
                  <a id="button" href= "UserManagement.php">Manage User</a></li>
                  <a id="button" href= "ManageAuction.php">Manage Auction</a></li>
                  <a class="active" id="button" href= "Feedback.php">Feedback</a></li>
            </div>
        </div>		
		<br>

    <h1 class="p1">User Feedbacks</h1>
    <hr class="new1">

    <?php
          $query = "SELECT * FROM feedback";
          $data = mysqli_query($con,$query);
          $result = mysqli_num_rows($data);
    ?>


    <table border="1px" cellpadding="10px" cellspacing="0">
            <?php
                $query = "SELECT * FROM feedback";
                $data = mysqli_query($con,$query);
                $result = mysqli_num_rows($data);
                
                if($result){
                  while($row=mysqli_fetch_array($data)){
            ?>
                <tr>
                  <td>
                    


                    
    <img src="profile pic-modified.jpg" alt="Avatar" class="avatar2">
    <h3 class="p4">User Name<h3><br>
    <h4 class="p5">Total Payable: </h4>


    <div class="star">
      <span class="fa fa-star checked"></span>
      <span class="fa fa-star checked"></span>
      <span class="fa fa-star checked"></span>
      <span class="fa fa-star checked"></span>
      <span class="fa fa-star checked"></span>
    </div> 
   

    <button id="btn1" type="button" onclick="loadData('btn1')"><b>Delete Feedback</b></button>
    <button id="btn2" type="button" onclick="loadData('btn2')"><b>Approve</b></button>
    <button id="btn3" type="button" onclick="loadData('btn3')"><b>Respond</b></button>
    <br><br><br><br>

                      <?php echo $row['comment'];?>
                  </td>
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


	</body>
</html>
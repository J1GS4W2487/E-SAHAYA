<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Grievance form</title>
<link rel="stylesheet" href="css/login-register.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
</head>
<body>
<section class="upload-bg">
<section class="loginn">
      <nav>
        
                <div class="row">
                    <a href="index.html">  <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                    <ul class="main-nav">
                       <li> <h3><a style="color: #fff;" class="btn btn-full" href="welcome.jsp">Dashboard</a></h3> </li>
                    <li> <h3><a style="color: #fff;" class="btn btn-full" href="Logout.jsp">Logout</a></h3> </li>
                    </ul>
                </div> <div class="row">
            	
           
            </nav>
            
        </section>

  <section class="section-form">
            <div class="row">
                <h2 style="color:#fff">Grievance form</h2>
            </div>
            <div class="row">
                <form method="post" action="uploadServlet" class="gre-form" enctype="multipart/form-data">
                    
                    <!--COMPLAINT-->
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name"><font color="black" style="font-family:verdana;">Complaint</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="text" style="border:solid 1px"  name="complain" id="complain" placeholder="Your Complain" required>
                        </div>
                    </div><br>
                    
                    <!--MOBILE-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Mobile</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="number" style="border:solid 1px" name="mobile" maxlength="10" id="mobile" placeholder="Your Mobile Number" required>
                        </div>
                    </div><br>
                    
                    <!--COMPLAINT TYPE-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="find-us">Complaint Type</label>
                        </div><br>
                        <div class="col span-2-of-3" >
                            <select name="complainT" id="complainT" style="border:solid 1px">
                                <option value="Pothole">Pothole</option>
                                <option value="Water Log" selected>Water Log</option>
                                <option value="Broken street light">Broken street lights</option>
                                <option value="Signal not working">Signal not working</option>
                                <option value="broken footpath">Broken Footpath</option>
                                <option value="Improper Parking">Improper Parking</option>
                                <option value="Garbage Dumped">Garbage Dumped</option>
                                <option value="Other">Other</option>
                            </select>
                        </div>
                    </div><br>
                    
                    <!--LOCATION-->                        
                      <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Location</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="text" style="border:solid 1px" name="location" id="location" placeholder="Enter the address of Grievance" required>
                        </div>
                    </div><br>
                    
                      <!--EMAILID-->                        
                      <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Email-Id</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="email" style="border:solid 1px" name="email" id="email" placeholder="Your Email" required>
                        </div>
                    </div><br>
                    
                     <!--TIME-->
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="date">Time and Date</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="datetime-local" style="border:solid 1px" name="date" id="date" placeholder="Date of Complaint" required>
                        </div>
                    </div><br>
                    
                     <!--AADHAR NO-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Aadhar No.</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="number" style="border:solid 1px" name="aadharno" id="aadharno" placeholder="Your Aadhar Number" required>
                        </div>
                    </div><br>
                    
                      <!-- 
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Photo</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="file" name="photo" id="photo" placeholder="Enter suitable photo" required>
                        </div>
                    </div> -->
                    
                    <!--Submit-->
                     <div class="row">
                        <div class="col span-1-of-3">
                            <label>&nbsp;</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="submit" value="Save">                       
                             </div>
                    </div>
                    
                    
                </form>
                
            </div>
        
        </section>
   <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.7/lib/darkmode-js.min.js"></script>
<script src="resources/js/script.js"></script>
</body>
</html>
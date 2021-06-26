<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager" %> 
<%@page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "jproject";
String userid = "root";
String password = "toor";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contacts where id="+id;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<!DOCTYPE html>
<html lang="en">
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Status</title>
 	
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
<style>
.statusup-img h2{
	margin-top: 150px;
	color: #fff;
}

.statusup-img label{
	
	color: #fff;
}


</style>

</head>

<body >
<section class="statusup-img">
<section class="loginn">
          <nav>
                <div class="row">
                    <a href="index.html"> <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                    <ul class="main-nav">
                    <li><a class="btn btn-full" href="Logout.jsp">Logout</a></li>

                    </ul>
                </div>
            </nav>
            
        </section>
        <h2 >Update data from database in jsp</h2>
<section class="update-status">

<form method="post" action="update-process.jsp" class align="left">
<!--ID-->
                    <div class="row">
                        <div class="col span-1-of-6">
                            <label for="name"><font  style="font-family:verdana;">ID</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="text" style="border:solid 1px"  name="id" id="id"  required 
                            value="<%=resultSet.getString("id") %>">
                        </div>
                    </div><br>
<!--
                    <div class="row">
                        <div class="col span-2-of-6">
                            <label for="name"><font color="black" style="font-family:verdana;">Complaint</label>
                        </div><br>
                        <div class="col span-3-of-6">
                            <input type="text" style="border:solid 1px"  name="complain" id="complain"  required 
                            value="<%=resultSet.getString("complain") %>">
                        </div>
                    </div><br> -->

<!--MOBILE-->
                   <!--     <div class="row">
                        <div class="col span-3-of-3">
                            <label for="email">Mobile</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="number" style="border:solid 1px" name="mobile" id="mobile"  required
                            value="<%=resultSet.getString("mobile") %>">
                        </div>
                    </div><br>-->
                    
<!--                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Complaint Type</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="complainT" style="border:solid 1px" name="complainT" id="complainT"  required
                            value="<%=resultSet.getString("complainT") %>">
                        </div>
                    </div><br> -->
 <!--LOCATION-->                        
                    <!--    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Location</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="text" style="border:solid 1px" name="location" id="location" 
                            value="<%=resultSet.getString("location") %>">
                        </div>
                    </div><br>-->
                    
<!--COMPLAINT STATUS-->
                       <div class="row">
                        <div class="col span-1-of-3">
                            <label for="status">Status</label>
                        </div><br>
                        <div class="col span-2-of-3" >
                            <select name="status" id="status" style="border:solid 1px" 
                            value="<%=resultSet.getString("status") %>">
                                <option value="Accepted" selected>Complaint Accepted</option>
                                <option value="In Process" >In Process</option>
                                <option value="Resolved">Complaint Resolved</option>
                                <option value="Invalid" selected>Complaint invalid</option>
                           
                            </select>
                        </div>
                    </div><br>




<!--EMAILID-->                        
                      <div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Email-Id</label>
                        </div><br>
                        <div class="col span-2-of-3">
                            <input type="email" style="border:solid 1px" name="email" id="email" 
                            value="<%=resultSet.getString("email") %>">
                        </div>
                    </div><br>                   
<div class="subb" align="center">
<br><input type="submit" value="submit" ></div>
</form>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</section>
</section>
</body>

</html>
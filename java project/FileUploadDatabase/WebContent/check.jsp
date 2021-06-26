<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "jproject";
String userId = "root";
String password = "toor";

try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Check your Complaint</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
    
    </head>
    <style>
    .status b,
    .gloss b{
    	font-size: 150%;
    	
    }
    
    </style>
    

<body style="background-color:mistyrose;">
<section class="loginn">
          <nav>
                <div class="row">
                    <a href="index.html"> <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                    <ul class="main-nav">
                    <li>  <a style="color: #fff;" class="btn btn-full" href="welcome.jsp">Dashboard</a> </li>
                    <li> <h3><a style="color: #fff;" class="btn btn-full" href="Logout.jsp">Logout</a></h3> </li>

                    </ul>
                </div>
            </nav>
            
        </section>
   

<section class="gloss">

<div class="row">
	<br><h2 ><font color="black" >GLOSSARY</h2>
	
	</div> 
	
	<div class="row">
	<table id="customers">
	
	<table class="example-table"  cellpadding="3" width="1150">
	
	<tr bgcolor="khaki" width="1350">
	<td align="center"><b>SR NO</b></td>
	<td align="center"><b>Status</b></td>
	<td align="center"><b>REMARK</b></td>
	</tr>
	
	<tr bgcolor="#87CEFA" width="700">
	<td align="center"><b>1</b></td>
	<td align="center"><b>Pending</b></td>
	<td align="center"><b>Complaint is registered</b></td>
	</tr>
	
	<tr bgcolor="#87CEFA" width="700">
	<td align="center"><b>2</b></td>
	<td align="center"><b>In Process</b></td>
	<td align="center"><b>Complaint is being worked upon</b></td>
	</tr>
	
	<tr bgcolor="#87CEFA" width="700">
	<td align="center"><b>3</b></td>
	<td align="center"><b> Resolved</b></td>
	<td align="center"><b>Complaint is Resolved</b></td>
	</tr>
	
	<tr bgcolor="#87CEFA" width="1000">
	<td align="center"><b>4</b></td>
	<td align="center"><b>Invalid</b></td>
	<td align="center"><b>Complaint is invalid (false information, image unclear)</b></td>
	</tr>
	
	
	</table>
	</table>
	</div>
</section>
	

<section class="status">
	<div class="row">
		
		<h1 align="center"><font color="black" >Check Status</h1><br>
	</div>
	
	
<table  cellpadding="5" cellspacing="0.5" border="4"  width="1920">

<tr bgcolor="khaki" width="1370">

<td align="center"><b>ID</b></td>

<td align="center"><b>Complaint</b></td>
<td align="center"><b>Complain Type</b></td>
<td align="center"><b>Location</b></td>
<td align="center"><b>Status</b></td>

<td align="center"><b>Date</b></td>

</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM contacts";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#80fff" height="70">


<td align="center" bgcolor="yellow" width="60" ><b><%=resultSet.getString("id") %></b></td>

<td align="center"><b><%=resultSet.getString("complain") %></b></td>
<td align="center"><b><%=resultSet.getString("complainT") %></b></td>
<td align="center" color="black"><b><%=resultSet.getString("location") %></b></td>
<td bgcolor="pink" align="center"><b><%=resultSet.getString("status") %></b></td>

<td align="center" bgcolor="orange" ><b><%=resultSet.getString("date") %></b></td>



</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>

</table><br>




		
	

</section>




</body>
</html>
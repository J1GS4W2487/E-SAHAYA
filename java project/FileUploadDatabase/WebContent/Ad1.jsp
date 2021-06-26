<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
    </head>
    <style>
    	.admin-list{
    		font-weight: 400;
    		font-size: 110%;
    	}
    </style>
    
    
<<BODY style="background-color:lightskyblue;">>
  
<section class="loginn">
          <nav>
                <div class="row">
                    <a href="index.html"> <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                    <ul class="main-nav">
                    <li> <h3><a style="color: #fff;" class="btn btn-full" href="Home.jsp">Dashboard</a></h3> </li>
                    <li> <h3><a style="color: #fff;" class="btn btn-full" href="Logout.jsp">Logout</a></h3> </li>

                    </ul>
                </div>
            </nav>
            
        </section>
   
   <br>
<section class="admin-list">

<h1 align="center"><font color="black" >Check and Update Status </h1>

<table border="1"  cellpadding="5" cellspacing="0.2" width="1920">
<tr bgcolor="khaki">
<br>
<td align="center">id</td>
<td align="center">Email</td>
<td align="center">Complain</td>
<td align="center" ">Mobile</td>
<td align="center">Complain Type</td>
<td align="center">Location</td>
<td align="center">Complain Status</td> 
<td align="center"><b>Date</b></td>
<td align="center">Update</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contacts";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#80fff" height="70">
<td align="center" bgcolor="yellow" width="40"><%=resultSet.getString("id") %></td>
<td align="center" bgcolor="yellow"><%=resultSet.getString("email") %></td>
<td align="center"><%=resultSet.getString("complain") %></td>
<td align="center"><%=resultSet.getString("mobile") %></td>
<td align="center"><%=resultSet.getString("complainT") %></td>
<td align="center"><%=resultSet.getString("location") %></td>
<td bgcolor="pink" align="center"><b><%=resultSet.getString("status") %></b></td>

<td align="center" bgcolor="orange" ><%=resultSet.getString("date") %></td>

<td width="120" align="center"><a class="btn btn-full" href="update.jsp?id=<%=resultSet.getString("id")%>">Update</a></td>
</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

</section>

</body>
</html>

<!doctype html>
<html>
	 <head>
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">
        <title>Success</title>    
    </head>
	<body>
	 <section class="loginn">
          <nav>
                <div class="row">
                  <a href="index.html" > <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                 <ul class="main-nav">
                    <li><a class="btn btn-full" href="Ad1.jsp">Back</a></li>
                    <li><a class="btn btn-full" href="Logout.jsp">Logout</a></li>
	
                    </ul>
                 </div>
            </nav>       
      </section>
	
	</body>
</html>







<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/jproject";%>
<%!String user = "root";%>
<%!String psw = "toor";%>
<%
String id = request.getParameter("id");
//String complain=request.getParameter("complain");
//String mobile=request.getParameter("mobile");
//String complainT=request.getParameter("complainT");
//String location=request.getParameter("location");
String status=request.getParameter("status");
String email=request.getParameter("email");
if(id != null)
{
Connection con = null;
PreparedStatement ps = null;
int personID = Integer.parseInt(id);
try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update contacts set id=?,status=?,email=? where id="+id;
ps = con.prepareStatement(sql);
ps.setString(1,id);
//ps.setString(2, complain);
//ps.setString(2, mobile);
//ps.setString(4, complainT);
//ps.setString(3, location);
ps.setString(2, status);
ps.setString(3, email);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("<h2>Record Updated Successfully</h2>");
}
else
{
out.print("There is a problem in updating Record.");
}
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>

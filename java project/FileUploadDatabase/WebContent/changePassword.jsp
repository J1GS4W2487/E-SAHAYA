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
            
                    <li><a class="btn btn-full" href="index.jsp">Login</a></li>
	
                    </ul>
                 </div>
            </nav>       
      </section>
	
	</body>
</html>















<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
String email=request.getParameter("email");
String newpass=request.getParameter("newpass");
String conpass=request.getParameter("confirm");
String connurl = "jdbc:mysql://localhost:3306/jproject";
Connection con=null;
String pass="toor";
int id=0;
try{
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection(connurl, "root", "toor");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from login where email='"+email+"'");
while(rs.next()){
id=rs.getInt(1);
pass=rs.getString(3);
} System.out.println(id+ " "+pass);
if(pass.equals(pass)){
Statement st1=con.createStatement();
int i=st1.executeUpdate("update login set password='"+newpass+"' where id='"+id+"'");
out.println("<html>");
out.print("<body>");
out.print("<h2 align='center'>Password has been succesfully changed</h2>");


out.print("</body>");
out.print("</html>");
st1.close();
con.close();
}
else{
out.println("Invalid Email");
}
}
catch(Exception e){
out.println(e);
}
%>
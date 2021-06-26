<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "jproject";
String userid = "root";
String password = "toor";
String email = request.getParameter("email");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
	       <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">

</head>
<body>
<section class="search-bg">

<section class="loginn">
          <nav>
                <div class="row">
                    <a href="index.html"> <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                    <ul class="main-nav">
                    <li>  <a style="color: #fff;" class="btn btn-full" href="welcome.jsp">Dashboard</a> </li>
                    <li><a class="btn btn-full" href="Logout.jsp">Logout</a></li>

                    </ul>
                </div>
            </nav>
            
        </section>

<h2 style="color:white">Search Data</h2>
<table border="1">
<table align="center" cellpadding="5" cellspacing="0.5" border="4"  width="1920">

<tr bgcolor="khaki" >

<td align="center"><b>ID</b></td>
<td align="center"><b>Email</b></td>
<td align="center"><b>Complaint</b></td>
<td align="center"><b>Complain Type</b></td>
<td align="center"><b>Location</b></td>
<td align="center"><b>Status</b></td>

<td align="center"><b>Date</b></td>


</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from contacts where email='"+email+"'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#80fff" height="70">


<td align="center" bgcolor="yellow" width="60" ><b><%=resultSet.getString("id") %></b></td>
<td align="center" bgcolor="yellow"><b><%=resultSet.getString("email") %></b></td>
<td align="center"><b><%=resultSet.getString("complain") %></b></td>
<td align="center"><b><%=resultSet.getString("complainT") %></b></td>
<td align="center" color="black"><b><%=resultSet.getString("location") %></b></td>
<td bgcolor="pink" align="center"><b><%=resultSet.getString("status") %></b></td>
<td align="center" bgcolor="orange" ><b><%=resultSet.getString("date") %></b></td>



</tr>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</table>
</section>
</body>
</html>
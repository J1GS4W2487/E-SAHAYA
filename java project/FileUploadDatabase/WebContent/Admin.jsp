<!DOCTYPE HTML> 

<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<HTML>
<HEAD>

	    <TITLE>Final Details</TITLE>
	    <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
 <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
</HEAD>

<BODY style="background-color:khaki;">
 <section class="loginn">
          <nav>
                <div class="row">
                  <a href="index.html" > <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                 <ul class="main-nav">
                    <li><a class="btn btn-full" href="Home.jsp">Dashboard</a></li>
                    <li><a class="btn btn-full" href="Logout.jsp">Logout</a></li>
	
                    </ul>
                 </div>
            </nav>       
      </section>

<h2><b>COMPLETE DETAILS</b></h2>
      <%   int current = 0;
       // declare a connection by using Connection interface 
     Connection connection = null;/* Create string of connection url within specified format with machine 
     name, port number and database name. Here machine name id localhost 
     and database name is student. */
          String connectionURL = "jdbc:mysql://localhost:3306/jproject";
               /*declare a resultSet that works as a table resulted by execute a specified 
     sql query. */
     ResultSet rs = null;
%>
<FORM NAME="form1" ACTION="Admin.jsp" METHOD="GET"><%
if (request.getParameter("hidden") != null) {
    current = Integer.parseInt(request.getParameter("hidden"));
}
    
// Declare statement.
       Statement statement = null;
       try {
               // Load JDBC driver "com.mysql.jdbc.Driver".
         Class.forName("com.mysql.jdbc.Driver").newInstance();
                 /* Create a connection by using getConnection() method that takes 
	 parameters of string type connection url, user name and password to 
	 connect to database. */
         connection = DriverManager.getConnection(connectionURL, "root", "toor");
                  /* createStatement() is used for create statement object that is 
	 used for sending sql statements to the specified database. */
         statement = connection.createStatement();
                // executeQuery() method execute specified sql query. 
         rs = statement.executeQuery("select * from contacts, login where "+
			"login.email = contacts.email");
			         for (int i = 0; i < current; i++) {
           rs.next();
            }
              if (!rs.next()) {
%>
<h2>
<%
        out.println("Sorry ! found some problems with database.");
    } else {
%></h2>
<style>
table, th, td {
  border: 0.2px solid black;
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 50%;
   text-align: centre;
  padding: 8px;
  
}
</style>

<br><div class="row">
<br><table  border = "0" cellpadding = "4" cellspacing = "0.4" ALIGN="center" >
    
   
    <h1 align="left"><font color="blue">PERSONAL Details</font></h1><BR>
    
    <TR><TH>NAME</TH><TD><font color="black"> <b><%= rs.getString("firstname")%></b> </font></TD></tr>
    <TR><TH>SURNAME</TH><TD> <font color="black"><B><%= rs.getString("lastname")%></B></font></TD></tr>
    <TR><TH>EMAIL</TH><TD><font color="black"><B><%= rs.getString("email")%></B></font></TD></tr>
    <TR><TH>AADHAR NUMBER</TH><TD><font color="black"><B><%= rs.getString("aadharno")%></B></font></TD></tr>
    <TR><TH>MOBILE NUMBER</TH><TD> <font color="black"><B><%= rs.getString("mobile")%></B></font></TD></tr>
    </table><br><br><BR>
    
    
	<h1 align="left"><font color="blue">COMPLAINT DETAILS</font></h1><BR>
	<table>
	<TR><TH>COMPLAINT</TH><TD> <font color="black"><b><%= rs.getString("complain")%></b></font></TD></tr>
	<TR><TH>LOCATION</TH><TD> <font color="black"><b><%= rs.getString("location")%></b></font></TD></tr>
	<TR><TH>COMPLAINT TYPE</TH><TD><font color="black"> <b> <%= rs.getString("complainT")%></b></font> </TD></tr>
	<TR><TH><font color="#DF0101">STATUS</font></TH><TD><font color="green"family="Courier"> <b> <%= rs.getString("status")%> </b></font></TD></tr>
	<TR><TH>DATE AND TIME</TH><TD><font color="black" > <b><%= rs.getString("date")%></b></font></TD></tr>
	</TABLE>
<br>
<BR>
<BR>
<INPUT TYPE="hidden" NAME="hidden" VALUE="<%=current + 1 %>">
<INPUT TYPE="submit" VALUE="next record">
</div>

</FORM>
<%
    }
} 
catch (Exception ex) {

%>
<h2>
    <%
                out.println("Unable to connect to database.");
            } finally {
                // close all the connections.
                rs.close();
                statement.close();
                connection.close();
            }
    %>
</h2>


   <section class="image-table"> 
    <div class="row" align="left">
        <h2><b>Complaint Image</b></h2>
       </div>> 
	<br><form action="Admin.jsp" method="post">
  			<div class="row">
  			<div class="center-row">
                        <div class="col span-1-of-3">
                            <label for="name" align="left"><b>ENTER EMAIL FOR PICTURE</b></label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="email" name="email" id="email" placeholder="Enter Email" required>
                        </div>
                    </div>
                        <div class="row">
                        <div class="col span-1-of-3">
                            <label>&nbsp;</label>
                        </div>
                       <br> <div class="col span-2-of-3 butto" align="center">
                            <br><input type="submit" value="Submit" >                       
                             </div>
                             </div>
                    </div>
	</form>
	
	<section class="disp-img">
	<div class="center-row">
        <%
        String email = request.getParameter("email");
        %>
        <img src="getImage.jsp?email=<%=email%>" align="center" width="980px"/>
        </div>
        </section>
        </div>
   </section>
   </section>
</body> 
</html>
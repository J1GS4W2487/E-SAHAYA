<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Welcome : <%=session.getAttribute("login")%></title>

	
	<link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
	<link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">
</head>

<body>

<div class="row">
    <div class="main-content">
	

	
	<%
	if(session.getAttribute("login")==null || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
	{
		response.sendRedirect("index.jsp"); 
	}
	%>
	
	<h2> Welcome, <%=session.getAttribute("login")%> </h2>
      
	<%
	if(session.getAttribute("login")==" " || session.getAttribute("login")==" ") //check condition unauthorize user not direct access welcome.jsp page
	{
		response.sendRedirect("Upload.jsp"); 
	}
	%>
	
		</div>
  </div>
	<section class="welcome-bg">
               <section class="loginn">
          <nav>
                <div class="row">
                  <a href="index.html" > <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
               
                  <ul class="main-nav">
                     <li> <h3><a style="color: #fff;" class="btn btn-full" href="Logout.jsp">Logout</a></h3> </li>
                   
                  
                    </ul>
                      </div>
            </nav>       
      </section>
            <div class="hero-text-box">
                <h1>Online Grievance Reporting Portal.</h1>
                <a class="btn btn-full" href="Upload.jsp">Report grievance</a>
                 <a class="btn btn-full" href="search.html">Check Status of Your Complaints</a><br>
                <a class="btn btn-full" href="check.jsp">Check Status of All Registered Complaints</a>
            </div>
       
    
	</section>
</body>

</html>

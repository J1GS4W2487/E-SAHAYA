<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
	<link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
</head>
<body>

<section class="loginn">
          <nav>
                <div class="row">
                    <a href="index.html"> <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                   
                </div>
            </nav>
            
        </section>
    <div class="row">
    	
        <h2><%=request.getAttribute("Message")%></h2>
        
       
       <h2><a class="btn btn-full" href="index1.jsp">UPLOAD IMAGE</a></h2> 
       
    </div>
</body>
</html>
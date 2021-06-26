 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-SAHAY</title>
        <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
    </head>
    <body>
    
    <div class="row">
        <h2>Complaint Image</h2>
        <b>View Email </b>
	<form action="viewImage.jsp" method="post">
  			<div class="row">
                        <div class="col span-1-of-3">
                            <label for="name">Email-Id</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="email" name="email" id="email" placeholder="Enter Email" required>
                        </div>
                    </div>
                        <div class="row">
                        <div class="col span-1-of-3">
                            <label>&nbsp;</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="submit" value="Submit">                       
                             </div>
                    </div>
	</form>
	<section class="disp-img">
        <%
        String email = request.getParameter("email");
        %>
        <img src="getImage.jsp?email=<%=email%>" width="500px"/>
        </section>
        </div>
    </body>
</html>
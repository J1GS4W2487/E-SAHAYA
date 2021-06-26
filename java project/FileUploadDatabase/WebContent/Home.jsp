<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%>
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
    	   	    
    	.admin-nav h2{
    		display: block;
    		justify-content: center;
    	}
    </style>
    <body> 
    <section class="adminv-bg"  >    
         <section class="loginn">
          <nav>
                <div class="row">
                  <a href="index.html" > <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                   	 <ul class="main-nav">
                    <li><a class="btn btn-full" href="index.html"></h4>Home</h4></a></li>
                    </ul>
                 </div>
                
            </nav>       
      </section>
      
        	<h2  style="color:#fff">
            <%
            String a=session.getAttribute("username").toString();
            out.println("Hello  "+a);
            %>
            </h2>
        
         <section class="admin-nav">
         
          <h2>
         
         
         <a class="btn btn-full" href="Logout.jsp">Logout</a> 
        <a class="btn btn-full" href="Admin.jsp">Admin View</a>
         <a class="btn btn-full" href="Ad1.jsp">Update Complaint Status</a>
       
       </h2>
         
         </section>
        
</section>
    </body>
</html>


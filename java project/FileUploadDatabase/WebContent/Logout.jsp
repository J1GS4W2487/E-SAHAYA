<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
  <head>
  	<link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">	
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Logout</title>
     </head>
      <body> 
      
      
      <section class="loginn">
          <nav>
                <div class="row">
                  <a href="index.html" > <img src="resources/img/logtitt.png" alt="e-sahay logo" class="logo"></a>
                 </div>
            </nav>       
      </section>
      
      
      <div class="row">
      <% session.removeAttribute("username"); session.removeAttribute("password"); session.invalidate(); %> 
      <h2>Logout was done successfully.</h2>
      
      <h2><a class="btn btn-full" href="index.html">Back to home page</a></h2> 
      </div>
       </body>
        </html>


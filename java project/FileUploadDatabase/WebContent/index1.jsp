<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>UPLOAD IMAGE</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
        <link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
        <link rel="stylesheet" type="text/css" href="resources/css/style.css">
        <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">
    </head>
    <body>
    <section class="image-bg">
    <div class="row">
        <h2 style="color:#fff">Upload Image </h2>
        <a href="view.jsp"></a>
        <section class="upload-img">
        <form action="uploadImage" method="post" enctype="multipart/form-data">
        
          			<div class="row">
          				<!--EMAIL-->
                        <div class="col span-1-of-3">
                            <label for="name">Email-Id <b><font color="red">*(Must be same as Registration email)</b></font></label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="email" name="email" id="email" placeholder="Your Email" required>
                        </div>
                    </div>
                    <!--IMAGE-->
                    <div class="row">
                        <div class="col span-1-of-3">
                            <label for="email">Image<b><font color="red">*(Must be distinct and recognisable)</b></font></label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="file" name="image" id="image" placeholder="Enter suitable photo" required>
                        </div>
                    </div>
                    <!--  BUtton-->
                      <div class="row">
                        <div class="col span-1-of-3">
                            <label>&nbsp;</label>
                        </div>
                        <div class="col span-2-of-3">
                            <input type="submit" value="Submit">                       
                             </div>
                    </div>
		</form>
		</section>
        </div>
        </section>
    </body>
</html>
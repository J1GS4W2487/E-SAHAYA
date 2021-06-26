<%@ page import="java.sql.*" %>  
<%
if(session.getAttribute("login")!=null) //check login session user not access or back to register.jsp page
{
	response.sendRedirect("welcome.jsp");
}
%>


<%
try
{
	Class.forName("com.mysql.jdbc.Driver"); //load driver
	
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jproject","root","toor"); //create connection
	
	if(request.getParameter("btn_register")!=null) //check register button click event not null
	{
		String firstname,lastname,email,password;
		
		firstname=request.getParameter("txt_firstname"); //txt_firstname
		lastname=request.getParameter("txt_lastname"); //txt_lastname
		email=request.getParameter("txt_email"); //txt_email
		password=request.getParameter("txt_password"); //txt_password
		
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("insert into login(firstname,lastname,email,password) values(?,?,?,?)"); //sql insert query
		pstmt.setString(1,firstname);
		pstmt.setString(2,lastname);
		pstmt.setString(3,email);
		pstmt.setString(4,password);
		
		pstmt.executeUpdate(); //execute query
		
		request.setAttribute("successMsg","Register Successfully...! Please login"); //register success messeage

		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
%>  
<!DOCTYPE html>
<html>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
		
	<title>Register</title>

	<link rel="stylesheet" href="css/login-register.css">
	<link rel="stylesheet" type="text/css" href="vendors/css/grid.css">
	<link rel="stylesheet" type="text/css" href="vendors/css/normalize.css">
	<link rel="stylesheet" type="text/css" href="resources/css/style.css">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;1,300&display=swap" rel="stylesheet">
	
	<!-- javascript for registeration form validation-->
	<script>	
	
		function validate()
		{
			var first_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var last_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
			var email_valid= /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/; //pattern valid email validation
			var password_valid=/^[A-Z a-z 0-9 !@#$%&*()<>]{6,12}$/; //pattern password allowed A to Z, a to z, 0-9, !@#$%&*()<> charecter 
			
			var fname = document.getElementById("fname"); //textbox id fname
            var lname = document.getElementById("lname"); //textbox id lname
            var email = document.getElementById("email"); //textbox id email
            var password = document.getElementById("password"); //textbox id password
			
			if(!first_name.test(fname.value) || fname.value=='') 
            {
				alert("Enter Firstname Alphabet Only....!");
                fname.focus();
                fname.style.background = '#f08080';
                return false;                    
            }
			if(!last_name.test(lname.value) || lname.value=='') 
            {
				alert("Enter Lastname Alphabet Only....!");
                lname.focus();
                lname.style.background = '#f08080';
                return false;                    
            }
			if(!email_valid.test(email.value) || email.value=='') 
            {
				alert("Enter Valid Email....!");
                email.focus();
                email.style.background = '#f08080';
                return false;                    
            }
			if(!password_valid.test(password.value) || password.value=='') 
            {
				alert("Password Must Be 6 to 12 and allowed !@#$%&*()<> character");
                password.focus();
                password.style.background = '#f08080';
                return false;                    
            }
		}
		
		function myFunction() {
            var x = document.getElementById("password");
            if (x.type === "password") {
              x.type = "text";
            } else {
              x.type = "password";
            }
          }
		
	</script>	
	<style>
		body{
	background-image: linear-gradient(rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.7)), url(./img/5778.jpg);
    background-size: cover;
    background-position: center;
    height: 100vh;
    background-attachment: fixed;
		}
		
	</style>
</head>

<body>
<section class="registerr">

   

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

    <div class="main-content">

        <form class="form-register" method="post" onsubmit="return validate();">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1>Register</h1>
                    </div>
				   
					<p style="color:green">				   		
					<%
					if(request.getAttribute("successMsg")!=null)
					{
						out.println(request.getAttribute("successMsg")); //register success message
					}
					%>
					</p>
				   
				   
                    <div class="form-row">
                        <label>
                            <span>First name<sup color="red">*</sup></span>
                            <input type="text" name="txt_firstname" id="fname" placeholder="Enter First Name">
                        </label>
                    </div>
					<div class="form-row">
                        <label>
                            <span>Last name<sup color="red">*</sup></span>
                            <input type="text" name="txt_lastname" id="lname" placeholder="Enter Last Name">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Email<sup color="red">*</sup></span>
                            <input type="text" name="txt_email" id="email" placeholder="example@email.com">
                        </label>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>Password<sup color="red">*</sup></span>
                            <input type="password" name="txt_password" id="password" placeholder="Enter Password">
                          
                        </label>
                    </div>
                    <div class="form-row check">
                     <div class="col span-1-of-3">
                     <input type="checkbox" onclick="myFunction()">
                     </div>
                       <div class="col span-2-of-3 box" ><h3>Show Password</h3></div>
                   
                    </div>
					 
					
					<input type="submit" name="btn_register" value="Register">
					
                </div>
				
                <a href="index.jsp" class="form-log-in-with-existing">Already have an account? <b> Login here </b></a>

            </div>

        </form>

    </div>



</section>
</body>

</html>
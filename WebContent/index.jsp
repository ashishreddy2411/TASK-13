<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
  <title>Shopping Cart - Shop</title>
<link rel="stylesheet" type="text/css" href="css/index_style.css"/>
</head>
  <body onload="form.reset();">
	<h1> HCL TECH ARENA</h1>
	<hr/>
	<h2>Best Shopping Application</h2>
<form id="form" class="box" action="loginval" method="post">
  <h1>Login</h1>
  <input type="text" name="name" placeholder="Username" required>
  <input type="password" name="pass" placeholder="Password" required>
  <input type="submit" name="" value="Login">
  <h5 class="forgot">Don't have an account? <a href="signup.jsp">SignUp</a></h5>
  
</form>

                <footer id="footer">
                    <h3 style="font-weight:bold; padding-left:10px">&copy;This Online Shopping Website is Designed and Developed by Ashish Reddy</h3>
                </footer>
</body>
</html>
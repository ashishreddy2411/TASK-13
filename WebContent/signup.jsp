<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Shopping Cart - Shop</title>
<link rel="stylesheet" type="text/css" href="css/signup_style.css"/>
</head>
<body onload="form.reset();">

    <form id="form" class="box" action="NewUser" method="post">
        <h1>SignUp</h1>
        <input type="text" placeholder="Username" id="Username" name="Username" required>
        <input type="text" id="phone" name="phone" maxlength="13" placeholder="Phone with country code" required> 
        <input type="email" placeholder="Enter email" id="email" name="email" required>
        <input type="password" id="password" name="password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
        title="Must contain at least one number, one uppercase, one lowercase letter and at least 8 or more characters"
        placeholder="Choose Password" required>
        <input type="password" placeholder="Confirm Password" id="confirm_password" required>
        <input type="submit" name="sp" value="SignUp">
        <h5 class="forgot">Already have an account? <a href="index.jsp">LogIn</a></h5>

    </form>
</body>
</html>
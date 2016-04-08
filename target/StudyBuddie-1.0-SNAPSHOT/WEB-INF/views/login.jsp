<%-- 
    Document   : login
    Created on : Apr 8, 2016, 10:32:45 PM
    Author     : Nikesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
    </head>

    <body style="background-color: #1b6d85">
        <div class="form-holder">
            <h4 class="signin-signup-heading">Sign in to your account</h4>
            <form action="login.html" method="POST">
                <div class="form-group">
                    <input type="text" name="username" autocomplete="on" placeholder="Username" required />
                </div>
                <div class="form-group">
                    <input type="password" name="password" autocomplete="off" placeholder="Password" required />
                </div>
                <div class="form-group">
                    <input type="submit" value="sign in" />
                </div>
                <span style="color: #b3b3b3;">Not registered?<a href="signup.html"> Create account</a></span>
            </form>
        </div>

        <script type="text/javascript" src="resources/js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
    </body>

</html>

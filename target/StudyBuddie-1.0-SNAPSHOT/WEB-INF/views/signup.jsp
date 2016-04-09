<%-- 
    Document   : signup
    Created on : Apr 8, 2016, 10:33:45 PM
    Author     : Nikesh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="resources/css/bootstrap.min.css" />
        <link rel="stylesheet" type="text/css" href="resources/css/style.css" />
    </head>
    
    <body style="background-color: #1b6d85">
        <div class="form-holder">
            <h4 class="signin-signup-heading">Create a new account</h4>
            <form action="signup.html" method="POST">
                <div class="form-group">
                    <input type="text" name="firstname" autocomplete="on" placeholder="Firstname" required />
                </div>
                <div class="form-group">
                    <input type="text" name="lastname" autocomplete="on" placeholder="Lastname" required />
                </div>
                <div class="form-group">
                    <input type="email" name="email" autocomplete="on" placeholder="Email" required />
                </div>
                <div class="form-group">
                    <input type="text" name="username" autocomplete="off" placeholder="Username" required />
                </div>
                <div class="form-group">
                    <input type="password" name="password" autocomplete="off" placeholder="Password" required />
                </div>
                <div class="form-group">
                    <select name="fieldOfStudy" required>
                        <option value="">Select Field of Study</option>
                        <c:forEach var="field" items="${fieldOfStudyList}">
                            <c:set var="fieldValue" value="${field.fieldId}" />
                            <c:set var="fieldName" value="${field.fieldName}" />
                            <option value="<c:out value="${fieldValue}" />"><c:out value="${fieldName}" /></option>
                        </c:forEach>
                    </select>
                </div>
                <div class="form-group">
                    <input type="submit" value="get started" />
                </div>
                <span style="color: #b3b3b3;">Already have an account?<a href="<c:url value="/" />"> Sign In</a></span>
            </form>
        </div>

        <script type="text/javascript" src="resources/js/jquery-2.2.3.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
    </body>
</html>

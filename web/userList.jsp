<%-- 
    Document   : userList
    Created on : Nov 10, 2018, 11:03:11 AM
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <h1>List of users</h1>
        <c:forEach var="user" items="${usersList}">
            ${user.name}&nbsp;&nbsp; ==> 
            ${user.login}<br>
        </c:forEach>
    </body>
</html>

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
                
                <form action="/TreinamentoTeste2/UserDetails" method="POST">
                    
                    <select name="selectedUser" size="5" >
        <c:forEach var="user" items="${usersList}">
            <option value="${user.id}">${user.name}</option>
        </c:forEach>
            </select>
                    
            <br> 
            <input type="submit" value="Show User Details" />
                </form>
                        <br><br>
        <a href="/TreinamentoTeste2/Login">Main Menu</a>
    </body>
</html>

<%-- 
    Document   : groupDetails
    Created on : Nov 11, 2018, 9:03:40 AM
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
                        <h1>User Details</h1>
        
        Name: ${user.name}
        
        <table border="1">
            <thead>
                <tr>
                    <th>Group Id</th>
                    <th> Name</th>
                </tr>
            </thead>
            <tbody>
                
        <c:forEach var="group" items="${groupsList}">
                <tr>
                    <td>${group.id}</td>
                    <td>${group.name}</td>
                </tr>
        </c:forEach>

            </tbody>
        </table>
        
        <br><br>
        
        <form action="/TreinamentoTeste2/EditUser" method="POST">
            <input type="hidden" value="${user.id}" name="userId" />
            <input type="submit" value="Add Remove groups from ${user.name}" />
        </form>  
        
                        <br><br>
        <a href="/TreinamentoTeste2/Login">Main Menu</a>
    </body>
</html>

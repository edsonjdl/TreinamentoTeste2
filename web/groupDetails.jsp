<%-- 
    Document   : groupDetail
    Created on : Nov 10, 2018, 12:34:19 PM
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
                <h1>Group Details</h1>
        
        Name: ${group.name}
        
        <table border="1">
            <thead>
                <tr>
                    <th>User Id</th>
                    <th> Login</th>
                </tr>
            </thead>
            <tbody>
                
        <c:forEach var="user" items="${usersList}">
                <tr>
                    <td>${user.id}</td>
                    <td>${user.login}</td>
                </tr>
        </c:forEach>

            </tbody>
        </table>
        
        <br><br>
        
        <form action="/TreinamentoTeste2/AddRemoveUser" method="POST">
            <input type="hidden" value="${group.id}" name="groupId" />
            <input type="submit" value="Add Remove users from ${group.name}" />
        </form>            
            
            
  
    </body>
</html>

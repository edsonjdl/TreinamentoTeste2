<%-- 
    Document   : groupList
    Created on : Nov 10, 2018, 11:03:26 AM
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
                <h1>Group List</h1>


        <form action="/TreinamentoTeste2/GroupDetails" method="POST">

                       
            <select name="selectedGroup" size="5" >
                <c:forEach var="group" items="${groupsList}">
                    <option value="${group.id}">${group.name}</option>
                </c:forEach>  
            </select>


            <br> 
            <input type="submit" value="Show Group Details" />
        </form>
                                        <br><br>
        <a href="/TreinamentoTeste2/Login">Main Menu</a>
    </body>
</html>

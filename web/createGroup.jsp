<%-- 
    Document   : createGroup
    Created on : Nov 11, 2018, 10:43:44 AM
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/TreinamentoTeste2/CreateGroup" method="POST">
            
            Name: <input type="text" name="name" value="" size="20" /><br>
            Access Level: <select name="accessLevel">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
            </select>
            <br><br>
            <input type="submit" value="Create Group" />
        </form>
    </body>
</html>

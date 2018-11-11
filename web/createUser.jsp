<%-- 
    Document   : createUser
    Created on : Nov 11, 2018, 10:36:44 AM
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
        
        <form action="/TreinamentoTeste2/CreateUser" method="POST">
            
            Name: <input type="text" name="name" value="" size="20" /><br>
            Login: <input type="text" name="login" value="" size="20" /><br>
            Password: <input type="text" name="password" value="" size="20" /><br><br>
            <input type="submit" value="Create User" />
        </form>
        
        
    </body>
</html>

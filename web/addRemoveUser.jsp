<%-- 
    Document   : TesteTrocaValores
    Created on : Nov 9, 2018, 6:00:14 PM
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script type="text/javascript" src="jquery-3.3.1.js">
        </script>

        <script type="text/javascript">
            function addUser() {
            
            $("#ui").append($('option:selected', "#uo").clone());
            $('option:selected', "#uo").remove();
            
            
            }

            function removeUser() {
              
            $("#uo").append($('option:selected', "#ui").clone());
            $('option:selected', "#ui").remove();
            }
            
            function selectAll(){
             $('#ui option').prop('selected', true);   
                
            }
        </script>    

    </head>
    <body>
        <h1>TesteTrocaValores</h1>
        <form action="/TreinamentoTeste2/UpdateGroupUsers" method="POST">


            <table border="1">
                <thead>
                    <tr>
                        <th>Users outside the group</th>
                        <th>Select action</th>
                        <th>Users inside the group</th>
                    </tr>
                </thead>
                <tbody>


                    <tr>
                        <td>      
                            <select  id="uo" name ="uo" size="5" style="max-width:auto;">
                                <c:forEach var="user" items="${usersOutside}">
                                    <option value="${user.id}">${user.login}</option>
                                </c:forEach>
                            </select>


                        </td>
                        <td>

                            <input type="button" value="Add >>" onclick="addUser()"/>
                            <br><br>
                            <input type="button" value="<< Remove" onclick="removeUser()"/>
                        </td>
                        <td>               

                            <select id="ui" name ="ui" size="5" style="max-width:auto;" multiple="50">
                                <c:forEach var="user2" items="${usersInside}">
                                    <option value="${user2.id}">${user2.login}</option>
                                </c:forEach>
                            </select>

                        </td>
                    </tr>
                </tbody>
            </table>
            <br><br>
            <input type="hidden" value="${group.id}" name="groupId" />
            <input type="submit" value="Confirm" onclick="selectAll()"/>
        </form>

    </body>
</html>

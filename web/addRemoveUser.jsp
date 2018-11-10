<%-- 
    Document   : TesteTrocaValores
    Created on : Nov 9, 2018, 6:00:14 PM
    Author     : edson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        </script>    

    </head>
    <body>
        <h1>TesteTrocaValores</h1>
        <form action="UpdateGroupAction.do">


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
                            <select  id ="uo" size="5">
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="fiat">Fiat</option>
                                <option value="audi">Audi</option>
                            </select>


                        </td>
                        <td>

                            <input type="button" value="Add >>" onclick="addUser()"/>
                            <br><br>
                            <input type="button" value="<< Remove" onclick="removeUser()"/>
                        </td>
                        <td>               

                            <select id ="ui" size="5">
                                <option value="volvo">Volvo</option>
                                <option value="saab">Saab</option>
                                <option value="fiat">Fiat</option>
                                <option value="audi">Audi</option>
                            </select>

                        </td>
                    </tr>
                </tbody>
            </table>
            <br><br>

            <input type="submit" value="Confirm" />
        </form>

    </body>
</html>

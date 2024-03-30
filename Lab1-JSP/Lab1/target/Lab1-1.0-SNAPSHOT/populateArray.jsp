<%-- 
    Document   : populateArray
    Created on : 30 Mar 2024, 12:36:37 AM
    Author     : Nurhazirah Binti Abdullah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>populateArray</title>
    </head>
    <body>
        <h1>Read the array and populate its value into HTML’s table</h1>
          
        
        <%
            int array[][] = new int [3][3];
            
            array[0][0] = 2500;
            array[0][1] = 2100;
            array[0][2] = 2200;
            array[1][0] = 2000;
            array[1][1] = 1900;
            array[1][2] = 2400;
            array[2][0] = 1800;
            array[2][1] = 2200;
            array[2][2] = 2450;
        %>
 
 <style>
            table, th, td
            {
                border: 2px solid lightgrey;
                border-collapse: collapse;
            }
            
            th
            {
                background-color: #FFD66F;
            }
            
            td
            {
               text-align: center; 
               background-color: #FFF0CB;
            }
        </style>
        
        <table style = "width:50%">
            <tr>
                <th>Salesman</th>
                <th>Jan</th>
                <th>Feb</th>
                <th>Mac</th>
            </tr>
            <tr>
                <td>Salesman 1</td>
                <td><%= array[0][0] %></td>
                <td><%= array[0][1] %></td>
                <td><%= array[0][2] %></td>
            </tr>
            <tr>
                <td>Salesman 2</td>
                <td><%= array[1][0] %></td>
                <td><%= array[1][1] %></td>
                <td><%= array[1][2] %></td>
            </tr>
            <tr>
                <td>Salesman 3</td>
                <td><%= array[2][0] %></td>
                <td><%= array[2][1] %></td>
                <td><%= array[2][2] %></td>
            </tr>
        </table>
            <br>
        <footer>&copy;2024-Nurhazirah Abdullah</footer>
        
    </body>
</html>
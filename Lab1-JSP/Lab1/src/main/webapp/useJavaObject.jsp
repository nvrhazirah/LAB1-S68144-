<%-- 
    Document   : useJavaObject
    Created on : 29 Mar 2024, 10:44:54 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Using Java's object in JSP Page</title>
        <% response.setIntHeader("Refresh", 5); %>
    </head>
    <body>
        <h1>Display Current Date and perform Auto Refresh Header</h1>
        <% 
            Date todayDate = new Date();
            out.print("<p>Current date and time is " +todayDate.toString() +"</p>");
         %>
    </body>
</html>


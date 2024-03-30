<%-- 
    Document   : GetAttribute
    Created on : 29 Mar 2024, 11:37:25 PM
    Author     : Nurhazirah Binti Abdullah
--%>

<%@page import="java.math.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Implicit JSP</title>
</head>
<body>
    <% 
        String name = (String) session.getAttribute("user");
        out.println("UserName is: " + name);
    %>
</body>
</html>


 <%-- 
    Document   : ResultArea
    Created on : 30 Mar 2024, 1:30:21 AM
    Author     : Nurhazirah Binti Abdullah
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Circle Area Calculator</title>
</head>
<body>
    <h2>Calculate Circle Area</h2>
    
    <form action="ResultArea.jsp" method="post">
        Enter the radius: <input type="text" name="radius">
        <input type="submit" value="Calculate">
    </form>

    <%-- Retrieve and validate the radius parameter --%>
    <%
        String radiusParam = request.getParameter("radius");
        double radius = 0.0; // THIS IS Default value
        
        // Check if the radius parameter is provided and is a valid number
        if (radiusParam != null && radiusParam.matches("^\\d*\\.?\\d+$")) {
            // Convert the radius parameter to a double value
            radius = Double.parseDouble(radiusParam);
        } else if (radiusParam != null) {
            // If the radius parameter is provided but is invalid, display an error message
            out.println("<p>Invalid radius provided.</p>");
        }
        
        // TO CALCULATE and display the area if a valid radius is provided
        if (radius > 0) {
            double area = Math.PI * radius * radius;
            out.println("<p>The area of the circle is: " + area + "</p>");
        }
    %>
</body>
</html>

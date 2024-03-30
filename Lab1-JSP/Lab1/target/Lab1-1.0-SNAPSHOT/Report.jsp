<%-- 
    Document   : Report
    Created on : 30 Mar 2024, 5:49:36 PM
    Author     : Nurhazirah binti Abdullah
--%>

<%@page import="java.io.*, java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales Report</title>
    <style>
        table {
            width: 80%;
            border-collapse: collapse;
            margin: 20px auto;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<%
    // Path to the Sales.csv file
    String csvFile = getServletContext().getRealPath("/Sales.csv");
    BufferedReader br = null;
    String line = "";
    String cvsSplitBy = ";";
    List<String[]> customerData = new ArrayList<>();

    try {
        br = new BufferedReader(new FileReader(csvFile));
        while ((line = br.readLine()) != null) {
            // Split the line using the separator ";"
            String[] data = line.split(cvsSplitBy);
            customerData.add(data);
        }
    } catch (FileNotFoundException e) {
        out.println("Sales.csv file not found!");
    } catch (IOException e) {
        out.println("Error reading Sales.csv file!");
    } finally {
        if (br != null) {
            try {
                br.close();
            } catch (IOException e) {
                out.println("Error closing buffered reader!");
            }
        }
    }

    
    out.println("<table>");
    out.println("<tr><th>Customer</th><th>Cust. Type</th><th>Purchase</th><th>Discount</th></tr>");
    for (String[] data : customerData) {
        String customer = data[0];
        String custType = data[1];
        double purchase = Double.parseDouble(data[2]);
        double discount = (custType.equals("Cash")) ? purchase * 0.1 : 0.0;
        out.println("<tr><td>" + customer + "</td><td>" + custType + "</td><td>" + purchase + "</td><td>" + discount + "</td></tr>");
    }
    out.println("</table>");
%>

</body>
</html>

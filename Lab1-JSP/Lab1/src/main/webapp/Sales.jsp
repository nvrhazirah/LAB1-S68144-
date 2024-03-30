<%-- 
    Document   : Sales
    Created on : 30 Mar 2024, 1:36:15 AM
    Author     : Nurhazirah Binti Abdullah
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
                String fName = "C:\ZIRA SEM4\CSM3023 WEB\LAB1\Lab1-JSP\Lab1\src\main\webapp\Sales.csv";
                String thisLine; 
                FileInputStream fis = new FileInputStream(fName);
                DataInputStream myInput = new DataInputStream(fis);
                int i=1; 
            %>
            
            <style>
            table, th, td
            {
                text-align: center; 
                border: 1.6px solid black;
                border-collapse: collapse;
            }
        </style>
            
            <table  width="500" cellspacing='0' >
                <tr bgcolor="BEBEBE">
                <th>Customer</th>
                <th>Cust. Type</th>
                <th>Purchase</th>
                <th>Discount</th>
                </tr>
                
                <%
                while ((thisLine = myInput.readLine()) != null)
                {
                String strar[] = thisLine.split(";");
                out.print("<tr>");
                    
                    for(int j=0;j<strar.length;j++)
                                          {
                                          out.print("<td> " +strar[j]+ "</td> ");
                }
                out.print("<td>");
                java.util.Formatter myFormat = new java.util.Formatter();
                double calc = Double.parseDouble(strar[2])*10/100;
                
                if(i==1){
                out.print(myFormat.format("0.00"));
                }
                else if(i==3){
                out.print(myFormat.format("0.00"));
                }
                else if(i==5){
                out.print(myFormat.format("0.00"));
                }
                else if(i==7){
                out.print(myFormat.format("0.00"));
                }
                else{
                out.print(myFormat.format("%.2f",calc));
                }
                
                out.print("</td>");
                out.print("</tr>");
            i++;
            } 
            %>
        </table>

    </body>
</html>

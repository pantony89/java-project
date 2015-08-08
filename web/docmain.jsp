<%-- 
    Document   : docmain
    Created on : 8-Aug-2015, 12:12:57 AM
    Author     : c0633176
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            out.println("<h1> Hi"+session.getAttribute("docUser")+"</h1>");
        Database d=new Database();
        ResultSet r=d.docWiseAppDetails(session.getAttribute("docUser").toString());
        out.println("<table><tr><th>Patient Name</th><th>Gender</th><th>Age</th><th>Apt Time</th><th>Email Id</th><th>Diagnosis</th></tr>");
        while(r.next()){
            out.println("<tr><td>"+r.getString("pt_name")+"</td><td>"+r.getString("sex")+"</td><td>"+r.getString("age")+"</td><td>"+r.getString("apttime")+"</td><td>"+r.getString("mailid")+"</td><td>"+r.getString("diagnosis")+"</td>");
        }
        out.println("</table>");
    %>
    </body>
</html>

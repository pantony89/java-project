<%-- 
    Document   : commentretirve
    Created on : 8-Aug-2015, 4:16:49 PM
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
            Database d=new Database();
            ResultSet r=d.retriveComment(request.getParameter("email"), request.getParameter("doc"));
            while(r.next()){
                out.println("<h1>"+r.getString("docname")+"</h1>");
                out.println("<h3>"+r.getString("comments")+"</h3>");
            }
        %>
    </body>
</html>

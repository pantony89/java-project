<%-- 
    Document   : retrivecommentbyemailid_doc
    Created on : 8-Aug-2015, 4:09:42 PM
    Author     : c0633176
--%>
<%@page import="java.util.LinkedList"%>
<%@page import="com.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="commentretirve.jsp" method="post">
            <%
                    Database d=new Database();
                    LinkedList<String> doc=d.docList();
                    LinkedList<String> time=d.getDocTime();
                %>
            Email:  <input type="email" name="email"/><br>
            Doctor Name: <select name="doc" required>
                <%
                    for(int i=0;i<doc.size();i++){
                        out.println("<option value='"+doc.get(i)+"'>"+doc.get(i)+"</option>");
                    }
                %>
            </select>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>

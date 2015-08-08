<%-- 
    Document   : retrivecommentbyemailid_doc
    Created on : 8-Aug-2015, 4:09:42 PM
    Author     : c0633176
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="commentretirve.jsp" method="post">
            Email:  <input type="email" name="email"/><br>
           Doctor Name: <input type="text" name="doc"/>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>

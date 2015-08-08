<%-- 
    Document   : docComment
    Created on : 8-Aug-2015, 3:43:07 PM
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
        <%=request.getParameter("docId")%>
        <%=request.getParameter("ptemail")%>
        <form action="docCom" method="post">
            <input type="hidden" name="docName" value="<%=request.getParameter("docId")%>"/>
            <input type="hidden" name="ptEmail" value="<%=request.getParameter("ptemail")%>"/>
            <textarea name="comment">
                
            </textarea>
            <input type="submit" value="Submit"/>
        </form>
                
    </body>
</html>

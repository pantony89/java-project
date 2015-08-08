<%-- 
    Document   : ptAppointment
    Created on : 7-Aug-2015, 8:09:57 PM
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
        <%
                    Database d=new Database();
                    LinkedList<String> doc=d.docList();
                    LinkedList<String> time=d.getDocTime();
                %>
        <form action="pApp" method="post">
            Name: <input type="text" name="ptName" required><br>
            Age : <input type="text" name="age" required><br>
            Gender:<input type="radio" name="gender"  value="Male"> Male <input type="radio" name="gender" value="Female" required> Female<br>
            Doctor:<select name="doc" required>
                <%
                    for(int i=0;i<doc.size();i++){
                        out.println("<option value='"+doc.get(i)+"'>"+doc.get(i)+"</option>");
                    }
                %>
            </select><br>
            Appointment Date:<input type="text" name="doa" id="doa"/><br>
            Time: <select name="time">
                    <%
                       for(int i=0;i<time.size();i++){
                            out.println("<option value='"+time.get(i)+"'>"+time.get(i)+"</option>");
                       } 
                    %>                
                  </select><br>
                  Email:<input type="text" name="email" id="doa" required/><br>
                  Diagnosis:<input type="text" name="diagno" id="doa" required/><br>
            <input type="submit" value="Submit"/>
        </form>
    </body>
</html>

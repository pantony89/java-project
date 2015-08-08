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
        <link href="css/default.css" rel="stylesheet" type="text/css" />
         <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script src="js/modernizr.custom.63321.js"></script>
    </head>
    <body>
        
<div id="header1">
<div id="header">
	<div id="logo">
            <img src="images/logo1.jpg">
		<h1>Health System</h1>
		<h2>The Complete care is  now Here</h2>
	
    <div id="menu">
<ul>
  <li><a href="main.html">Home</a></li>
  <li><a href="doctorLogin.jsp">doctor</a></li>
  <li><a href="patient.jsp">patient</a></li>
  <li><a href="contact.jsp">Contact</a></li>
  <li><a href="about.jsp">About</a></li>
</ul>
	</div>
    </div>
    
</div>
    <style>
        #doc{
            heigth:380px;
        }
    </style>
</div>
        <div id="page">
	<div id="splash" class="twocols">
            <div id="doc">
                <style>
                    table,th,td {
                         border: 1px solid black;
                             border-collapse: collapse;
                            }
                            th,td{  
                                padding: 10px;
                            }
                </style>
        <%
            out.println("<h1>Hello Doctor :"+session.getAttribute("docUser")+"</h1><br><h3>Here Is your Patient info</h3><br>");
        Database d=new Database();
        ResultSet r=d.docWiseAppDetails(session.getAttribute("docId").toString());
        out.println("<table><tr><th>Patient Name</th><th>Gender</th><th>Age</th><th>Apt Time</th><th>Email Id</th><th>Diagnosis</th></tr>");
        while(r.next()){
            out.println("<tr><td>"+r.getString("pt_name")+"</td><td>"+r.getString("sex")+"</td><td>"+r.getString("age")+"</td><td>"+r.getString("apttime")+"</td><td><a href='docComment.jsp?docId="+session.getAttribute("docUser").toString()+"&ptemail="+r.getString("mailid")+"'>"+r.getString("mailid")+"</a></td><td>"+r.getString("diagnosis")+"</td>");
        }
        out.println("</table>");
    %>
    <p></p>
    <h2> Doctor You Should click the Patient <Strong>EMail-ID</strong> to give them the Instructions to Follow
    </h2>
    <doc>
    </div>
    </div>
        
    
	<div style="clear: both;">&nbsp;</div>
</div>
<hr />

        
         <div id="footer">
    <p id="legal">Antony Duvistan<b></b>
	
</div>
    </body>
</html>

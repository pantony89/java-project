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
  <li><a href="index.jsp">Home</a></li>
  <li><a href="doctorLogin.jsp">doctor</a></li>
  <li><a href="patientApp.jsp">patient</a></li>
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
                    textarea {
	width: 600px;
	height: 120px;
	border: 3px solid #cccccc;
	padding: 5px;
	font-family: Tahoma, sans-serif;
	background-image: url(bg.gif);
	background-position: bottom right;
	background-repeat: no-repeat;
}
                </style>
                <h2>
                    Doctor Please submit your Comments..
                </h2>
                <br>
     <%=request.getParameter("docId")%>
        <%=request.getParameter("ptemail")%>
        <form action="docCom" method="post">
            <input type="hidden" name="docName" value="<%=request.getParameter("docId")%>"/>
            <input type="hidden" name="ptEmail" value="<%=request.getParameter("ptemail")%>"/>
            <textarea name="comment">
                
            </textarea>
            <input type="submit" value="Submit"/>
        </form>
    <p></p>
    <h2> Back to doctor Page <Strong><a href="docmain.jsp">Back to Doctor page</a></strong>
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

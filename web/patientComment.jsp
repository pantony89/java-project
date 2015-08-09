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
</div>
        
     
<div id="page">
	<div id="splash" class="twocols">
		<div class="col1">
                    
			<h2 class="title">Health Care</h2>
			<p >Health care is the diagnosis,treatment,and prevention of disease, illness, injury, and other physical and mental impairments in humans.  <a href="JavaScript:A('http://en.wikipedia.org/wiki/Health_care');"> Read more&hellip;</a></p>
		</div>
		<div class="col2">
			<h2 class="title">Important</h2>
			<ul class="list">
				<li><a href="http://www.who.int/dietphysicalactivity/en/index.html">Global Strategy on Diet, Physical Activity and Health</a></li>
				<li><a href="http://www.who.int/chp/en/index.html">Chronic diseases and health promotion;</a></li>
				<li><a href="http://www.who.int/maternal_child_adolescent/en/">Maternal, newborn, child and adolescent health;</a></li>
			</ul>
		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
  <style>
                        
      #con{
          
          padding-left:4em;
      }         
                    </style>
	<div id="content">
		<div id="con">
                    
                    <h2> Doctor Instructions</h2>
	  <%
            Database d=new Database();
            ResultSet r=d.retriveComment(request.getParameter("email"), request.getParameter("doc"));
            while(r.next()){
                out.println("<h2>Doc : "+r.getString("docname")+"</h2><h3> Instruction: "+r.getString("comments")+"</h3>");
                
            }
        %>
        <br><p> Go Back: <a href="patientApp.jsp">Back</a><p> <br>
            <p><a href="Lockout.jsp">logout
  </p>
            <br><br>
        
		</div>
	</div>


       
        
         <script>

</script>

<div id="sidebar">
		<ul>
			<li>
				<h2>Recent Updates</h2>
				<ul>
					<li>
						<h3><span>6/25:</span> Awareness</h3>
						<p><a href="http://www.awarenesshealth.com.au">Awareness for Health and Wellbeing </a></p>
					</li>
					<li>
						<h3><span>6/21:</span>Health News</h3>
						<p><a href="http://healthfinder.gov/News/">health finder;</a></p>
					</li>
					<li>
						<h3><span>6/17:</span> volunteering </h3>
						<p><a href="http://volunteeringindia.org.in/mentally-challenged-children.html">Volunteers make tremendous impact on mentally challenged children&hellip;</a></p>
					</li>
				</ul>
			</li>
			
	</div>
	<div style="clear: both;">&nbsp;</div>
</div>
<hr />

        
         <div id="footer">
    <p id="legal">Antony Duvistan<b></b>
	
</div>
</body>
</html>
   
</html>

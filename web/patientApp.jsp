<%-- 
    Document   : retrivecommentbyemailid_doc
    Created on : 2-Aug-2015, 4:09:42 PM
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
                    
                    <h2> Check your Status here</h2>
	<form action="patientComment.jsp" method="post">
            <%
                    Database d=new Database();
                    LinkedList<String> doc=d.docList();
                    LinkedList<String> time=d.getDocTime();
                %>
                Email:  <input type="email" name="email" required/><br><br>
            Doctor Name: <select name="doc" required>
                <%
                    for(int i=0;i<doc.size();i++){
                        out.println("<option value='"+doc.get(i)+"'>"+doc.get(i)+"</option>");
                    }
                %>
            </select>
            <br><br><input type="submit" value="Submit"/>
             <input type="reset" value="reset"/>
        </form>
            <br> <p>Book your appointment..<a href="ptAppointment.jsp"><strong>Click here</Strong></a></p>
                 
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

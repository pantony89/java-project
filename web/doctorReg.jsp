<%-- 
    Document   : doctorReg
    Created on : 4-Aug-2015, 8:05:33 PM
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
  <li><a href="main.html">Home</a></li>
  <li><a href="doctorLogin.jsp">doctor</a></li>
  <li><a href="patient.jsp">patient</a></li>
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
  
	<div id="content">
		<div>
	<form method="post" action="docReg">
            <center>
            <table >
                <thead>
                    <tr>
                        <th colspan="2">Doctor Registration</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Doctor first Name</td>
                        <td><input type="text" name="fname" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Doctor Id</td>
                        <td><input type="text" name="Docid" value="" required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" required /></td>
                    </tr>
                     <tr>
                        <td>RE-Password</td>
                        <td><input type="password" name="repass" value="" required /></td>
                    </tr>
                    <tr>
                        <td>Specialization</td>
                        <td><input type="text" name="spec" value="" required/></td>
                    </tr>
                    <tr>
                        <td>gender</td>
                        <td><input type="text" name="gender" value=""  required/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="main.html">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
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

<%-- 
    Document   : Lockout
    Created on : 8-Aug-2015, 9:23:23 PM
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
</div>
        
     
<div id="page">
	<div id="splash" class="twocols">
		<div class="col1">
		<p><%
            session.invalidate();
        %>
        <h3><font color="Red">You are Sucessfully logged out...</font></h3>
        <a href="inde.jsp">Go-Back To Home Page</a></p>
			<h2 class="title">Health Care</h2>
			<p >Health care is the diagnosis,treatment,and prevention of disease, illness, injury, and other physical and mental impairments in humans.  <a href="JavaScript:A('http://en.wikipedia.org/wiki/Health_care');"> Read more&hellip;</a></p>
		</div>
		<div class="col2">
			<h2 class="title">Important</h2>
			
<form method="post" action="docLogin">
            <center>
            <table  cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Doctor Login Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Doctor ID</td>
                        <td><input type="text" name="docid" value=""  required/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" required /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="doctorReg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
			
		</div>
		<div style="clear: both;">&nbsp;</div>
	</div>
  
	<div id="content">
		<div>
			<h1 class="title">Welcome to Health  System!</h1>
                        <p><strong>Health Care System</strong> is a Web portal Designed by . You"re free to use it for personal use. <em>Enjoy :)</em></p>
			<h2>Functions</h2>
                        <p><ul><li>patients should be able to check doctor availability and book the appointment.</li>
                            <li>Doctor should be able to accept or reject appointment.</li>
                             <li>Doctor prescription storage and viewable to all departments.</li>
                             <li>Lab admins to update lab test results.</li>
                             <li>Pharmacists to provide stock details and delivery of medicines.</li>
                             <li>Appointment accept or reject is confirm to patient through registered mobile number by Sending Sms.</li></ul>
                             <blockquote>
				<p>The Goal of this web application is to provide a flexiblity. Today's life is so busy,so it is Difficult to Manage Time in this busy Life.
                                Our Side Helps to Manage your Time in a Efficient Way..... </p>
			</blockquote>
		</div>
	</div>


       
        
         <script>
function A(url )
{window.open(url,'popupWindow', 'scrollbars=yes');
}
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

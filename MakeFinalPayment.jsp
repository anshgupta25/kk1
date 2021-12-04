<%
int slots=(int)request.getSession().getAttribute("Slots");
String Locate=(String)request.getSession().getAttribute("Location");
String date=(String)request.getSession().getAttribute("date");
int inT=(int)request.getSession().getAttribute("Intime");
int outT=(int)request.getSession().getAttribute("Outtime");
String value = (String)request.getParameter("valuePAY");
double pay = 0.1;
pay += 0.25*(outT-inT)*(Integer.parseInt(value));
String Phone = (String)request.getSession().getAttribute("PHONE_VIA_LOGIN");
if(Phone==null){	
Phone = (String)request.getSession().getAttribute("NUMBER_VIA_REGISTER");	
}


String Cr = (String)request.getParameter("CR");

if(Cr == null){
	Cr="0";
}
else{
pay+=	0.5;
}
String CW = (String)request.getParameter("CW");
System.out.println(CW);
if(CW == null){
	CW="0";
}
else{
pay+= 0.01;	
}
String FR = (String)request.getParameter("FR");
if(FR== null){
	FR="0";
}
else{
pay+= 0.08;	
}
out.println(pay);
Random rnd = new Random();
int numInt = rnd.nextInt(999999);
String num =""+numInt;
%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.io.*,java.util.*, java.io.BufferedReader.*, java.io.InputStreamReader.*,java.io.OutputStreamWriter.*, java.net.URL.*,java.net.URLConnection.*, java.net.URLEncoder.*" %>    
<%@page import="java.net.HttpURLConnection.*" %>
<!--

=========================================================
* Now UI Dashboard - v1.5.0
=========================================================

* Product Page: https://www.creative-tim.com/product/now-ui-dashboard
* Copyright 2019 Creative Tim (http://www.creative-tim.com)

* Designed by www.invisionapp.com Coded by www.creative-tim.com

=========================================================

* The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

-->
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="../assets/img/apple-icon.png">
<link rel="icon" type="image/png" href="../assets/img/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Now UI Dashboard by Creative Tim</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<!--     Fonts and icons     -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.1/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- CSS Files -->
<link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
<link href="../assets/css/now-ui-dashboard.css?v=1.5.0" rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/demo/demo.css" rel="stylesheet" />
</head>

<body class="">
	<div class="wrapper ">
		<div class="sidebar" data-color="black">
			<!--
        Tip 1: You can change the color of the sidebar using: data-color="blue | green | orange | red | yellow"
    -->
			<div class="logo">
				<a href="http://www.creative-tim.com" class="simple-text logo-mini">
					OOPS </a> <a href="http://www.creative-tim.com"
					class="simple-text logo-normal"> Project </a>
			</div>
			<div class="sidebar-wrapper" id="sidebar-wrapper">
				<ul class="nav">
					<li><a href="./dashboard.html"> 
							Dashboard
					</a></li>
					<li><a href="./map.html"> 
							My Booking
					</a></li>
					<li><a href="./icons.html"> 
							Waiting List
					</a></li>
					<li><a href="./notifications.jsp"> 
							My Wallet
					</a></li>
					
					<li><a href="./Cancellation.jsp"> 
							Cancellation
					</a></li>
					<li class="active "><a href="./location.jsp"> 
							Search Location
					</a></li>
					<li><a href="./typography.html"> 
							Review us
					</a></li>
					<li class="active-pro"><a href="./upgrade.html"> 
							Upgrade to PRO
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel" id="main-panel">
			<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent  bg-primary  navbar-absolute">
				<div class="container-fluid">
					<div class="navbar-wrapper">
						<div class="navbar-toggle">
							<button type="button" class="navbar-toggler">
								<span class="navbar-toggler-bar bar1"></span> <span
									class="navbar-toggler-bar bar2"></span> <span
									class="navbar-toggler-bar bar3"></span>
							</button>
						</div>
						<a class="navbar-brand" href="#pablo">Final Payment</a>
					</div>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navigation" aria-controls="navigation-index"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span> <span
							class="navbar-toggler-bar navbar-kebab"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation">
						

					</div>
				</div>
			</nav>
			<style>
			h6 {text-align: right;}
			h3 {text-align: right;}
			</style>
			<!-- End Navbar -->
			<div class="panel-header panel-header-sm"></div>
			<div class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
	
									
								<h4 class="card-title"><a href="Booking.jsp">PROCEED</a> </h4>
							</div>
							<div class="card-body">
							<% out.println("<h5>Date</h5><h6 >    " +date +  "  </h6><br>"); %>
							<% out.println("<h5>Location</h5><h6 >    " +Locate +  "  </h6><br>"); %>
							<% out.println("<h5>Payment Amount</h5><h6 >    " + pay +  " AB </h6><br>"); %>
							<% out.println("<h5>Payment Receipt Number</h5><h6 >    " + num +  "  </h6><br>"); %>
							<% out.println("<h5>Phone Number</h5><h6 >    " + Phone +  "  </h6><br>"); %>
							<% out.println("<h5>No of slots</h5><h6 >    " + slots  +  "  </h6><br>"); %>
							<% out.println("<h5>In Time</h5><h6 >   " + inT  +  "  hrs </h6><br>"); %>
							<% out.println("<h5>Out Time</h5><h6 >    " + outT  +  "  hrs </h6><br>"); %>
							<%
							String am="";
							if(Cr.equals("1")){
							out.println("<h5>Car Repair</h5><h6 >   Paid   </h6><br>"); am+="1";
							}
							else{
								am+="0";	
							}
							if(CW.equals("1")){
								out.println("<h5>Car Wash</h5><h6 >   Paid   </h6><br>"); am+="1";
							}
							else{
								am+="0";	
							}
							if(FR.equals("1")){
							out.println("<h5>Fuel Refill</h5><h6 >   Paid   </h6><br>"); am+="1";
							}
							else{
								am+="0";
							}
							
							
							request.getSession().setAttribute("PaymentAmount",pay);
							request.getSession().setAttribute("Amneties",am);
							request.getSession().setAttribute("ID",num);
							%>
							</div>
							Please bring screenshot of the above receipt during parking.
							<a href="location.jsp" style = >&nbsp&nbsp&nbsp&nbsp&nbspCancel Transaction</a>
						</div>
						
						
						
						
					</div>
				
				</div>
			</div>
			
		</div>
	</div>
	<!--   Core JS Files   -->
	<script src="../assets/js/core/jquery.min.js"></script>
	<script src="../assets/js/core/popper.min.js"></script>
	<script src="../assets/js/core/bootstrap.min.js"></script>
	<script src="../assets/js/plugins/perfect-scrollbar.jquery.min.js"></script>
	<!--  Google Maps Plugin    -->
	<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
	<!-- Chart JS -->
	<script src="../assets/js/plugins/chartjs.min.js"></script>
	<!--  Notifications Plugin    -->
	<script src="../assets/js/plugins/bootstrap-notify.js"></script>
	<!-- Control Center for Now Ui Dashboard: parallax effects, scripts for the example pages etc -->
	<script src="../assets/js/now-ui-dashboard.min.js?v=1.5.0"
		type="text/javascript"></script>
	<!-- Now Ui Dashboard DEMO methods, don't include it in your project! -->
	<script src="../assets/demo/demo.js"></script>
</body>

</html>
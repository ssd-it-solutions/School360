<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>

	<head>
		<title>RCM</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="../assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="../assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="../assets/css/ie8.css" /><![endif]-->
		
		
		
		<link href='https://fonts.googleapis.com/css?family=Work+Sans:400,300,700' rel='stylesheet' type='text/css'>
		
		
	</head>

	<body>
		<!-- Sidebar -->
			<section id="sidebar">
				<div class="inner">
					<h4>Welcome Admin</h4>
					<a href="" style="text-decoration: none;"><i class="fa fa-sign-out fa-1x" aria-hidden="true"></i></a>
				<div>
				
				</div>
				
				<div style="height: 20%;">
				
				</div>
				
					<nav>
						<ul>
							<li><a href="SetupAdmin.jsp">SETUP</a></li>
							<li><a href="SetEmployeeDetails.jsp"><i class="fa fa-users fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Employees</a></li>
							<li><a href="#intro"><i class="fa fa-joomla fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Role</a></li>
							<li><a href="SetCompetencyDetails.jsp"><i class="fa fa-yelp fa-2x" aria-hidden="true"></i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Competencies</a></li>
							<li><a href="MapCompetencyDetails.jsp"><i class="fa fa-map-signs fa-2x" aria-hidden="true"></i>Map&nbsp;Role&nbsp;Competency</a></li>
							
						</ul>
					</nav>
				</div>
			</section>
			
			
			
		<div id="wrapper" align="center">
		
			<!-- intro -->		
			<section id="intro" class="wrapper style1 fullscreen fade-up">
			<!-- background-image: url(../assets/css/images/blue2.jpg); moz-background-size: cover;-webkit-background-size: cover;background-size: cover;background-position: top center !important;background-repeat:no-repeat !important;background-attachment: fixed; -->
				
				<div class="" style=" width: 80%; height:5%;" align="left">
					<h4 style="color: white; font-family: monospace;"> > &nbsp;Role Details </h4>
				</div>
			
				<div class="inner" style="border: 1px solid white; width: 60%; height: 80%; margin-top: 20px; ">
					
					<form>
								<input type="file">
								<button type="submit" class="btn">Upload</button>
					</form>
					
					<hr style="border-width: 2px; background-color: white;">
					
					<form method="post" style="margin-top: 50px;">
										<div class="field half first">
											<label for="empId">Role Id</label>
											<input type="text" name="roleId" id="roleId" style="color: white;"/>
										</div>
										<div class="field half">
											<label for="Name">Role Name</label>
											<input type="text" name="roleName" id="roleName" style="color: white;"/>
										</div>
										
										
										
										<div class="field" align="center">
											<button type="submit" class="btn">Submit</button>
										</div>
					</form>
					
                               
				</div>
			</section>
					
		</div>

	</body>
	
	<!-- Scripts -->
			<script src="../assets/js/jquery.min.js"></script>
			<script src="../assets/js/jquery.scrollex.min.js"></script>
			<script src="../assets/js/jquery.scrolly.min.js"></script>
			<script src="../assets/js/skel.min.js"></script>
			<script src="../assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="../assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../assets/js/main.js"></script>
			
			
			
	
</html>
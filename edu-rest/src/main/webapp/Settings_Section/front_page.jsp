<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.SettingDTO" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>School ERP</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fullcalendar.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.gritter.css" />
<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>-->
<style>
	.form-name{text-align:center;font-size:45px;text-decoration:underline;}
	.form-type{text-align:center;font-size:22px;color:#555555;margin-top:30px;font-weight:600;}
	.form-role{text-align:center;font-size:26px !important;}
	.designation-name{float:right;margin-top:-30px;}
	.output_name{font-size:18px;}
	.org_title{font-size:22px;margin-left:13%;}
	.front-widget-box{
		border-left:0px solid #CDCDCD;
		border-top:0px solid #CDCDCD;
		border-right:0px solid #CDCDCD;
	}
	#content{background:none repeat scroll 0 0 #F9F9F9;}
	.ashram_school{margin-top:50px;}
	.org_name{margin-top:50px;}
	.unit{margin-top:50px;}
	.org_mobile_no{margin-top:20px;}
	.principle_name{margin-top:20px;}
</style>
</head>
<body>

<!--Header-part-->
	<%@ include file="../PageParts/header.jsp"%>
<!--Header-part end -->

<!--sidebar-menu-->
    <%@ include file="../PageParts/sidebar.jsp" %>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
   		<h1 class="form-name">Grant Determination</h1>
		<p class="form-type"> Year <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script> Final</p>
		<p class="form-type"> Year <script>document.write(new Date().getFullYear()- 1);</script>-<script>document.write(new Date().getFullYear());</script> Estimated</p>
		
    	 <%  SettingDTO setting = (SettingDTO) request.getAttribute("SettingDetails");%>
   
    <div class="row-fluid">
     <div class="span12">
		<div class="box box-primary">
			
						
			<div class="box-body">
				<div class="mailbox-controls" >
				 <div class="widget-box front-widget-box">
						
									<p><strong style="font-size:18px;" class="org_title">Organization Name:</strong><span class="output_name"><%= setting.getOrganization_name() %></span></br></p>
								
									<p class="ashram_school"><strong style="font-size:18px;" class="org_title">Name of the Ashram School:</strong><span class="output_name"><%= setting.getAshram_name() %></span></br></p>
		
									<p class="unit"><strong style="font-size:18px;" class="org_title">Unit Name:Primary/Primary(high)/Secondary /Secondary(high)/HighSchool</strong></p>
						
									<p class="org_name"><strong style="font-size:18px;" class="org_title">Name of the Organization President:</strong><span class="output_name"><%= setting.getOrg_president_name() %></span></br></p>
		
									<p class="org_mobile_no"><strong style="font-size:18px;" class="org_title">Mobile No:</strong><span class="output_name"><%= setting.getPresident_mobileNo() %></span></br></p>
						
									<p class="principle_name"><strong style="font-size:18px;" class="org_title">Primary/Secondary Principle Name:</strong><span class="output_name"><%= setting.getPrinciple_name() %>	</span></br></p>	
								
									<p class="principle_mob_no"><strong style="font-size:18px;" class="org_title">Mobile No:</strong><span class="output_name"><%= setting.getPrinciple_mobileNo() %></span> </br></p>	
								
									
								
									
								
					</div>
				</div>
			</div>
							
							
						</div>
					</div><!-- End of span7 -->
    </div><!-- End of row-fluid -->

    <hr/>

  </div> <!-- End of container-fluid -->
</div>

<!--end-main-container-part-->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>


<!--end-Footer-part-->



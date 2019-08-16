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
	.box.box-primary {
		border-top-color:#faa21c;
		box-shadow: 0 1px 3px rgba(0,0,0,.12), 0 1px 2px rgba(0,0,0,.24);
	}
	.box{
		position:relative;
		border-radius:3px;
		background:#ffffff;
		border-top:3px solid #d2d6de;
		margin-bottom:20px;
		width:100%;
	}
	.box-body{
		border-top-left-radius:0;
		border-top-right-radius:0;
		border-bottom-right-radius:3px;
		border-bottom-left-radius:3px;
		padding:10px;
	}
	.text-center{
		text-align:center;
	}
	img.img-thumbnail{
		border-radius:10px;
		width:100%;
	}
	.img-thumbnail{
		display:inline-block;
		max-width:100%;
		height:auto;
		padding:4px;
		line-height:1.42857143;
		background-color:#fff;
		border:1px solid #ddd;
		transition:all .2s ease-in-out;
	}
	.btn-primary{
		background-color:#727272;
		border-color:#525252;
		transition:.3s;
	}
	.box-header.with-border {
		border-bottom:1px solid #f4f4f4;
	}
	.box-header{
		color:#444;
		display:block;
		padding:10px;
		position:relative;
	}
	.box-header .box-title{
		display:inline-block;
		font-size:18px;
		margin:0;
		line-height:1;
	}
	h3{
	font-family: 'Roboto','Source Sans Pro',sans-serif;
	}
	.box-header>.box-tools{
		position:absolute;
		right:10px;
		top:5px;
	}
	.has-feedback{
		position:relative;
	}
	.mailbox-controls{
		padding:0px;
	}
	.table-responsive{
		overflow-y:hidden;
	}
	.table-responsive{
		min-height:	.01%;
		overflow-x:auto;
	}
	.mailbox-messages>.table{
		margin:0;

	}
	.table-bordered{
		border:1px solid #fff;
	}
	.table-striped>tbody>tr:nth-of-type(odd) {
		background-color:#fff;
	}
	.table-bordered>tbody>tr>td{
		border:0px solid #f4f4f4;
	}
	
</style>
</head>
<body>

<!--Header-part-->
	<%@ include file="../PageParts/header.jsp"%>
<!--Header-part end -->

<!--sidebar-menu-->
    <%@ include file="../PageParts/sidebar.jsp" %>
<!--sidebar-menu-->

<!-- Main-contain-part -->
 <div id="content">
	<!--breadcrumbs-->
		<div id="content-header">
			<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="student.html" title="student list" class="tip-bottom">Student List</a></div>
		</div>
	<!--End-breadcrumbs-->

	<!--Action boxes-->
		<div class="container-fluid">
			<div class="quick-actions_homepage">
			<h5 style="float:left;">Institution Details</h5>
			</div>
			
	<!--End-Action boxes-->  
			<hr/>
			<div class="row-fluid">
				<div class="span12">
					<div class="span3">
						<div class="box box-primary">
							<div class="box-body text-center">
								<img src="https://demo1.smart-school.in/uploads/school_content/logo/1.png" class="img-thumbnail" width="304" height="236">
								</br>
								</br>
								<a href="settings/update" role="button" class="btn btn-primary btn-sm upload_logo" data-toggle="tooltip" data-original-title="Edit Logo">Edit Logo</a>
							</div>
						</div>
					 </div> <!-- End of span3 -->
					<%  List<SettingDTO> settingList = (List<SettingDTO>) request.getAttribute("settingList"); %>
					<div class="span7">
						<div class="box box-primary">
							<div class="box-header with-border">
								<h3 class="box-title"><i class="setting"></i>General Setting</h3>
							</div>
						
							<div class="box-body">
								<div class="mailbox-controls" >
									<div class="table-responsive mailbox-messages">
										<table class="table table-bordered table-hover table-striped">
											<tbody>
												<%
													for(SettingDTO setting:settingList){
												 %>
												<tr>
													<td>
														<strong>Organization Name:</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getOrganization_name() %>
													</td>
												</tr>
												<tr>
													<td> 
														<strong>Name of the Ashram School:</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getAshram_name() %>
													</td>
												</tr>
												<tr>
													<td>
														<strong>Name of the Organization President:</strong>
													</td>
													<td clas="mailbox-name">
														<%= setting.getOrg_president_name() %>
													</td>
												</tr>
												<tr>
													<td> 
														<strong>Mobile No(organization president):</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getPresident_mobileNo() %>
													</td>
												</tr>
												
												<tr>
													<td>
														<strong>Pri/Sec Principle Name:</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getPrinciple_name() %>													</td>
												</tr>
												<tr>
												
												<tr>
													<td> 
														<strong>Mobile No(principle):</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getPrinciple_mobileNo() %>		
													</td>
												</tr>
												
													<td> 
														<strong>Address:</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getAddress() %>	
													</td>
												</tr>

												
												<tr>
													<td> 
														<strong>Email:</strong>
													</td>
													<td class="mailbox-name">
														<%= setting.getEmail() %>	
													</td>
												</tr>

												<tr>
													<td> 
														<strong>School Code:</strong>
													</td>
													<td class="mailbox-name">
														 <%= setting.getSchool_code() %>	
													</td>
												</tr>

												

												<tr>
													<td> 
														<strong>Language:</strong>
													</td>
													<td class="mailbox-name">
														 <%= setting.getSchool_language() %>
													</td>
												</tr>
												
												
														<div class="box-tools pull-right">
															<div class="has-feedback">
																<a href="updateSetting/<%=setting.getId()%>" role="button" class="btn btn-primary btn-sm upload_logo" data-toggle="tooltip" data-original-title="Edit Logo">Edit</a>
															</div>
														</div>
														
														<div class="box-tools pull-right">
															<div class="has-feedback">
																<a href="viewSettingDetails/<%=setting.getId()%>" role="button" class="btn btn-primary btn-sm upload_logo" data-toggle="tooltip" data-original-title="Edit Logo">Print</a>
															</div>
														</div>
												
												<%
													}
												%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							
							
						</div>
					</div> <!-- End of span7 -->
					
				</div> <!-- end of span12  -->
			</div> <!-- end of row-fluid -->
		</div> <!-- end of container-fluid  -->

</div> <!-- end of content -->
 

<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>

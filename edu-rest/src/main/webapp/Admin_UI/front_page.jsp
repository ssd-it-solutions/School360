<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page import="com.ssdit.edu.dto.SettingDTO" %>
<%@ page import="java.util.List" %>


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
	p {
         font-size:12px;
         color:red;
       }	
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
	

	.form-name{text-align:center;font-size:45px;text-decoration:underline;}
	.form-type{text-align:center;font-size:22px;color:#555555;margin-top:30px;font-weight:600;}
	.form-role{text-align:center;font-size:26px !important;}
	.front-widget-box{
		border-left:0px solid #CDCDCD;
		border-top:0px solid #CDCDCD;
		border-right:0px solid #CDCDCD;
	}
	#content{background:none repeat scroll 0 0 #F9F9F9;}
	.organization_title{font-size:15px;}
	.organization_details{font-size:14px;}
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
		<p class="form-type"> Year <script>document.write(new Date().getFullYear()- 1);</script>-<script>document.write(new Date().getFullYear()- 0);</script> Final</p>
		<p class="form-type"> Year <script>document.write(new Date().getFullYear()- 0);</script>-<script>document.write(new Date().getFullYear()+1);</script> Estimated</p>
		
		
    <%
    	List<SettingDTO> listOfSettingDTO = (List<SettingDTO>)request.getAttribute("registeredDetails");
    %>	
   
    <div class="row-fluid">
     <div class="span12">
		<div class="box box-primary">
			
						
			<div class="box-body">
				<div class="mailbox-controls" >
				<% if(null != listOfSettingDTO && !listOfSettingDTO.isEmpty()) {
					SettingDTO setting = listOfSettingDTO.get(0);
					%>
				 <div class="widget-box front-widget-box">
						 
						 <div class="box-body">
								<div class="mailbox-controls" >
									<div class="table-responsive mailbox-messages">
										<table class="table table-bordered table-hover table-striped">
											<tbody>
												
												<tr>
													<td>
														<strong class="organization_title">Organization Name:</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getOrganization_name() %>
													</td>
												</tr>
												<tr>
													<td> 
														<strong class="organization_title">Name of the Ashram School:</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getAshram_name() %>
													</td>
												</tr>
												<tr>
													<td>
														<strong class="organization_title">Name of the Organization President:</strong>
													</td>
													<td clas="mailbox-name organization_details">
														<%= setting.getOrg_president_name() %>
													</td>
												</tr>
												<tr>
													<td> 
														<strong class="organization_title">Mobile No(organization president):</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getPresident_mobileNo() %>
													</td>
												</tr>
												
												<tr>
													<td>
														<strong class="organization_title">Pri/Sec Principle Name:</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getPrinciple_name() %>
													</td>
												</tr>
												<tr>
												
												<tr>
													<td> 
														<strong class="organization_title">Mobile No(principle):</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getPrinciple_mobileNo() %>		
													</td>
												</tr>
												
													<td> 
														<strong class="organization_title">Address:</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getAddress() %>	
													</td>
												</tr>

												
												<tr>
													<td> 
														<strong class="organization_title">Email:</strong>
													</td>
													<td class="mailbox-name organization_details">
														<%= setting.getEmail() %>	
													</td>
												</tr>

												<tr>
													<td> 
														<strong class="organization_title">School Code:</strong>
													</td>
													<td class="mailbox-name organization_details">
														 <%= setting.getSchool_code() %>	
													</td>
												</tr>

												

												<tr>
													<td> 
														<strong class="organization_title">Language:</strong>
													</td>
													<td class="mailbox-name organization_details">
														 <%= setting.getSchool_language() %>
													</td>
												</tr>
												
												
														<div class="box-tools pull-right">
															<div class="has-feedback">
																<a href="<%=applicationURL%>/admin/updateSetting/<%=setting.getId()%>" role="button" class="btn btn-primary btn-sm upload_logo" data-toggle="tooltip" data-original-title="Edit Logo">Edit</a>
															</div>
														</div>
														
														<div class="box-tools pull-right">
															<div class="has-feedback">
																<a href="<%=applicationURL%>/admin/viewSettingDetails/<%=setting.getId()%>" role="button" class="btn btn-primary btn-sm upload_logo" data-toggle="tooltip" data-original-title="Edit Logo">Print</a>
															</div>
														</div>
														
														
														
								
							</div>
	
											</tbody>
										</table>
										<div class="form-actions" style="display:block;">
											<a href="<%=applicationURL%>/admin/primarySchool" type="button" class="btn btn-success" style="float:right;">Next</a>
										</div>
									</div>
								</div>
							</div>
							
				</div>
				<%}else{ %>
  <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Edit Institute Information</h5>
						</div>
						<div class="widget-content nopadding">
						<form:form id="setting_form" class="form-horizontal" action="/school360/addDetails"  method="post" modelAttribute="settingDTO">
							<!--<form action="#" method="get" class="form-horizontal">-->
								<div class="control-group">
									<label class="control-label">Organization Name :</label>
										<div class="controls">
											<form:input type="text" class="span11" id="organization_name" name="organization_name"  path="organization_name" autocomplete="off" onkeyup="return validateFrontPage(this);"/>
											<form:input type="hidden" id="id" name="id" path="id"  />
											<p id="p1"></p>
										</div>
								</div>
							
								<div class="control-group">
									<label class="control-label">Name of the Ashram School:</label>
										<div class="controls">
											<form:input type="text" class="span11" id="ashram_name" name="ashram_name"  path="ashram_name" onkeyup="return validateFrontPage(this);" autocomplete="off"/>
											<p id="p2"></p>
										</div>
								</div>
								
								
								<div class="control-group">
									<label for="normal" class="control-label">Name of the Organization President :</label>
										<div class="controls">
											<form:input type="text" id="org_president_name" name="org_president_name" autocomplete="off" class="span8 mask text" path="org_president_name" onkeyup="return validateFrontPage(this);"/>
										    <p id="p3"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Mobile No(organization president) :</label>
										<div class="controls">
											<form:input type="number" id="president_mobileNo" name="president_mobileNo" autocomplete="off" class="span8 mask text" path="president_mobileNo" onkeyup="return validateFrontPage(this);"/>
										    <p id="p4"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Pri / Sec Principle Name :</label>
										<div class="controls">
											<form:input type="text" id="principle_name" name="principle_name" autocomplete="off" class="span8 mask text" path="principle_name" onkeyup="return validateFrontPage(this);"/>
										    <p id="p5"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Mobile No(principle) :</label>
										<div class="controls">
											<form:input type="number"  id="principle_mobileNo" name="principle_mobileNo" autocomplete="off" class="span8 mask text" path="principle_mobileNo" onkeyup="return validateFrontPage(this);"/>
										    <p id="p6"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Address :</label>
										<div class="controls">
											<form:input type="text" id="address" name="address" class="span8 mask text" autocomplete="off" path="address" onkeyup="return validateFrontPage(this);"/>
											<p id="p7"></p>
										</div>
								</div>
								
								
								<div class="control-group">
									<label for="normal" class="control-label">Email :</label>
										<div class="controls">
											<form:input type="email"  id="email" name="email"  class="span8 mask text" autocomplete="off" path="email" onkeyup="return validateFrontPage(this);"/>
											<p id="p8"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">School Code :</label>
										<div class="controls">
											<form:input type="text" id="school_code" name="school_code" autocomplete="off" class="span8 mask text" path="school_code" onkeyup="return validateFrontPage(this);"/>
											<p id="p9"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Language :</label>
										<div class="controls">
											<form:input type="text" id="school_language" name="school_language" autocomplete="off" class="span8 mask text" path="school_language" onkeyup="return validateFrontPage(this);"/>
										    <p id="p10"></p>
										</div>
								</div>
								
								
								
						<!-- end of personal information form details   -->
							</form:form>
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->

			<!-- start SECOND FORM DESIGN  --->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Logo Information</h5>
						</div>
						<div class="widget-content nopadding">
						<div class="control-group">
									<label class="control-label">Upload Logo :</label>
										<div class="controls">
											<input type="file" class="span11" name="logo" accept=".png, .jpg, .jpeg" id="logo" onchange="return validateFrontPage(this);">
										
											<p id="p11"></p>
										</div>
								</div>
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<input type="submit" class="btn btn-success" id="front_info" onClick="validateFrontPage(this)">
								</div>
							<!--</form>-->
							
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->

	<!--- end of SECOND FORM DESIGN  -->

	<!--- end of FIRST FORM DESIGN  -->

   
			</div> <!-- end of tab1 div -->

           <!-- end of tab2 -->
           <!-- end of tab3 -->
           		</div>
				<%} %>
			</div>
							
							
				 

    <hr/>

  
           </div> <!-- End of container-fluid -->
        </div> <!-- end of widget-content -->

		</div>
					</div><!-- End of span7 -->
    </div><!-- End of row-fluid
    
</div>
<!--end-main-container-part-->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>

 <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     
<script type="text/javascript">  			
function validateFrontPage(activeElement){
		var org_name =$ ('#organization_name').val();
		var ashram =$ ('#ashram_name').val();
		var president =$ ('#org_president_name').val();
		var president_mobile =$ ('#president_mobileNo').val();
		var principle =$ ('#principle_name').val();
		var principle_mobile =$ ('#principle_mobileNo').val();
		var addr =$ ('#address').val();
		var emailAddr =$ ('#email').val();
		var code =$ ('#school_code').val();
		var language =$ ('#school_language').val();
		var logo_upload =$ ('#logo').val();
		
	if(activeElement.id == "front_info" || activeElement.id == "organization_name" ){
		org_name=validateCharactersOnly(org_name,"#p1","#organization_name");
	}if(activeElement.id == "front_info" || activeElement.id == "ashram_name" ){
		ashram=validateCharactersOnly(ashram,"#p2","#ashram_name");
	}if(activeElement.id == "front_info" || activeElement.id == "org_president_name" ){
		president=validateCharactersOnly(president,"#p3","#org_president_name");
	}if(activeElement.id == "front_info" || activeElement.id == "president_mobileNo" ){
		president_mobile=validateMobile(president_mobile,"#p4","#president_mobileNo");
	}if(activeElement.id == "front_info" || activeElement.id == "principle_name" ){
		principle=validateCharactersOnly(principle,"#p5","#principle_name");
	}if(activeElement.id == "front_info" || activeElement.id == "principle_mobileNo" ){
		principle_mobile=validateMobile(principle_mobile,"#p6","#principle_mobileNo");
	}if(activeElement.id == "front_info" || activeElement.id == "address" ){
		addr=validateField(addr,"#p7","#address");
	}if(activeElement.id == "front_info" || activeElement.id == "email" ){
		emailAddr=validateEmail(emailAddr,"#p8","#email");
	}if(activeElement.id == "front_info" || activeElement.id == "school_code" ){
		code=validateNonEmpty(code,"#p9","#school_code");
	}if(activeElement.id == "front_info" || activeElement.id == "school_language" ){
		language=validateNonEmpty(language,"#p10","#school_language");
	}if(activeElement.id == "front_info" || activeElement.id == "logo" ){
		logo_upload=validateDocument(logo_upload,"#p11","#logo");
	}if(org_name && ashram && president && president_mobile && principle && principle_mobile && addr && emailAddr && code && language && logo_upload){
		return true;
	}else{
		return false;
	}
	}

	function navigateToNextPage(){
		$('.btnNext').click(function(){
				$('.nav-tabs > .active').next('li').find('a').trigger('click');
			});

			$('.btnPrevious').click(function(){
				$('.nav-tabs > .active').prev('li').find('a').trigger('click');
			});
	}

</script>     


<!--end-Footer-part-->
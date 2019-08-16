<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Institution Details</h1>
    </div>
<!--End-Action boxes-->    

    <hr/>
    <div class="row-fluid" style="display:block;">
 
	  <div class="span12">
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Edit Institute Information</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab2">Education Details</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab3">Experience Details</a></li>
            </ul>
         </div>
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Edit Institute Information</h5>
						</div>
						<div class="widget-content nopadding">
						<%  SettingDTO setting = (SettingDTO) request.getAttribute("SettingDetails");%>
						<form:form id="setting_form" class="form-horizontal" action="../modifySetting"  method="post" modelAttribute="settingDTO">
							<!--<form action="#" method="get" class="form-horizontal">-->
								<div class="control-group">
									<label class="control-label">Organization Name :</label>
										<div class="controls">
											<input type="text" class="span11" name="organization_name" value="<%= setting.getOrganization_name() %>" />
											<form:input type="hidden" id="id" name="id" value="<%=setting.getId() %>" path="id"  />
										</div>
								</div>
							
								<div class="control-group">
									<label class="control-label">Name of the Ashram School:</label>
										<div class="controls">
											<input type="text" class="span11" name="ashram_name" value="<%= setting.getAshram_name() %>" />
										</div>
								</div>
								
								
								<div class="control-group">
									<label for="normal" class="control-label">Name of the Organization President :</label>
										<div class="controls">
											<input type="text" id="mask-date" name="org_president_name" class="span8 mask text" value="<%= setting.getOrg_president_name() %>">
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Mobile No(organization president) :</label>
										<div class="controls">
											<input type="number" id="mask-date" name="president_mobileNo" class="span8 mask text" value="<%= setting.getPresident_mobileNo() %>">
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Pri / Sec Principle Name :</label>
										<div class="controls">
											<input type="text" id="mask-date" name="principle_name" class="span8 mask text" value="<%= setting.getPrinciple_name() %>">
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Mobile No(principle) :</label>
										<div class="controls">
											<input type="number" id="mask-date" name="principle_mobileNo" class="span8 mask text" value="<%= setting.getPrinciple_mobileNo() %>">
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Address :</label>
										<div class="controls">
											<input type="text" id="mask-date" name="address" class="span8 mask text" value="<%= setting.getAddress() %>">
										</div>
								</div>
								
								
								<div class="control-group">
									<label for="normal" class="control-label">Email :</label>
										<div class="controls">
											<input type="email" id="mask-date" name="email"  class="span8 mask text" value="<%= setting.getEmail() %>">
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">School Code :</label>
										<div class="controls">
											<input type="text" id="mask-date" name="school_code" class="span8 mask text" value="<%= setting.getSchool_code() %>">
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Language :</label>
										<div class="controls">
											<input type="text" id="mask-date" name="school_language" class="span8 mask text" value="<%= setting.getSchool_language() %>">
										</div>
								</div>
								
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Save</button>
								</div>
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
											<input type="file" class="span11" value="xyz school" />
										</div>
								</div>
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Upload</button>
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
        </div> <!-- end of widget-content -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>

<!--end-main-container-part-->


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>

     <!-- End Footer Part -->
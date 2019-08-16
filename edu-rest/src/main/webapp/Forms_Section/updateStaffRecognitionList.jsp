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
     <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/staffRecognitionList" title="Staff Recognition List" class="tip-bottom">Staff Recognition List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Update Staff Recognition List</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Update Staff Recognition List</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="staffSalary_form" class="form-horizontal" id="staffSalary_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Update Staff Recognition List-information</h5>
								</div>
								<div class="widget-content nopadding">
									
									

								<div class="update_staff_salary" id="update_staff_salary" style="display:block;">
									
									<div class="control-group">
										<label for="normal" class="control-label">Name of the Staff :  </label>
											<div class="controls">
												<select class="span8 mask text" id="staff_name" name="staff_name">
													<option value="">--- Select Name of the Staff ---</option>
													<option value="" selected>ABC</option>
													<option value="">XYZ</option>
													<option value="">PQR</option>
																									
												</select>
	
											</div>
									</div>
									
									
								<div class="control-group">
										<label class="control-label">Designation:</label>
											<div class="controls">
												<input type="text" class="span11" name="designation" id="designation" value="Senior Teacher" />
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Acceptance Period:</label>
											<div class="controls">
												<input type="text" class="span11" name="acceptance_period" id="acceptance_period" value="2Years" />
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Order Number:</label>
											<div class="controls">
												<input type="text" class="span11" name="order_number" id="order_number" value="0123" />
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Date:</label>
											<div class="controls">
												<input type="date" class="span11" name="date" id="date"  />
											</div>
									</div>									
								
									<div class="control-group">
										<label class="control-label">Type/Mode of salary staff:</label>
											<div class="controls">
												<select class="span8 mask text" id="type_salary" name="type_salary">
													<option value="">--- Select Type ---</option>
													<option value="" selected>Permanent</option>
													<option value="">Temporary</option>
												</select>
											</div>
									</div>						
								</div>  <!-- End Of School Form  -->
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Update</button>
								</div>
								</div> <!-- End of widget-content nopadding -->
							</div><!-- End of widget-box -->
						</div><!-- end of span6 -->
						<!--- end of  FORM DESIGN  -->
					</div> <!-- end of tab1 div -->

				</div> <!-- end of widget-content -->
			</form>
		</div><!-- end of widget-box -->
     </div> <!-- end of span12 -->
	</div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
 </div> <!-- End of content -->


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
<!-- Footer-part End -->
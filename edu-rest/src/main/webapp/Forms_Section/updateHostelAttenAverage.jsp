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
     <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/hostelAvgAttendance" title="Hostel Attendance List" class="tip-bottom">Hostel Attendance Average</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Update Hostel Attendance Average</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Update Hostel Attendance Average</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="foodItem_form" class="form-horizontal" id="foodItem_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Update Hostel Attendance Average-information</h5>
								</div>
								<div class="widget-content nopadding">
									
									

								<div class="hostel_average_attendance" id="hostel_average_attendance" style="display:block;">
									
									<div class="control-group">
										<label for="normal" class="control-label">Month :  </label>
											<div class="controls">
												<select class="span8 mask text" id="month" name="month">
													<option value="">--- Select Month ---</option>
													<option value="" selected>April - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">June - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">July - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">August - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">September - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">October - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">November - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">December - <script>document.write(new Date().getFullYear()- 2);</script></option>
													<option value="">January - <script>document.write(new Date().getFullYear()- 1);</script></option>
													<option value="">February - <script>document.write(new Date().getFullYear()- 1);</script></option>
													<option value="">March - <script>document.write(new Date().getFullYear()- 1);</script></option>		
												</select>
											</div>
									</div>
									
									
									<div class="control-group">
										<label class="control-label">Total Attendance In the Month:</label>
											<div class="controls">
												<input type="number" class="span11" name="total_attendance" id="total_attendance" value="50"/>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Working Days:</label>
											<div class="controls">
												<input type="number" class="span11" name="working_days" id="working_days" value="4"/>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Average:</label>
											<div class="controls">
												<input type="number" class="span11" name="average" id="average" value="20"/>
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
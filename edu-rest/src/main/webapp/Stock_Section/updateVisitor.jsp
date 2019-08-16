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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="visitor.html" title="student list" class="tip-bottom">Visitors List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Update Vistor Form</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Update Visitor Information</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="visitor_form" class="form-horizontal" id="visitor_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Update Visitor-information</h5>
								</div>
								<div class="widget-content nopadding">
									
									<div class="control-group">
										<label class="control-label">Name of Visitor :</label>
											<div class="controls">
												<input type="text" class="span11" placeholder="Name of Officer" autocomplete="off" id="visitorName" value="XYZ"/>
												<p id="p1"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Date of Visit : </label>
											<div class="controls">
												<input type="date" name="date" id="date" value="19/01/2019"/>
												<p id="p2"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Designation :</label>
											<div class="controls">
												<input type="text" class="span11" id="designation" placeholder="Designation" autocomplete="off" value="Teacher" />
												<p id="p3"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Residence Meeting Attendance : </label>
											<div class="controls">
												<input type="number" class="span11" id="residence_meet_attendance" autocomplete="off" name="residence_meet_attendance" value="100" />
												<p id="p4"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Non-Residence Meeting Attendance : </label>
											<div class="controls">
												<input type="number" class="span11" id="nonresidence_meet_attendance" autocomplete="off" name="nonresidence_meet_attendance" value="200" />
												<p id="p5"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Residence Attendance of Visits : </label>
											<div class="controls">
												<input type="number" class="span11" id="residence_visits_attendance" autocomplete="off" name="residence_visits_attendance" value="20"/>
												<p id="p6"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Non-Residence Attendance of Visits : </label>
											<div class="controls">
												<input type="number" class="span11" id="nonresidence_visits_attendance" autocomplete="off" name="nonresidence_visits_attendance" value="30"/>
												<p id="p7"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Residence Attendance of AttendanceSheet : </label>
											<div class="controls">
												<input type="number" class="span11" id="residence_sheet_attendance" autocomplete="off" name="residence_sheet_attendance" value="10"/>
												<p id="p8"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Non-Residence Attendance of AttendanceSheet : </label>
											<div class="controls">
												<input type="number" class="span11" id="nonresidence_sheet_attendance" autocomplete="off" name="nonresidence_sheet_attendance" value="15" />
												<p id="p9"></p>
											</div>
									</div>
								
									<div class="control-group">
										<label class="control-label">Remarks: </label>
											<div class="controls">
												<input type="text" class="span11"  id="remarks" autocomplete="off" name="remarks" value="Good"/>
												<p id="p10"></p>
											</div>
									</div>

								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success" id="visitor_info" onClick="return validateVisitorInformation(this)">Update</button>
								</div>
							<!--</form>-->
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


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
<script type="text/javascript">  			
function validateVisitorInformation(activeElement){

	var vname =$('#visitorName').val();
	var dt=$('#date').val();
	var desg=$('#designation').val();
	var meet=$('#residence_meet_attendance').val();
	var nmeet=$('#nonresidence_meet_attendance').val();
	var visit=$('#residence_visits_attendance').val();
	var nvisit=$('#nonresidence_visits_attendance').val();
	var sheet=$('#residence_sheet_attendance').val();
	var nsheet=$('#nonresidence_sheet_attendance').val();
	var rmks=$('#remarks').val();
	
if(activeElement.id == "visitor_info" || activeElement.id == "visitorName" ){
	vname=validateNonEmpty(cname,"#p1","#visitorName");
}if(activeElement.id == "visitor_info" || activeElement.id == "date" ){
	dt=validateNonEmpty(cphone,"#p2","#date");
}if(activeElement.id == "visitor_info" || activeElement.id == "designation" ){
	desg=validateNonEmpty(emailad,"#p3","#designation");
}if(activeElement.id == "visitor_info" || activeElement.id == "residence_meet_attendance" ){
    meet=validateNonEmpty(addr,"#p4","#residence_meet_attendance");
}if(activeElement.id == "visitor_info" || activeElement.id == "nonresidence_meet_attendance" ){
	nmeet=validateNonEmpty(cntry,"#p5","#nonresidence_meet_attendance");
}if(activeElement.id == "visitor_info" || activeElement.id == "residence_visits_attendance" ){
	visit=validateNonEmpty(st,"#p6","#residence_visits_attendance");
}if(activeElement.id == "visitor_info" || activeElement.id == "nonresidence_visits_attendance" ){
	nvisit=validateNonEmpty(dist,"#p7","#nonresidence_visits_attendance");
}if(activeElement.id == "visitor_info" || activeElement.id == "residence_sheet_attendance" ){
	sheet=validateNonEmpty(name,"#p8","#residence_sheet_attendance");
}if(activeElement.id == "visitor_info" || activeElement.id == "nonresidence_sheet_attendance" ){
	nsheet=validateNonEmpty(phone,"#p9","#nonresidence_sheet_attendance");
}if(activeElement.id == "visitor_info" || activeElement.id == "remarks" ){
	rmks=validateNonEmpty(bname,"#p10","#remarks");
}
if(vname && dt && desg && meet && nmeet && visit && nvisit && sheet && nsheet && rmks){
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
      <script>
     populateCountries("country","state");
     </script>
       
<!-- Footer-part End -->
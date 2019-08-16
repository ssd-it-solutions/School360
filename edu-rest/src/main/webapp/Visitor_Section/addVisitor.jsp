<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/visitor" title="Visitor list" class="tip-bottom">Visitors List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Vistor Form</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Visitor Information</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<!--<form name="visitor_form" class="form-horizontal" id="visitor_form">-->
			<form:form id="visitor_form" class="form-horizontal" action="/admin/addVisitor" onSubmit="return validateVisitor(this);" method="post" modelAttribute="visitorDTO">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Visitor-information</h5>
								</div>
								<div class="widget-content nopadding">
									
									<div class="control-group">
										<label class="control-label">Name of Visitor:</label>
											<div class="controls">
												<form:input type="text" class="span11" placeholder="Name of Officer" autocomplete="off"  name="visitorName" id="visitorName" onkeyup="validateVisitor(this);" path="visitorName" />
											    <p id="p1"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Date of Visit: </label>
											<div class="controls">
												<form:input type="date" name="visitDate" id="date" autocomplete="off" onchange="validateVisitor(this);" path="visitDate" />
											    <p id="p2"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Designation:</label>
											<div class="controls">
												<form:input type="text" class="span11" placeholder="Designation" autocomplete="off" name="designation" id="designation" onkeyup="validateVisitor(this);" path="designation" />
											    <p id="p3"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Residence Attendance For VisitDay: </label>
											<div class="controls">
												<form:input type="number" class="span11" name="residenceVisitDay" autocomplete="off" id="residenceVisitDay" onkeyup="validateVisitor(this);" path="residenceVisitDay" />
											    <p id="p4"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Non-Residence Attendance For VisitDay: </label>
											<div class="controls">
												<form:input type="number" class="span11" name="nonResidenceVisitDay" autocomplete="off" id="nonResidenceVisitDay" onkeyup="validateVisitor(this);" path="nonResidenceVisitDay" />
											    <p id="p5"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Residence Presence According Visits: </label>
											<div class="controls">
												<form:input type="number" class="span11" name="residencePresenceVisit" autocomplete="off" id="residencePresenceVisit" onkeyup="validateVisitor(this);" path="residencePresenceVisit" />
											    <p id="p6"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Non-Residence Presence According Visits: </label>
											<div class="controls">
												<form:input type="number" class="span11" name="nonResidencePresenceVisit" autocomplete="off" id="nonResidencePresenceVisit" onkeyup="validateVisitor(this);" path="nonResidencePresenceVisit" />
											    <p id="p7"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Residence Presence According AttendanceSheet: </label>
											<div class="controls">
												<form:input type="number" class="span11" name="residencePresenceAttendanceSheet" autocomplete="off" id="residencePresenceAttendanceSheet" onkeyup="validateVisitor(this);" path="residencePresenceAttendanceSheet" />
											    <p id="p8"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Non-Residence Presence According AttendanceSheet: </label>
											<div class="controls">
												<form:input type="number" class="span11" name="nonResidencePresenceAttendanceSheet" autocomplete="off" id="nonResidencePresenceAttendanceSheet" onkeyup="validateVisitor(this);" path="nonResidencePresenceAttendanceSheet" />
											    <p id="p9"></p>
											</div>
									</div>
									<div class="control-group">
										<label class="control-label">Remarks: </label>
											<div class="controls">
												<form:input type="text" class="span11"  id="remarks" name="remarks" autocomplete="off" onkeyup="validateVisitor(this);" path="remarks"/>
											    <p id="p10"></p>
											</div>
									</div>

								<div class="form-actions">
								
								<input type="submit" class="btn btn-success" id="visitor_info" onClick="validateVisitor(this)">
								</div>
							<!--</form>-->
								</div> <!-- End of widget-content nopadding -->
							</div><!-- End of widget-box -->
						</div><!-- end of span6 -->
						<!--- end of  FORM DESIGN  -->
					</div> <!-- end of tab1 div -->

				</div> <!-- end of widget-content -->
			<!--</form>-->
			 </form:form>
		</div><!-- end of widget-box -->
     </div> <!-- end of span12 -->
	</div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
 </div> <!-- End of content -->




<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
      <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     
<script type="text/javascript">  			
function validateVisitor(activeElement){
	
	var vname =$('#visitorName').val();
	var dt=$('#date').val();
	var desg=$('#designation').val();
	var meet=$('#residenceVisitDay').val();
	var nmeet=$('#nonResidenceVisitDay').val();
	var visit=$('#residencePresenceVisit').val();
	var nvisit=$('#nonResidencePresenceVisit').val();
	var sheet=$('#residencePresenceAttendanceSheet').val();
	var nsheet=$('#nonResidencePresenceAttendanceSheet').val();
	var rmks=$('#remarks').val();
	
if(activeElement.id == "visitor_info" || activeElement.id == "visitorName" ){
	vname=validateNonEmpty(vname,"#p1","#visitorName");
}if(activeElement.id == "visitor_info" || activeElement.id == "date" ){
	dt=validateJoining(dt,"#p2","#date");
}if(activeElement.id == "visitor_info" || activeElement.id == "designation" ){
	desg=validateNonEmpty(desg,"#p3","#designation");
}if(activeElement.id == "visitor_info" || activeElement.id == "residenceVisitDay" ){
	meet=validateNonEmpty(meet,"#p4","#residenceVisitDay");
}if(activeElement.id == "visitor_info" || activeElement.id == "nonResidenceVisitDay" ){
	nmeet=validateNonEmpty(nmeet,"#p5","#nonResidenceVisitDay");
}if(activeElement.id == "visitor_info" || activeElement.id == "residencePresenceVisit" ){
	visit=validateNonEmpty(visit,"#p6","#residencePresenceVisit");
}if(activeElement.id == "visitor_info" || activeElement.id == "nonResidencePresenceVisit" ){
	nvisit=validateNonEmpty(nvisit,"#p7","#nonResidencePresenceVisit");
}if(activeElement.id == "visitor_info" || activeElement.id == "residencePresenceAttendanceSheet" ){
	sheet=validateNonEmpty(sheet,"#p8","#residencePresenceAttendanceSheet");
}if(activeElement.id == "visitor_info" || activeElement.id == "nonResidencePresenceAttendanceSheet" ){
	nsheet=validateNonEmpty(nsheet,"#p9","#nonResidencePresenceAttendanceSheet");
}if(activeElement.id == "visitor_info" || activeElement.id == "remarks" ){
	rmks=validateNonEmpty(rmks,"#p10","#remarks");
}if(vname && dt && desg && meet && nmeet && visit && nvisit &&sheet && nsheet && rmks){
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
<!-- Footer-part End -->
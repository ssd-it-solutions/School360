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
       <h1>Add Staff Recognition List</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Add Staff Recognition List</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="staff_salary_list_form" class="form-horizontal" id="staff_salary_list_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Add Staff Recognition List-information</h5>
								</div>
								<div class="widget-content nopadding">
									
								<div class="staff_salary_list" id="staff_salary_list" style="display:block;">
									
									<div class="control-group" id="staff_salary_list_form" style="display:block;">
										<label for="normal" class="control-label">Name of the Staff:</label>
											<div class="controls">
												<select class="span8 mask text" id="month" name="month">
													<option value="None">--- Select Name of the Staff ---</option>
													<option value="">ABC</option>
													<option value="">XYZ</option>
													<option value="">PQR</option>
												</select>
												<p id="p1"></p>
											</div>
									</div>
	
									<div class="control-group">
										<label class="control-label">Designation:</label>
											<div class="controls">
												<input type="text" class="span11" name="designation" id="designation" />
												<p id="p2"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Acceptance Period:</label>
											<div class="controls">
												<input type="number" class="span11" name="acceptance_period" id="acceptance_period" />
												<p id="p3"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Order Number:</label>
											<div class="controls">
												<input type="number" class="span11" name="order_number" id="order_number" />
												<p id="p4"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Date:</label>
											<div class="controls">
												<input type="date" class="span11" name="date" id="date" />
												<p id="p5"></p>
											</div>
									</div>									
								
									<div class="control-group">
										<label class="control-label">Type/Mode of salary staff:</label>
											<div class="controls">
												<select class="span8 mask text" id="type_salary" name="type_salary">
													<option value="None">--- Select Type ---</option>
													<option value="">Permanent</option>
													<option value="">Temporary</option>
												</select>
												<p id="p6"></p>
											</div>
									</div>									
									
								</div>  <!-- End Of School Form  -->
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="button" class="btn btn-success" id="staff_recognition" onClick="validateStaff(this)">Save</button>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     
<script type="text/javascript">  			
function validateStaff(activeElement){
	var select = $('#month').val();
	var desgn=$('#designation').val();
	var period = $('#acceptance_period').val();
	var order=$('#order_number').val();
	var dt=$('#date').val();
	var salary=$('#type_salary').val();

if(activeElement.id == "staff_recognition" || activeElement.id == "month" ){
	validateDropdown(select,"#p1","#month");
}if(activeElement.id == "staff_recognition" || activeElement.id == "designation" ){
	validateNonEmpty(desgn,"#p2","#designation");
}if(activeElement.id == "staff_recognition" || activeElement.id == "acceptance_period" ){
	validateNonEmpty(period,"#p3","#acceptance_period");
}if(activeElement.id == "staff_recognition" || activeElement.id == "order_number" ){
	validateNonEmpty(order,"#p4","#order_number");
}if(activeElement.id == "staff_recognition" || activeElement.id == "date" ){
	validateNotEmpty(dt,"#p5","#date");
}if(activeElement.id == "staff_recognition" || activeElement.id == "type_salary" ){
	validateDropdown(salary,"#p6","#type_salary");
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
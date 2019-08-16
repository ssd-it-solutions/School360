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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/residenceStudAvg" title="Residence Student Average" class="tip-bottom">Residence Student Average</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Add Residence Student Average</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Add Residence Student Average</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="food_form" class="form-horizontal" id="food_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Add Residence Student Average-information</h5>
								</div>
								<div class="widget-content nopadding">
									
								<div class="residence_student_average" id="residence_student_average" style="display:block;">
									
									<div class="control-group" id="residence_student_average" style="display:block;" >
										<label for="normal" class="control-label">Month:</label>
											<div class="controls">
												<select class="span8 mask text" id="month" name="month" onchange="validateResidence(this);">
													<option value="None">--- Select Month ---</option>
													<option value="">April - <script>document.write(new Date().getFullYear()- 2);</script></option>
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
												<p id="p1"></p>
											</div>
									</div>
	
									<div class="control-group">
										<label class="control-label">Class 1:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_1" id="class_1" onkeyup="validateResidence(this);"/>
													<p id="p2"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Class 2:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_2" id="class_2" onkeyup="validateResidence(this);"/>
													<p id="p3"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 3:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_3" id="class_3" onkeyup="validateResidence(this);"/>
													<p id="p4"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 4:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_4" id="class_4" onkeyup="validateResidence(this);"/>
													<p id="p5"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Class 5:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_5" id="class_5" onkeyup="validateResidence(this);"/>
													<p id="p6"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Class 6:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_6" id="class_6" onkeyup="validateResidence(this);"/>
													<p id="p7"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 7:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_7" id="class_7" onkeyup="validateResidence(this);"/>
													<p id="p8"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 8:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_8" id="class_8" onkeyup="validateResidence(this);"/>
													<p id="p9"></p>
											</div>
									</div>
	
									<div class="control-group">
										<label class="control-label">Class 9:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_9" id="class_9" onkeyup="validateResidence(this);"/>
													<p id="p10"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 10:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_10" id="class_10" onkeyup="validateResidence(this);"/>
													<p id="p11"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 11:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_11" id="class_11" onkeyup="validateResidence(this);"/>
													<p id="p12"></p>
											</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Class 12:</label>
											<div class="controls">
												<input type="number" class="span11" name="class_12" id="class_12" onkeyup="validateResidence(this);"/>
													<p id="p13"></p>
											</div>
									</div>
									
									
								</div>  <!-- End Of School Form  -->
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="button" class="btn btn-success" id="residence_stud" onClick="validateResidence(this)">Save</button>
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
function validateResidence(activeElement){
	var selectmonth = $('#month').val();
	var class1 = $('#class_1').val();
	var class2 = $('#class_2').val();
	var class3 = $('#class_3').val();
	var class4 = $('#class_4').val();
	var class5 = $('#class_5').val();
	var class6 = $('#class_6').val();
	var class7 = $('#class_7').val();
	var class8 = $('#class_8').val();
	var class9 = $('#class_9').val();
	var class10 = $('#class_10').val();
	var class11 = $('#class_11').val();
	var class12 = $('#class_12').val();


if(activeElement.id == "residence_stud" || activeElement.id == "month" ){
	validateDropdown(selectmonth,"#p1","#month");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_1" ){
	validateNonEmpty(class1,"#p2","#class_1");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_2" ){
	validateNonEmpty(class2,"#p3","#class_2");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_3" ){
	validateNonEmpty(class3,"#p4","#class_3");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_4" ){
	validateNonEmpty(class4,"#p5","#class_4");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_5" ){
	validateNonEmpty(class5,"#p6","#class_5");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_6" ){
	validateNonEmpty(class6,"#p7","#class_6");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_7" ){
	validateNonEmpty(class7,"#p8","#class_7");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_8" ){
	validateNonEmpty(class8,"#p9","#class_8");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_9" ){
	validateNonEmpty(class9,"#p10","#class_9");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_10" ){
	validateNonEmpty(class10,"#p11","#class_10");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_11" ){
	validateNonEmpty(class11,"#p12","#class_11");
}if(activeElement.id == "residence_stud" || activeElement.id == "class_12" ){
	validateNonEmpty(class12,"#p13","#class_12");
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
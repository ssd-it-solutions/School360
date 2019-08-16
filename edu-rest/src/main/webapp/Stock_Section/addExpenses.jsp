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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/expenses" title="other expenses" class="tip-bottom">Add Expenses</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Add Other Expenses</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Add Other Expenses</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="expenses_form" class="form-horizontal" id="expenses_form"  onSubmit="return validateExpensesInformation(this);">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Add Other expenses-information</h5>
								</div>
								<div class="widget-content nopadding">
									
									<div class="control-group">
									<label for="normal" class="control-label">Category :  </label>
										<div class="controls">
											<select class="span8 mask text" id="selectCategory" name="category" onchange="showDiv(this); validateExpensesInformation(this);">
											  <option value="None">Select Category</option>
											  <option value="school">School</option>
											  <option value="hostel">Hostel</option>
											</select>
											<p id="p1"></p>
										</div>
								</div>

								<div class="school-form" id="school_form" style="display:block;">
									
									<div class="control-group" id="school_item_list" style="display:none;" >
										<label for="normal" class="control-label">Details:</label>
											<div class="controls">
												<select class="span8 mask text" id="SchoolItemList" name="SchoolItemList" onchange="return validateExpensesInformation(this);">
													<option value="None">--- Select School List ---</option>
													<option value="">Office Casual Expenses</option>
													<option value="">Furniture</option>
													<option value="">Contents</option>
													<option value="">Building Repair</option>
													<option value="">Electricity Bill</option>
													<option value="">Telephone Bill</option>
													<option value="">Stationary Expenses</option>
													<option value="">Sales Tax and Other Taxes</option>
													<option value="">Textbooks</option>
													<option value="">Writing Materials</option>
													<option value="">Library</option>
													<option value="">Miscellaneous Expenditure</option>
													<option value="">Audit</option>
													<option value="">Transport</option>
													<option value="">Travel Expenses</option>
													<option value="">Exam Expenses</option>
													<option value="">Science Laboratory</option>
												</select>
														<p id="p2"></p>
											</div>
									</div>
									
									<div class="control-group" id="hostel_item_list" style="display:none;">
										<label for="normal" class="control-label">Details</label>
											<div class="controls">
												<select class="span8 mask text" id="HostelItemList" name="HostelItemList" onchange="return validateExpensesInformation(this);">
													<option value="None">-- Select Hostel List --</option>
													<option value="">Accidental Expenditure</option>
													<option value="">Water Expenses</option>
													<option value="">Medical Expenses</option>
													<option value="">Electricity Bill</option>
													<option value="">Miscellaneous Expenses</option>
													<option value="">Cutting</option>
													<option value="">Transport</option>
												</select>
														<p id="p3"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="actual_cost" autocomplete="off" id="actual_cost" onkeyup="return validateExpensesInformation(this);"/>
											    		<p id="p4"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="approved_cost" autocomplete="off" id="approved_cost" onkeyup="return validateExpensesInformation(this);"/>
											    		<p id="p5"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="invalid_cost" autocomplete="off" id="invalid_cost" onkeyup="return validateExpensesInformation(this);"/>
											    		<p id="p6"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" name="reasons_invalid_cost" autocomplete="off" id="reasons_invalid_cost" onkeyup="return validateExpensesInformation(this);"></textarea>
											    		<p id="p7"></p>
											</div>
									</div>

								</div>  <!-- End Of School Form  -->
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions">
								<input type="submit" class="btn btn-success" id="expenses_info" onClick="validateExpensesInformation(this);">	
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
     
<script>  			
function validateExpensesInformation(activeElement){
	var cat =$ ('#selectCategory').val();
	var item =$ ('#SchoolItemList').val();
	var hos =$ ('#HostelItemList').val();
	var actual =$ ('#actual_cost').val();
	var approved =$ ('#approved_cost').val();
	var invalid =$ ('#invalid_cost').val();
	var reason =$ ('#reasons_invalid_cost').val();
	
if(activeElement.id == "expenses_info" || activeElement.id == "selectCategory" ){
	cat=validateDropdown(cat,"#p1","#selectCategory");
}if(activeElement.id == "expenses_info" || activeElement.id == "SchoolItemList" ){
	item=validateDropdown(item,"#p2","#SchoolItemList");
}if(activeElement.id == "expenses_info" || activeElement.id == "HostelItemList" ){
	hos=validateDropdown(hos,"#p3","#HostelItemList");
}if(activeElement.id == "expenses_info" || activeElement.id == "actual_cost" ){
	actual=validateNonEmpty(actual,"#p4","#actual_cost");
}if(activeElement.id == "expenses_info" || activeElement.id == "approved_cost" ){
	approved=validateNonEmpty(approved,"#p5","#approved_cost");
}if(activeElement.id == "expenses_info" || activeElement.id == "invalid_cost" ){
	invalid=validateNonEmpty(invalid,"#p6","#invalid_cost");
}if(activeElement.id == "expenses_info" || activeElement.id == "reasons_invalid_cost" ){
	reason=validateNonEmpty(reason,"#p7","#reasons_invalid_cost");
}if(cat && item && hos && actual && approved && invalid && reason){
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
     function showDiv(elem){
        if(elem.value == "school"){
     	   	$("#school_item_list").show();
     		$("#hostel_item_list").hide();
     		
        }
        if(elem.value == "hostel"){
        	$("#school_item_list").hide();
     		$("#hostel_item_list").show();	
        }
       }
     </script>
<!-- Footer-part End -->
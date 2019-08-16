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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>  <a href="<%=applicationURL%>/admin/consumptions" title="consumption list" class="current">Add Consumption</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Consumption</h1>
    </div>
<!--End-Action boxes-->    

<!--Chart-box-->    

<!--End-Chart-box--> 
    <hr/>
    <div class="row-fluid" style="display:block;">
       <!-- end of span6 -->
      <!--<div class="span6">-->
	  <div class="span12">
     		
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Add Consumption Information</a></li>
              <li><a data-toggle="tab" href="#tab2" style="display:block;">Add Consumption</a></li>
              <li style="display:block;"><a data-toggle="tab" href="#tab3">View Consumption</a></li>
            </ul>
         </div>
		 <form  class="form-horizontal" name="exam_form" id="exam_form"> 
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Add Consumption Information</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Category :  </label>
										<div class="controls">
											<select class="span8 mask text" id="exam_class" name="exam_class"  onchange="return validateConsumptionInformation(this);" >
											  <option value="None">Select Category</option>
											  <option>School</option>
											  <option>Hostel</option>
											</select>
											<p id="p1"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label"> Date : </label>
										<div class="controls">
											<input type="date" id="date" class="span8 mask text" onchange="return validateConsumptionInformation(this);" >
											<p id="p2"></p>
										</div>
								</div>
								
								
								<div class="control-group">
									<label class="control-label">No of Students :  </label>
										<div class="controls">
											<input type="number" class="span11" name="exam_name" id="exam_name" autocomplete="off" onkeyup="return validateConsumptionInformation(this);"/>
											<p id="p3"></p>
										</div>
								</div>

								<div class="control-group">
									<label for="normal" class="control-label">Inventory Item :  </label>
										<div class="controls">
											<select class="span8 mask text" id="inventory_item" name="item"  onchange="return validateConsumptionInformation(this);"  >
											  <option value="None">Select Item</option>
											  <option value="Books">Books</option>
											  <option value="Rice">Rice</option>
											  <option value="Pen">Pen</option>
											  <option value="Oil">Oil</option>
											  <option value="Notebooks">Notebooks</option>
											</select>
											<p id="p4"></p>
										</div>
								</div>

								<div class="control-group" id="units" style="display:none;">
									<label for="normal" class="control-label">Units: </label>
										<div class="controls">
											<select class="span8 mask text" id="unit" name="unit" onchange="return validateConsumptionInformation(this);"  >
											  <option value="None">Select Unit</option>
											  <option >Kg</option>
											  <option >ltr</option>
											  <option >1Box</option>
											</select>
											<p id="p5"></p>
										</div>
								</div>


								<div class="control-group">
									<label for="normal" class="control-label">Quantity: </label> 
										<div class="controls">
											<input type="number" class="span11" name="quantity" id="quantity" autocomplete="off"onkeyup="return validateConsumptionInformation(this);"/>
											<p id="p6"></p>
										</div>
								</div>
										
						<!-- end of personal information form details   -->
								<div class="form-actions">
							<a class="btnNext"><button type="button" class="btn btn-success" id="consumption_info"  onClick="validateConsumptionInformation(this)">Save</button></a>
								</div>
							
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->
	<!--- end of FIRST FORM DESIGN  -->

    <!-- start SECOND FORM DESIGN  --->
				 <!-- end of second span6 --->
	<!--- end of SECOND FORM DESIGN  -->
			</div> <!-- end of tab1 div -->
			<!-- Start Design Of tab2 - Add Consumption  -->
			<div id="tab2" class="tab-pane" >
			<!-- start Third tab form design -->
			       <div class="span6">
						<div class="widget-box">
							<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
								<h5>Add Consumption(Form - 12 & 18)</h5>
							</div>
							<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Category :  </label>
										<div class="controls">
											<select class="span8 mask text" id="category_class" name="category_class"  onchange="showDiv(this); validateConsumption(this);">
											  <option value="None">Select Category</option>
											  <option value="school">School</option>
											  <option value="hostel">Hostel</option>
											</select>
											<p id="p7"></p>
										</div>
								</div>
								
								

								<div class="school-form" id="school_form" style="display:none;">
									<div class="control-group">
										<label class="control-label">School Serial No.</label>
											<div class="controls">
												<input type="number" class="span11" name="serial_no" id="serial_no" autocomplete="off" onkeyup="return validateConsumption(this);"/>
												<p id="p8"></p>
											</div>
									</div>

									<div class="control-group">
										<label for="normal" class="control-label">Details:</label>
											<div class="controls">
												<select class="span8 mask text" id="details" name="details"  onchange="return validateConsumption(this);">
													<option value="None">--- Select School List ---</option>
													<option value="">Office Casual Expenses</option>
													<option value="">Furniture</option>
													<option value="">Things Contents</option>
													<option value="">Building Repair</option>
													<option value="">Electricity Bill</option>
													<option value="">Telephone Bill</option>
													<option value="">Stationary Expenses</option>
													<option value="">Sales Tax And Other Taxes</option>
													<option value="">Textbooks</option>
													<option value="">Writing Material</option>
													<option value="">Librabry</option>
													<option value="">Miscellaneous Expenditure</option>
													<option value="">Audit</option>
													<option value="">Traffic</option>
													<option value="">Travel Expenses</option>
													<option value="">Exam Expenses</option>
													<option value="">Science Laboratory</option>
												</select>
												<p id="p9"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" autocomplete="off" name="actual_cost" id="actual_cost"  onkeyup="return validateConsumption(this);" />
												<p id="p10"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="approved_cost" autocomplete="off" id="approved_cost"  onkeyup="return validateConsumption(this);"/>
												<p id="p11"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="invalid_cost" autocomplete="off" id="invalid_cost"  onkeyup="return validateConsumption(this);"/>
												<p id="p12"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" name="reasons_invalid_cost" autocomplete="off" id="reasons_invalid_cost" onkeyup="return validateConsumption(this);"></textarea>
												<p id="p13"></p>
											</div>
									</div>

								</div>  <!-- End Of School Form  -->
								
								<div class="hostel-form" id="hostel_form" style="display:none;">
									<div class="control-group">
										<label class="control-label">Hostel Serial No.</label>
											<div class="controls">
												<input type="number" class="span11" name="hostel_serial_no" autocomplete="off" id="hostel_serial_no"  onkeyup="return validateConsumption(this);"/>
												<p id="p14"></p>
											</div>
									</div>

									<div class="control-group">
										<label for="normal" class="control-label">Details:</label>
											<div class="controls">
												<select class="span8 mask text" id="hostel_details" name="hostel_details"  onchange="return validateConsumption(this)">
													<option value="None">--- Select Hostel List ---</option>
													<option value="">Accidental Expenditure</option>
													<option value="">Uniform Expense</option>
													<option value="">Bedding Cost</option>
													<option value="">Buy Clothes</option>
													<option value="">Buy Pots</option>
													<option value="">Water consumption</option>
													<option value="">Entertainment And Sporting Goods</option>
													<option value="">Sales Tax And Other Taxes</option>
													<option value="">Medical Expenses</option>
													<option value="">Electricity Bill</option>
													<option value="">Miscellaneous Expenditure</option>
													<option value="">Night Gown / Kurta Pajama</option>
													<option value="">Cutting</option>
													<option value="">Soap And Coconut Oil And Manjen</option>
													<option value="">Traffic</option>
													
												</select>
												<p id="p15"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="hostel_actual_cost" autocomplete="off" id="hostel_actual_cost"  onkeyup="return validateConsumption(this);"/>
											    <p id="p16"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" autocomplete="off" name="hostel_approved_cost" id="hostel_approved_cost"  onkeyup="return validateConsumption(this);" />
											    <p id="p17"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" autocomplete="off" name="hostel_invalid_cost" id="hostel_invalid_cost"  onkeyup="return validateConsumption(this);"/>
											    <p id="p18"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" name="hostel_reasons_invalid_cost" autocomplete="off" id="hostel_reasons_invalid_cost" onkeyup="return validateConsumption(this);"></textarea>
												<p id="p19"></p>
											</div>
									</div>

								</div>  <!-- End of Hostel Form  -->
							
						<!-- end of personal information form details   -->
								<div class="form-actions" ></div>
                                     <input type="submit" class="btn btn-success" id="add_consumption" onClick="validateConsumption(this);">
                               </div>
							
							</div> <!-- End of widget-content nopadding  -->
						</div><!-- end of widget-box -->
							
					</div> <!-- end of span6 -->     
			</div>
            <!-- end of tab2 -->
            <!-- Start View Consumption List tab4 --->
			<div id="tab3" class="tab-pane" >
			<div class="container-fluid">
					<div class="row-fluid">
						<div class="span12">

							 <div class="control-group">
									<label for="normal" class="control-label">Category :  </label>
										<div class="controls">
											<select class="span8 mask text" id="exam_class" name="exam_class">
											  <option value="None">Select Category</option>
											  <option value="school_list">School</option>
											  <option value="hostel_list">Hostel</option>
											</select>
										
										</div>
							</div> 
						<div class="school-consumption-list" id="school_consumption" style="display:none;">
							<a href="addConsumption.html" class="btn ra-100 btn-purple" >Add</a>
							<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled">Delete</button>
					
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
									<h5>Including All School Consumption Listing </h5>
								</div>
								<div class="widget-content nopadding">
									<table class="table table-bordered data-table with-check">
										<thead>
											<tr>
												<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
												<th>Sr.No.</th>
												<th>Details</th>
												<th>Actual Cost</th>
												<th>Approved Cost</th>
												<th>Invalid Cost</th>
												<th>Reasons For Invalid Cost</th>
												<th width="10%">Action</th>
											</tr>
										</thead>
										<tbody>

											<tr class="gradeX">
												<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
												<td>1.</td>
												<td>Office Casual Expenses</td>
												<td>1000</td>
												<td>800</td>
												<td>200</td>
												<td>Invalid for school consumption</td>
												<td><a href="#" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete report?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
											</tr>
										</tbody>
									</table>
								</div> <!-- end of widget-content  -->
							</div> <!-- end of widget-box --->
						</div> <!-- End of school_consumption -->

						<div class="hostel-consumption-list" id="hostel_consumption" style="display:none;">
							<a href="addConsumption.html" class="btn ra-100 btn-purple" >Add</a>
							<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled">Delete</button>
					
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
									<h5>Including All Hostel Consumption Listing </h5>
								</div>
								<div class="widget-content nopadding">
									<table class="table table-bordered data-table with-check">
										<thead>
											<tr>
												<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
												<th>Sr.No.</th>
												<th>Details</th>
												<th>Actual Cost</th>
												<th>Approved Cost</th>
												<th>Invalid Cost</th>
												<th>Reasons for Invalid cost </th>
												<th width="10%">Action</th>
											</tr>
										</thead>
										<tbody>

											<tr class="gradeX">
												<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
												<td>1.</td>
												<td>Uniform Expense</td>
												<td>1000</td>
												<td>800</td>
												<td>200</td>
												<td>Invalid for hostel consumption</td>
												<td><a href="#" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete report?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
											</tr>
										</tbody>
									</table>
								</div> <!-- end of widget-content  -->
							</div> <!-- end of widget-box --->
						</div> <!-- End of hostel_consumption -->

						</div> <!-- end of span12  -->
					</div> <!-- end of row-fluid  -->
		
				</div> <!-- End of container-fluid -->
			  </div> <!-- End of tab4 div -->

			<!-- End View Consumption List tab3 -->
            <!-- end of tab3 -->
        </div> <!-- end of widget-content -->
		</form>
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
  
  <script>
$(document).ready(function(){

    $('#inventory_item').on('change', function {
    	alert("innnn");
        $("#unit").show();
    });
});
</script>
 <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     
<script type="text/javascript">  			
function validateConsumptionInformation(activeElement){
	var exam = $('#exam_class').val();
	var dt = $('#date').val();
	var examName = $('#exam_name').val();
	var inventory=$('#inventory_item').val();
	var ut=$('#unit').val();
	var quant=$('#quantity').val();

if(activeElement.id == "consumption_info" || activeElement.id == "exam_class" ){
	exam=validateDropdown(exam,"#p1","#exam_class");
}if(activeElement.id == "consumption_info" || activeElement.id == "date" ){
	dt=validateNotEmpty(dt,"#p2","#date");
}if(activeElement.id == "consumption_info" || activeElement.id == "exam_name" ){
	examName=validateNonEmpty(examName,"#p3","#exam_name");
}if(activeElement.id == "consumption_info" || activeElement.id == "inventory_item" ){
	inventory=validateDropdown(inventory,"#p4","#inventory_item");
}if(activeElement.id == "consumption_info" || activeElement.id == "unit" ){
	vut=alidateNonEmpty(ut,"#p5","#unit");
}if(activeElement.id == "consumption_info" || activeElement.id == "quantity" ){
	quant=validateNonEmpty(quant,"#p6","#quantity");
}if(exam && dt && examName && inventory && ut && quant){
	navigateToNextPage();	
}
}
function validateCons(activeElement){
	var exams=$('#exam_class').val();	
	
	if(activeElement.id == "add_consumption" || activeElement.id == "exam_class" ){
		validateDropdown(exams,"#p20","#exam_class");
	}
}

function validateConsumption(activeElement){
	var exam=$('#category_class').val(); 	
	var serial=$('#serial_no').val(); 
	var detail=$('#details').val();
	var actual=$('#actual_cost').val();	
	var approved=$('#approved_cost').val();	
	var invalid=$('#invalid_cost').val();	
	var reasons=$('#reasons_invalid_cost').val();
	var hostelserial=$('#hostel_serial_no').val();
	var hosteldetails=$('#hostel_details').val();
	var hostelactual=$('#hostel_actual_cost').val();	
	var hostelapproved=$('#hostel_approved_cost').val();	
	var hostelinvalid=$('#hostel_invalid_cost').val();	
	var hostelreasons=$('#hostel_reasons_invalid_cost').val();
	
	if(activeElement.id == "add_consumption" || activeElement.id == "category_class" ){
		exam=validateDropdown(exam,"#p7","#category_class");
	}if(activeElement.id == "add_consumption" || activeElement.id == "serial_no" ){
		serial=validateNonEmpty(serial,"#p8","#serial_no");
	}if(activeElement.id == "add_consumption" || activeElement.id == "details" ){
		detail=validateDropdown(detail,"#p9","#details");
	}if(activeElement.id == "add_consumption" || activeElement.id == "actual_cost" ){
		actual=validateNonEmpty(actual,"#p10","#actual_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "approved_cost" ){
		approved=validateNonEmpty(approved,"#p11","#approved_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "invalid_cost" ){
		invalid=validateNonEmpty(invalid,"#p12","#invalid_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "reasons_invalid_cost" ){
		reasons=validateNonEmpty(reasons,"#p13","#reasons_invalid_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "hostel_serial_no" ){
		hostelserial=validateNonEmpty(hostelserial,"#p14","#hostel_serial_no");
	}if(activeElement.id == "add_consumption" || activeElement.id == "hostel_details" ){
		hosteldetails=validateDropdown(hosteldetails,"#p15","#hostel_details");
	}if(activeElement.id == "add_consumption" || activeElement.id == "hostel_actual_cost" ){
		hostelactual=validateNonEmpty(hostelactual,"#p16","#hostel_actual_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "hostel_approved_cost" ){
		hostelapproved=validateNonEmpty(hostelapproved,"#p17","#hostel_approved_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "hostel_invalid_cost" ){
		hostelinvalid=validateNonEmpty(hostelinvalid,"#p18","#hostel_invalid_cost");
	}if(activeElement.id == "add_consumption" || activeElement.id == "hostel_reasons_invalid_cost" ){
		hostelreasons=validateNonEmpty(hostelreasons,"#p19","#hostel_reasons_invalid_cost");
	}if(exam && serial && detail && actual && approved && invalid && reasons && hostelserial && hosteldetails && hostelactual && hostelapproved && hostelinvalid && hostelreasons){
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
	   	$("#school_form").show();
		$("#hostel_form").hide();
		//document.getElementById('school_form').style.display = "block";
   }
  if(elem.value == "hostel"){
		$("#hostel_form").show();
		$("#school_form").hide();
		//document.getElementById('hostel_form').style.display = "block";
	 }
}

function showView(elem){
	if(elem.value == "school_list"){
		$("#school_consumption").show();
		$("#hostel_consumption").hide();
	}
	if(elem.value == "hostel_list"){
		$("#hostel_consumption").show();
		$("#school_consumption").hide();
	}
}
</script>
<!-- Footer-part End -->
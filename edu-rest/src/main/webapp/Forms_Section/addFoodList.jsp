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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/foodList/add" title="Food List" class="tip-bottom">Food List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Add Food List</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Add Food List</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="food_form" class="form-horizontal" id="food_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Add Food List-information</h5>
								</div> 
								<div class="widget-content nopadding">
									
								<div class="food_form" id="food_form" style="display:block;">
									
									<div class="control-group" id="hostel_item_list" style="display:block;">
										<label for="normal" class="control-label">Details:</label>
											<div class="controls">
												<select class="span8 mask text" id="FoodItemList" name="FoodItemList" onchange="return validateFoodList(this);">
													<option value="None">--- Select Food List ---</option>
													<option value="">Wheat/Jowar Expenses</option>
													<option value="">Rice</option>
													<option value="">Pulses Expenses</option>
													<option value="">Grocery</option>
													<option value="">Oil</option>
													<option value="">Spices(Turmeric,Mustard,Cumin,Pepper,Kalami Spice,Coriander seeds,etc.)</option>
													<option value="">Milk</option>
													<option value="">Eggs</option>
													<option value="">Mutton</option>
													<option value="">Fruits</option>
													<option value="">Firewood / Gas</option>
													<option value="">Transport</option>
													<option value="">Logistics</option>
													<option value="">Salt</option>
													<option value="">Vegetables Expenses</option>
													<option value="">Feast Expenses</option>
													<option value="">Rust(Chawl,Mutki,Gram,etc.)</option>
													<option value="">Breakfast</option>
													<option value="">Sugar</option>													
												</select>
												<p id="p1"></p>
											</div>
									</div>
	
									<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="actual_cost" id="actual_cost" onkeyup="return validateFoodList(this);"/>
												<p id="p2"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="approved_cost" id="approved_cost" onkeyup="return validateFoodList(this);"/>
												<p id="p3"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="invalid_cost" id="invalid_cost" onkeyup="return validateFoodList(this);"/>
												<p id="p4"></p>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" name="reasons_invalid_cost" id="reasons_invalid_cost" onkeyup="return validateFoodList(this);"></textarea>
												<p id="p5"></p>
											</div>
									</div>

								</div>  <!-- End Of School Form  -->
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success" id="food_info" onClick="validateFoodList(this)">Save</button>
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
function validateFoodList(activeElement){
	var foodList = $('#FoodItemList').val();
	var actual = $('#actual_cost').val();
	var approved = $('#approved_cost').val();
	var invalid=$('#invalid_cost').val();
	var reasons=$('#reasons_invalid_cost').val();


if(activeElement.id == "food_info" || activeElement.id == "FoodItemList" ){
	validateDropdown(cat,"#p1","#FoodItemList");
}if(activeElement.id == "food_info" || activeElement.id == "actual_cost" ){
	validateNonEmpty(vndr,"#p2","#actual_cost");
}if(activeElement.id == "food_info" || activeElement.id == "approved_cost" ){
	validateNonEmpty(inventory,"#p3","#approved_cost");
}if(activeElement.id == "food_info" || activeElement.id == "invalid_cost" ){
	validateNonEmpty(inventoryItem,"#p4","#invalid_cost");
}if(activeElement.id == "food_info" || activeElement.id == "reasons_invalid_cost" ){
	validateNonEmpty(inventoryItemNon,"#p5","#reasons_invalid_cost");
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
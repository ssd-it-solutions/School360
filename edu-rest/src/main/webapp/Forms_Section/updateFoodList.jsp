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
     <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/foodList" title="Food List" class="tip-bottom">Food Item List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Update Food Item List</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Update Food Item List</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="foodItem_form" class="form-horizontal" id="foodItem_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Update FoodItem List-information</h5>
								</div>
								<div class="widget-content nopadding">
									
									

								<div class="food-form" id="food_form" style="display:block;">
									
									<div class="control-group">
										<label for="normal" class="control-label">Details :  </label>
											<div class="controls">
												<select class="span8 mask text" id="SchoolItemList" name="SchoolItemList">
													<option value="None">--- Select Food List ---</option>
													<option value="">Wheat/Jowar Expenses</option>
													<option value="">Rice</option>
													<option value="">Pulses Expenses</option>
													<option value="" selected>Grocery</option>
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
											</div>
									</div>
									
									
									<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="actual_cost" id="actual_cost" value="500"/>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="approved_cost" id="appoved_cost" value="400"/>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="invalid_cost" id="invalid_cost" value="100"/>
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" name="reasons_invalid_cost" >No reason</textarea>
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
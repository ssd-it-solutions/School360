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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>  <a href="<%=applicationURL%>/admin/consumptions" title="consumption list" class="current">Consumption Management</a></div>
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
              <li><a data-toggle="tab" href="#tab2" style="display:none;">View Consumption list</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab3">Experience Details</a></li>
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
											<select class="span8 mask text" id="exam_class" name="exam_class" >
											  <option value="">Select Category</option>
											  <option>School</option>
											  <option>Hostel</option>
											</select>
										</div>
								</div>

								<div class="control-group">
									<label class="control-label col-sm-2 requiredField" for="date">Date : </label>
									
										<div class="controls">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar" style="display:none;"></i>
													<input class="form-control" id="date" name="date" placeholder="MM/DD/YYYY" type="text" value="03/12/2018"/>
												</div>
											</div>
										</div>

								</div>
								
								<div class="control-group">
									<label class="control-label">No of Students :  </label>
										<div class="controls">
											<input type="text" class="span11" name="exam_name" id="exam_name" value="10" autocomplete="off"/>
										</div>
								</div>

								<div class="control-group">
									<label for="normal" class="control-label">Inventory Item :  </label>
										<div class="controls">
											<select class="span8 mask text" id="inventory_item" name="item"   >
											  <option value="">Select Item</option>
											  <option value="Books" selected="selected">Books</option>
											  <option value="Rice">Rice</option>
											  <option value="Pen">Pen</option>
											  <option value="Oil">Oil</option>
											  <option value="Notebooks">Notebooks</option>
											</select>
										</div>
								</div>

								<div class="control-group" id="units" style="display:none;">
									<label for="normal" class="control-label">Units: </label>
										<div class="controls">
											<select class="span8 mask text" id="unit" name="unit"   >
											  <option value="">Select Unit</option>
											  <option >Kg</option>
											  <option >ltr</option>
											  <option >1Box</option>
											</select>
										</div>
								</div>


								<div class="control-group">
									<label for="normal" class="control-label">Quantity: </label>
										<div class="controls">
											<input type="text" class="span11" name="quantity" id="quantity" value="2" autocomplete="off"/>
										</div>
								</div>
							
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Save</button>
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
<!-- Footer-part End -->
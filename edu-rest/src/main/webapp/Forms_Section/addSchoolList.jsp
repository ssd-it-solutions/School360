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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/schoolList" title="other expenses" class="tip-bottom">School List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Add School List</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
		<div class="widget-box">
			<div class="widget-title">
				<ul class="nav nav-tabs">
					<li class="active"><a data-toggle="tab" href="#tab1">Add School List</a></li>
				</ul>
			</div> <!-- End of widget-title --->
			<form name="expenses_form" class="form-horizontal" id="expenses_form">
				<div class="widget-content tab-content">
					<div id="tab1" class="tab-pane active">
						<!-- Start form design -->
						<div class="span6">
							<div class="widget-box">
								<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
									<h5>Add School List-information</h5>
								</div>
								<div class="widget-content nopadding">
									
								<div class="school-form" id="school_form" style="display:block;">
									
									<div class="control-group" id="school_item_list" style="display:block;">
										<label for="normal" class="control-label">Details:</label>
											<div class="controls">
												<select class="span8 mask text" id="SchoolItemList" name="SchoolItemList">
													<option value="">--- Select School List ---</option>
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
											</div>
									</div>
									
									

									<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="actual_cost" id="actual_cost" />
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="approved_cost" id="appoved_cost" />
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="invalid_cost" id="invalid_cost" />
											</div>
									</div>

									<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" name="reasons_invalid_cost"></textarea>
											</div>
									</div>

								</div>  <!-- End Of School Form  -->
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Save</button>
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
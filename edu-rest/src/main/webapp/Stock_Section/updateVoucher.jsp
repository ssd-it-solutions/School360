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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Voucher Master</h1>
    </div>
<!--End-Action boxes-->    

    <hr/>
    <div class="row-fluid" style="display:block;">
 
	  <div class="span12">
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Edit Voucher Information</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab2">Education Details</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab3">Experience Details</a></li>
            </ul>
         </div>
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Edit Voucher-information</h5>
						</div>
						<div class="widget-content nopadding">
							<form action="#" method="get" class="form-horizontal">
								<div class="control-group">
									<label class="control-label">Voucher No :</label>
										<div class="controls">
											<input type="text" class="span11" value="123456" />
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Voucher Date :</label>
										<div class="controls">
											<input type="date" id="mask-date" class="span8 mask text" value="01-02-2012">
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Vendor :</label>
										<div class="controls">
											<select class="span8 mask text" >
											  <option>Select Vendor</option>
											  <option>User</option>
											  <option>Employee</option>
											</select>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Manage :</label>
										<div class="controls">
											<select class="span8 mask text" >
											  <option>Please Select</option>
											  <option>Credit</option>
											  <option>Debit</option>
											</select>
										</div>
								</div>
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Update</button>
								</div>
							</form>
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->

			<!-- start SECOND FORM DESIGN  --->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>View voucher Information</h5>
						</div>
						<div class="widget-content nopadding">
							<!--<form action="#" class="form-horizontal">-->
								<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th>Sr.No</th>
								<th>Voucher No</th>
								<th>Voucher Date</th>
								<th>Vendor</th>
								<th width="10%">Action</th>
							</tr>
							</thead>
							<tbody>
								  
		                <!---- Modal Popup Start --->
							<div id="myAlert<?php echo $i; ?>" class="modal hide">
								<div class="modal-header">
									<button data-dismiss="modal" class="close" type="button">x</button>
									<h3>Voucher No</h3>
								</div>
								<div class="modal-body">
									<p>Voucher Date</p>
								</div>
								<div class="modal-body">
									<p><img src="" height="50" width="50"></p>
								 </div>
								<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
							</div>
						<!---- Modal Popup End --->
							<tr class="gradeX">
								<td>1</td>
								<td>123456</td>
								<td>01-02-2012</td>
								<td>Student</td>
								<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete Voucher?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>54789445</td>
								<td>02-05-2015</td>
								<td>Employee</td>
								<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete Voucher?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
							</tr>
									                
							</tbody>
						</table>
							<!--</form>-->
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div> <!-- end of second span6 --->
	<!--- end of SECOND FORM DESIGN  -->

	<!--- end of FIRST FORM DESIGN  -->

   
			</div> <!-- end of tab1 div -->

           <!-- end of tab2 -->
           <!-- end of tab3 -->
        </div> <!-- end of widget-content -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
<!-- Footer-part End -->
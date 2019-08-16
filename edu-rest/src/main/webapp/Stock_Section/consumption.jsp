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
       <h1>Consumption Management</h1>
    </div>
<!--End-Action boxes-->    
    <hr/>
    <div class="row-fluid" style="display:block;">
	<div class="span12">
							<a href="consumptions/add" class="btn ra-100 btn-purple" >Add</a>
							<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled">Delete</button>
					
						<div class="widget-box">
							<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
								<h5>Including All Consumption Listing </h5>
							</div>
						<div class="widget-content nopadding">
							<table class="table table-bordered data-table with-check">
								<thead>
									<tr>
										<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
										<th>Category</th>
										<th>No.of Students</th>
										<th>Items</th>
										<th>Quantity</th>
										<th>Date</th>
										<th width="10%">Action</th>
									</tr>
								</thead>
								<tbody>
								  
		                
									<tr class="gradeX">
										<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
										<td>School</td>
										<td>10</td>
										<td>Books</td>
										<td>10</td>
										<td>22/11/2018</td>
										<td><a href="consumptions/update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete report?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
									</tr>
									                
								</tbody>
							</table>
						</div> <!-- end of widget-content  -->
						</div> <!-- end of widget-box --->
						</div> <!-- end of span12  -->
    </div>
  </div>
</div>

<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
<!-- Footer-part End -->
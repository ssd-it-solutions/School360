<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.entity.InventoryPurchase" %>

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
	<div id="content-header">
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/stocks" title="inventory list" class="current">Stock Management</a> </div>
		<h1>Stock Management(Form 18 AND 19)</h1>
	</div>
	<div class="container-fluid">
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="<%=applicationURL%>/admin/stocks/add" class="btn ra-100 btn-purple" >Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled">Delete</button>
					<a href="<%=applicationURL%>/admin/viewform19Details" class="btn ra-100 btn-purple" style="float:right;">Form 19</a>
					<a href="<%=applicationURL%>/admin/viewform18Details" class="btn ra-100 btn-purple" style="float:right;">Form 18</a>
					<a href="<%=applicationURL%>/admin/viewform12Details" class="btn ra-100 btn-purple" style="float:right;">Form 12</a>
					
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Including All Purchase Items Listing </h5>
					</div>
					<div class="widget-content nopadding">
					<%
						List<InventoryPurchase> listOfPurchasedItem = (List<InventoryPurchase>)request.getAttribute("listOfPurchasedItem");
					%>
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th>Category</th>
								<th>Type</th>
								<th>Vendor</th>
								<th>Item Details</th>
								<th>Actual Cost</th>
								<th>Approved Cost</th>
								<th>Non-Approved Cost</th>
								<th>Reasons for Non-Approved Cost</th>
								<th width="10%">Action</th>
							</tr>
							</thead>
							<tbody>
								  
		              		<% for(InventoryPurchase purchasedItem : listOfPurchasedItem) {%>
		              			<tr class="gradeX">
		              				<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
		              				<td><%=purchasedItem.getCategory()%></td>
		              				<td><%=purchasedItem.getItem().getType()%></td>
		              				<td><%=purchasedItem.getVendor().getCompanyName()%></td>
		              				<td><%=purchasedItem.getItem().getItem()%></td>
		              				<td><%=purchasedItem.getActualCost()%></td>
		              				<td><%=purchasedItem.getApprovedCost()%></td>
		              				<td><%=purchasedItem.getNonApprovedCost()%></td>
		              				<td><%=purchasedItem.getNonApprovedCostReason()%></td>
		              				<td><a href="stocks/update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete vendor?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
		              			</tr>
		              		<%} %>                
							</tbody>
						</table>
				</div>
				</div>
			</div>
    </div>
		</form>
  </div>
</div> <!-- content -->



<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     
<!-- Footer-part End -->
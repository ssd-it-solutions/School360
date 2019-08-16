<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.PurchaseReportDTO" %>

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
	.form-name{text-align:center;font-size:26px;}
	.form-type{text-align:center;font-size:17px;color:#555555;font-weight:700;}
	.form-role{text-align:center;font-size:17px !important; font-weight:500;}
	.year{width:90px !important;}
	.table th{font-size:12px;}

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
		<div id="editor"></div>
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 12</h1>
		<p class="form-type"> Showing details of actual contingency expenses incurred in  <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script>(as per the Chartered Report)</p>
		<h1 class="form-role">(School Department)</h1>
		<hr>
	
		<%
			List<PurchaseReportDTO> listOfPurchasedItem = (List<PurchaseReportDTO>)request.getAttribute("listOfPurchasedItem");
		%>
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="staffRecognitionList/add" class="btn ra-100 btn-purple" style="display:none;">Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled" style="display:none;">Delete</button>
					
					
				<div class="widget-box">
					
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th class="year">Serial No.</th>
								 <th>Items Details </th>
								<th>Actual Amount</th>
								<th>Approved Cost</th>
								<th>Non-Approved Cost</th>
								<th>Reasons For Non-Approved Cost</th>
							</tr>
							</thead>
							<tbody>
							<% for(PurchaseReportDTO purchasedItem : listOfPurchasedItem) {%>
							<tr class="gradeX">
								<td></td>
								 <td><%=purchasedItem.getItemName()%></td> 
								<td><%=purchasedItem.getTotalCost()%></td>
								<td><%=purchasedItem.getTotalApprovedCost()%></td>
								<td><%=purchasedItem.getTotalNonapprovedCost()%></td>
								<td><%=purchasedItem.getReasonForNonApprovedCost()%></td>
							</tr>
							<%} %>      
							</tbody>
						</table>
						
						
				</div>
				</div>
			</div>
    </div>
		</form>
		
  </div> <!-- container-fluid -->
  </div><!-- printable div -->
</div> <!-- content -->



<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
      <script>
     function printDiv(printableArea) {
     var printContents = document.getElementById(printableArea).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
    </script>
     <!-- For Added Automatic Serial Number -->
   <script>
   var addSerialNumber = function () {
	    $('table tr').each(function(index) {
	        $(this).find('td:nth-child(1)').html(index+0);
	    });
	};

	addSerialNumber();
   </script>
<!-- Footer-part End -->
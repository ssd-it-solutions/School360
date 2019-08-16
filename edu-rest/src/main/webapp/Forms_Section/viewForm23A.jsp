<%@ page import="java.util.Map" %>
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
	.table th{font-size:12px;}
	.principle-sign-column{float:right;}
	.school-name{text-align:left;}
	.total{width:160px !important;}
	.second-table{width:500px;}
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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/hostelList" title="Hostel List" class="current">Hostel List</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 23A</h1>
		<p class="form-type school-name">Name of aided Ashram School:</p>
		<p class="form-type">  Showing detail information on purchased food and groceries in the Year <script>document.write(new Date().getFullYear()- 1);</script>-<script>document.write(new Date().getFullYear()- 0);</script></p>
		
		<hr>
		<%
			Map<String, Double> totalPurchaseByMonth = (Map<String, Double>)request.getAttribute("totalPurchaseByMonth");
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
								<th>Serial No.</th>
								<th colspan="1">Measurement Or Date</th>
								<th colspan="2">Wheat/Flour</th>
								<th colspan="2">Rice</th>
								<th colspan="2">Pulses</th>
								<th colspan="2">Oil</th>
								<th colspan="2">Spices</th>
							
								<th colspan="2">Salt</th>	
								
								<th colspan="2">Usal / Breakfast / Pohe</th>
								<th colspan="2">Cookies</th>
								<th colspan="2">Sugar</th>
								<th colspan="2">Peanut</th>
								<th >Total Expenditure</th>
							</tr>
							</thead>
							<tbody>
					
							
							<tr class="gradeX">
								<th> </th>
								<th style="border-left:0px solid #ddd;">&nbsp;</th>
								
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								<th>Kg</th>
								<th>Total Cost</th>
								
								<th>-</th>
							</tr>
						
								 <c:forEach items="${foodPurchasedMap}" var="each">
						 <tr class="gradeX">
						 <td></td>
           					 	<td>${each.key}</td> 
           					
           					 	 <c:forEach items="${each.value}" var="list">
           					 			 <td>${list.getQuantity()}</td>
           					 			 	<td>${list.getTotalPrice()}</td> 
           					 			 
           						      					 		
           					 		 </c:forEach> 
           							 <td>${totalPurchaseByMonth.get(each.key)}</td>
           				
           						
							
           					
           				
							</tr>
          				 	</c:forEach>
							
							
							<tr>
							<td></td>
							<td >Total Purchase</td>							
									 <c:forEach items="${totalPurchaseByItem}" var="each">
									 
           							
           							 <td>${totalPurchaseQuanByItem.get(each.key)}</td>
           							  <td>${totalPurchaseByItem.get(each.key)}</td>
							
          				 	</c:forEach>
          				 		<td>-</td>
							</tr>
						
							<tr>	
							<td></td>							
								<td>Last Balance</td>							
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
						
							
							</tr>   
								<tr>
							<td></td>
								<td>Total Usage/Consumption</td>
								
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								
							
																
							</tr>   
							</tbody>
						</table>
												
				</div>
				</div>
			</div>
    </div>
		</form>
		
	
		<!-- <div class="principle-sign-column">
			<h5>Principle Sign</h5>
		</div> -->
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
    <script>
   var addSerialNumber = function () {
	    $('table tr').each(function(index) {
	        $(this).find('td:nth-child(1)').html(index+(-1));
	    });
	};

	addSerialNumber();
   </script>
<!-- Footer-part End -->
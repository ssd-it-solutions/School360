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
		<h1 class="form-name">Statement - 23</h1>
		<p class="form-type school-name">Name of aided Ashram School:</p>
		<p class="form-type"> Showing outstanding balance details Year <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script></p>
		
		<hr>
	
		
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
								<th colspan="2">Measurement</th>
								<th colspan="7">The cost incurred on the basis of the Food Registry(in Kilogram)</th>
							</tr>
							</thead>
							<tbody>
						
							<tr class="gradeX">
								<td style="border-top:0px solid #ddd;"></td>
								<td style="border-top:0px solid #ddd;"></td>
								<td style="border-top:0px solid #ddd; border-left:0px solid #ddd;"></td>
								<td>Wheat/Flour</td>
								<td>Rice</td>
								<td>Pulses</td>
								<td>Oil</td>
								<td>Usal / Breakfast / Pohe</td>
								<td>Vegetables And Tuber roots</td>
								<td>Spices(Mirchi,Mustard,Cumin,Turmeric,Masala)</td>
							</tr>
							
							<tr class="gradeX">
								<td style="border-left:0px solid #ddd;">&nbsp;</td>
								<td style="border-left:0px solid #ddd;">&nbsp;</td>
								<td style="border-left:0px solid #ddd;">&nbsp;</td>
								<td>400 Gram</td>
								<td>100 Gram</td>
								<td>130 Gram</td>
								<td>20 Gram</td>
								<td>50 Gram</td>
								<td>200 Gram</td>
								<td>20 Gram</td>
							</tr>
							     
							<tr class="gradeX">
								<td>1</td>
								<td>Total Weight(K.G)</td>
								<td style="width:50px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>   
							
							<tr class="gradeX">
								<td>2</td>
								<td>Total Amount</td>
								<td style="width:50px;">&nbsp;</td>
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
		
		<div class="widget-box second-table">
		<div class="widget-content nopadding">
		<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							
							</thead>
							<tbody>
						
							<tr class="gradeX">
								<td class="total">Total Students</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr class="gradeX">
								<td class="total">Total Balance Stocks Weight</td>
								<td>&nbsp;</td>
							</tr>
							     
							<tr class="gradeX">
								<td class="total">Total Balance Stocks Amount</td>
								<td>&nbsp;</td>
							</tr>   
							</tbody>
						</table>
		</div>
		</div>
		<div class="principle-sign-column">
			<h5>Principle Sign</h5>
		</div>
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
<!-- Footer-part End -->
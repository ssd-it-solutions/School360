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
	.principle-sign-column{float:right;}
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
		<h1 class="form-name">Statement - 21</h1>
		<p class="form-type"> Showing table for resident students residing in secondary school examination</p>
		<h1 class="form-role">(Only for Secondary Department )</h1>
		<h1 class="form-role"><script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script></h1>
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
								<th class="year">Year</th>
								<th colspan="3">Students from residential board</th>
								<th colspan="3">Resident students for appearing secondary examination</th>
								<th>Percentage of the Result</th>
								
							</tr>
							</thead>
							<tbody>
						
							<tr class="gradeX">
								<td style="border-top:0px solid #ddd;">&nbsp;</td>
								<td>Boys</td>
								<td>Girls</td>
								<td>Total</td>
								<td>Boys</td>
								<td>Girls</td>
								<td>Total</td>
								<td style="border-top:0px solid #ddd;">&nbsp;</td>
							</tr>
							
							<tr class="gradeX">
								<td>March - <script>document.write(new Date().getFullYear()- 2);</script> </td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							            
							<tr class="gradeX">
								<td>March - <script>document.write(new Date().getFullYear()- 1);</script> </td>
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
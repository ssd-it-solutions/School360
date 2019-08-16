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
	.certificate_no{text-align:left;font-size:15px;font-weight:500;}
	.attached_copy{text-align:left;font-size:15px;font-weight:500;}
	.Serial_no{font-size:15px !important; font-weight:500 !important;}
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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>  <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		<h1 class="form-name">Statement - 20</h1>
		<p class="form-type"> Aided Ashram School And Details of rental allowance for rented accommodation for hostel (Year <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script>)</p>
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					
					
				<div class="widget-box">
					
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							
							</thead>
							<tbody>
							<tr>
								<th class="Serial_no">1</th>
								<th><p class="certificate_no">Certificate of recognition of upper caste tribal people No.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Date. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></br>
									<p class="attached_copy">(Attached Copy)</p>
								</th>
							</tr>	  
		              		<tr>
		              			<th class="Serial_no">2</th>
		              			<th><p class="certificate_no">Duration of acceptance of rental certificate</p></th>
		              			<th>Date.&nbsp;&nbsp;&nbsp;&nbsp;</th>
		              			<th>To</th>
		              			<th>Date.&nbsp;&nbsp;&nbsp;&nbsp;</th>
		              		</tr>
							<tr>
								<th class="Serial_no">3</th>
								<th><p class="certificate_no">Appreciation of the upper Caste Adivasi in Rs.</p></th>
								<th>&nbsp;&nbsp;&nbsp;</th>
							</tr>
							<tr>
								<th class="Serial_no">4</th>
								<th><p class="certificate_no">Actually paid rent in 2017-18</p></br>
									<p class="attached_copy">(Period should be mentioned)</p></th>
								<th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
							</tr>
							<tr>
								<th class="Serial_no">5</th>
								<th><p class="certificate_no">75% of the executive engineer's application</p></br>
									<p class="attached_copy">(Attached Copy)</p></th>
								<th>&nbsp;&nbsp;&nbsp;&nbsp;</th>
							</tr>
							<tr>
								<th>&nbsp;&nbsp;</th>
								<th><p class="certificate_no">Above 3,4 And less than 5</p></th>
								<th>&nbsp;&nbsp;&nbsp;
							</tr>
									                
							</tbody>
						</table>
				</div>
				</div>
			</div>
    </div>
		</form>
		</div>
  </div>
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
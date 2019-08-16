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
	.form-type{text-align:center;font-size:17px;color:#555555;}
	.form-role{text-align:center;font-size:26px !important;}

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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/hostelList" title="Hostel List" class="current">Hostel List</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="margin-right: 5;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid" id="pdfdiv">
		<h1 class="form-name">Statement - 18</h1>
		<p class="form-type"> Showing direct contingency costs of 2017-2018 Details (as per the Chartered Report)</p>
		<h1 class="form-role">(Hostel Department)</h1>
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">

				<div class="widget-box">
					
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								
								<th>Sr.No</th>
								<th>Details of the matters</th>
								<th>Actual Cost</th>
								<th>Approved Cost</th>
								<th>Invalid Cost</th>
								<th>Reasons for Invalid Cost</th>
			
							</tr>
							</thead>
							<tbody>
								  
		              
							<tr class="gradeX">
								<td>1</td>
								<td>Uniform Expense</td>
								<td>500</td>
								<td>400</td>
								<td>100</td>
								<td>No reason</td>
								
							</tr>
									                
							</tbody>
						</table>
				</div>
				</div>
			</div>
    </div>
		</form>
  </div>
  </div><!--  printable -->
</div> <!-- content -->


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <!--  <script src="http://demos.sanwebcorner.com/html-to-pdf-export/jspdf.min.js "></script>
     <script src="http://demos.sanwebcorner.com/html-to-pdf-export/jquery-git.js"></script> -->
     
    <!--   <script>
     const doc = new jsPDF();
     $('#generate_pdf').click(function () {
    	 doc.autoTable({html: '#my-table'});
    	 doc.save('table.pdf');
     });
     </script>
    -->
    
   <!--   <script>
    $(window).on('load', function() {
    	var doc = new jsPDF();
    	var specialElementHandlers = {
    	    '#editor': function (element, renderer) {
    	        return true;
    	    }
    	};

    	$('#pdfview').click(function () {
    	    doc.fromHTML($('#pdfdiv').html(), 15, 15, {
    	        'width': 700,
    	            'elementHandlers': specialElementHandlers
    	    });
    	    doc.save('file.pdf');
    	});
    	});//]]> 

    </script>
    -->
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
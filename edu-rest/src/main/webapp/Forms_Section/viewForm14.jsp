<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.StaffDTO" %>
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
	.measurement{width:130px; text-align:center !important; border-left:0px solid #ddd !important;}
	.total_weight{width:290px; border-left:0px solid #ddd !important;}
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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 14</h1>
		<p class="form-type">Table showing the approval of hostel staff - Hostel Department</p>
		<p class="form-type">(Year <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script>)</p>
		
		<hr>
	
		<%  List<StaffDTO> staffList = (List<StaffDTO>) request.getAttribute("listOfStaff"); %>
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
								<th>Employee Name</th>
								<th>Designation</th>
								<th>Acceptance Period</th>
								<th>Order No And Date</th>
								<th>Temporary / Permanent</th>
							</tr>
							</thead>
							<tbody>
							<%
								for(StaffDTO staff:staffList){
							%>  
		              
							<tr class="gradeX">
								<td></td>
								<td><%= staff.getFirstName() %>&nbsp;<%= staff.getLastName() %></td>
								<td><%= staff.getDesignation() %></td>
								<td>2 Years</td>
								<td><%= staff.getJoiningDate() %></td>
								<td><%= staff.getJoiningPeriod() %></td>
							</tr>
							<%
								}
							%>
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
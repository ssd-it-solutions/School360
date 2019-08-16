<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.VisitorDTO" %>

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
	.table th {text-align:left !important;}
	.border{border-bottom:1px solid #ddd !important;}

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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/students" title="student list" class="tip-bottom">Form No.05</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 05</h1>
		<p class="form-type"> Showing details of visitors given by Employees / Officer in <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script></p>
		<h1 class="form-role">(Register the visits of all Officers / Employees)</h1>
		<hr>
	
		<%  List<VisitorDTO> visitorList = (List<VisitorDTO>) request.getAttribute("visitorList"); %>
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
								<th>Sr.No.</th>
								<th>Date Of Visit</th>
								<th>Name of the visiting officer</th>
								<th>Designation</th>
								<th colspan="2">Attendance For VisitDay</th>
								<th colspan="2">Presence According visits</th>
								<th colspan="2">Presence According AttendanceSheet</th>
								<th>Remarks</th>
								<th width="10%" style="display:none;">Action</th>
							</tr>
							</thead>
							<tbody>
							 <tr>
						  		<td style="display:none;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<th class="border">Residential</th>
								<th class="border">Non-residential</th>
								<th class="border">Residential</th>
								<th class="border">Non-residential</th>
								<th class="border">Residential</th>
								<th class="border">Non-residential</th>
								<td class="border">&nbsp;</td>
								
						  	  </tr>
							 <%
							 for(VisitorDTO visitor:visitorList){
							%>  
		              
						 	<tr class="gradeX">
								<td></td>
								<td><%= visitor.getVisitDate() %></td>
								<td><%= visitor.getVisitorName() %></td>
								<td><%= visitor.getDesignation() %></td>
								<td><%= visitor.getResidenceVisitDay() %></td>
								<td><%= visitor.getNonResidenceVisitDay() %></td>
								<td><%= visitor.getResidencePresenceVisit() %></td>
								<td><%= visitor.getNonResidencePresenceVisit() %></td>
								<td><%= visitor.getResidencePresenceAttendanceSheet() %></td>
								<td><%= visitor.getNonResidencePresenceAttendanceSheet() %></td>
								<td><%= visitor.getRemarks() %></td>
								<td style="display:none;"><a href="staffRecognitionList/update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="#" onclick="return confirm('Are you sure to delete category?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
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
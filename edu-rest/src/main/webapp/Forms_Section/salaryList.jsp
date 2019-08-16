<%@ page import="com.ssdit.edu.dto.StaffDTO" %>
<%@ page import="java.util.List" %>

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
	.designation-name{float:right;margin-top:-30px;}

</style>
</head>
<body>

<!--Header-part-->
	<%@ include file="../PageParts/header.jsp"%>
<!--Header-part end -->

<!--sidebar-menu-->
    <%@ include file="../PageParts/sidebar.jsp" %>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
	<div id="content-header">
	<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/hostelList" title="Hostel List" class="current">Hostel List</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
	
	</div>
	<div id="printableArea">
	<div class="container-fluid" id="pdfdiv">
		<h1 class="form-name">Statement - 10</h1>
		<p class="form-type"> Employee salary details for year 2018-2019 Details</p>
		<h1 class="form-role">(School Department)</h1>
		<hr>
			 	<div class="row-fluid">
				<div class="span12">
				<div class="widget-box">
					<div class="widget-title"> 
						<h5>Employee Salary details </h5>
					</div>
					<%
						List<StaffDTO> staffList = (List<StaffDTO>) request.getAttribute("staffDTOList");
					%>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Number</th>
								<th>Name Of the Staff</th>
								<th>Designation</th>
								<th>Period</th>
								<th>Total Salary</th>
							</tr>
							</thead>
							<tbody>	  
		              		<% int i =0;
		              		for(StaffDTO staff : staffList) {
		              			i++;
		              		if(staff.getRole().equalsIgnoreCase("ROLE_USER")){%>
		              		<tr class="gradeX">	
		              			<td><%=i %></td>
								<td><%=staff.getFirstName()+" "+staff.getLastName() %></td>
								<td><%=staff.getDesignation() %></td>
								<td><%=staff.getJoiningPeriod() %></td>
								<td><%=staff.getTotalSalary() %></td>
							</tr>
		              		<%}} %>
							
									                
							</tbody>
						</table>
				</div>
				</div>
			</div>
    	</div>
			 
		
  </div>
  </div> <!-- end of printable div -->
</div> <!-- content -->


<!--end-main-container-part-->


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

<!--end-Footer-part-->
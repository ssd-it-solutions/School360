<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.StaffDTO" %>
<%@ page import="com.ssdit.edu.entity.EmployeeMonthSalary" %>

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
				
	</div>
	<div id="printableArea">
	<div class="container-fluid" id="pdfdiv">
		<h1 class="form-name">Statement - 09</h1>
		<p class="form-type"> Showing direct contingency costs of 2017-2018 Details (as per the Chartered Report)</p>
		<h1 class="form-role">(School Department)</h1>
		
		
		<hr>
			 <%  
				 List<EmployeeMonthSalary> emsList = (List<EmployeeMonthSalary>) request.getAttribute("emsList");
			 	 String empId = (String) request.getAttribute("empId");
			 	 String empName = (String) request.getAttribute("empName");
			 	 String designation = (String) request.getAttribute("designation");
			 	 String isSalaryGenerated = (String) request.getAttribute("isSalaryGenerated");
			 %>
			 
		<h5 class="employee_name">Employee Name:<%= empName %></h5>&nbsp;&nbsp;&nbsp;<h5 class="designation-name">Designation:<%= designation %></h5>
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<% if(isSalaryGenerated.equalsIgnoreCase("false")){ %>
						<a href="<%=applicationURL%>/admin/viewAddSalaryDetails/<%=empId%>" class="btn ra-100 btn-purple" >Add</a>
						<a href="<%=applicationURL%>/admin/staffSalaryDetails/<%=empId%>" class="btn ra-100 btn-purple" >Form No - 9</a>
					<% } else {%>
						<a href="#" onClick="return false;" class="btn ra-100 btn-purple" disabled="disabled" >Add</a>
						<a href="<%=applicationURL%>/admin/staffSalaryDetails/<%=empId%>" class="btn ra-100 btn-purple" >Form No - 9</a>
					<%} %>
					
					
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Staff Salary Records </h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Month</th>
								<th>Basic Salary</th>
								<th>Dearness allowance</th>
								<th>House rent allowance</th>
								<th>Incentive allowance/Others </th>
								<th>Total Salary</th>
								<th>Cut</th>
								<th>Net payable</th>
								<th>Remarks</th>
								
							</tr>
							</thead>
							<tbody>
								<%
								for(EmployeeMonthSalary ems : emsList){
								%>
								<tr class="gradeX">
									<td><%= ems.getMonth() %></td>
									<td><%= ems.getBasicSalary() %></td>
									<td><%= ems.getDearnessAllowance() %></td>
									<td><%= ems.getHouseRentAllowance() %></td>
									<td><%= ems.getIncentiveAllowance() %></td>
									<td><%= ems.getTotalSalary() %></td>
									<td><%= ems.getDeduction() %></td>
									<td><%= ems.getNetPayable() %></td>
									<td><%= ems.getRemarks() %></td>
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
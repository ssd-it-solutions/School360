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
<!-- For PAGINATION AND SEARCH BOX -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/uniform.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/select2.css" />
<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>-->
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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>  </div>
		<h1>Staff Management</h1>
	</div>
	<div class="container-fluid">
		<hr>
		<%  List<StaffDTO> staffList = (List<StaffDTO>) request.getAttribute("staffList"); %>
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="<%=applicationURL%>/admin/addStaffForm" class="btn ra-100 btn-purple" >Add</a>
					<a href="<%=applicationURL%>/admin/salaryListOfAllEmployees" class="btn ra-100 btn-purple" >Form No - 10</a>
					<a href="<%=applicationURL%>/admin/viewSchoolStaffSalaryDetails" class="btn ra-100 btn-purple" >Form No - 11</a>
					
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Staff Details </h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th>Employee id</th>
								<th>Name</th>
								<th>Designation</th>
								<th>Phone number</th>
								<th>Email id</th>
								<th width="15%">Action</th>
							</tr>
							</thead>
							<tbody>
							<%
								for(StaffDTO staff:staffList){
									if(staff.getRole().equalsIgnoreCase("ROLE_USER")){	
									
							%>
								<tr class="gradeX">
								<td><%= staff.getId() %></td>
								<td><%= staff.getFirstName() %>&nbsp;<%= staff.getLastName() %></td>
								<td><%= staff.getDesignation() %></td>
								<td><%= staff.getPhoneNumber() %></td>
								<td><%= staff.getEmailAddress() %></td>
								<td><a href="<%=applicationURL%>/admin/staff/<%=staff.getId()%>" title="Edit">
								<img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>
								&nbsp;|&nbsp;<a href="<%=applicationURL%>/admin/deleteStaff/<%=staff.getId()%>"  onclick="return confirm('Are you sure to delete Staff?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a>
								&nbsp;|&nbsp;<a href="<%=applicationURL%>/admin/viewStaffDetails/<%=staff.getId()%>"  title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"/></a>
								&nbsp;|&nbsp;<a href="<%=applicationURL%>/admin/viewStaffSalaryDetails/<%=staff.getId()%>"  title="ViewStaffSalary"><img src="${pageContext.request.contextPath}/assets/img/salary.png" height="20" width="20"/></a></td>
								</tr>
							<%		
									}
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
</div> <!-- content -->

<!--end-main-container-part-->


<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
	<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.uniform.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/select2.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.js"></script> 
<!-- <script src="${pageContext.request.contextPath}/assets/js/matrix.tables.js"></script>-->

<script src="${pageContext.request.contextPath}/assets/js/excanvas.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.flot.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.flot.resize.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.peity.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/fullcalendar.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.dashboard.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.gritter.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.interface.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.chat.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.validate.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.form_validation.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.wizard.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.popover.js"></script>
<!--end-Footer-part-->
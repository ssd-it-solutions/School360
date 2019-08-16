<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.StudentDTO" %>

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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/students" class="current">Student Management</a>  </div>
		<h1>Student Management</h1>
	</div>
	
	<div class="container-fluid">
		<hr>
		<%  List<StudentDTO> studentList = (List<StudentDTO>) request.getAttribute("studentList"); %>
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="<%=applicationURL%>/admin/students/add" class="btn ra-100 btn-purple" >Add</a>
					
					
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Students Record</h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th>Student id</th>
								<th>Name</th>
								<th>Roll Number</th>
								<th>Class</th>
								<th>Division</th>
								<th>Phone Number</th>
								<th width="10%">Action</th>
							</tr>
							</thead>
							<tbody>
							
							<%
								for(StudentDTO student:studentList){
							%>	  
		               
							<tr class="gradeX">
								<td><%= student.getId() %></td>
								<td><%= student.getFirstName() %>&nbsp;<%= student.getLastName() %></td>
								<td><%= student.getRollNumber() %></td>
								<td><%= student.getAssignClass() %></td>
								<td><%= student.getAssignDivision() %></td>
								<td><%= student.getPhoneNumber() %></td>
								<td><a href="<%=applicationURL%>/admin/updateStudent/<%=student.getId()%>" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>
									&nbsp;|&nbsp;<a href="<%=applicationURL%>/admin/deleteStudent/<%=student.getId()%>" onclick="return confirm('Are you sure to delete student?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a>
									&nbsp;|&nbsp;<a href="<%=applicationURL%>/admin/view/<%=student.getId()%>" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a>
									</td>
							</tr>
							<%
								}
							%>
							
									                
							</tbody>
						</table>
				</div>
				</div> <!-- end of widget-box --->
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
<script src="${pageContext.request.contextPath}/assets/js/matrix.tables.js"></script>

<!--end-Footer-part-->
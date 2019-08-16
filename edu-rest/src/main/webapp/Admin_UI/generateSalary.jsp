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
		
	</div>
	<div class="container-fluid">
		<hr>
		<%  List<StaffDTO> staffList = (List<StaffDTO>) request.getAttribute("staffList"); %>
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Including All Staff Listing </h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th>Photo</th>
								<th>Name</th>
								<th>Designation</th>
								<th>Email</th>
								<th width="10%">Action</th>
							</tr>
							</thead>
							<tbody>
							<%
								for(StaffDTO staff:staffList){
							%>
								<tr class="gradeX">
								<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td><%= staff.getPhotoField() %></td>
								<td><%= staff.getFirstName() %>&nbsp;<%= staff.getLastName() %></td>
								<td><%= staff.getDesignation() %></td>
								<td><%= staff.getEmailAddress() %></td>
								<td>
								<a href="viewSalary/<%=staff.getId()%>"  title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"/></a></td>
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
</div> <!-- content -->

<!--end-main-container-part-->


<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>


<!--end-Footer-part-->
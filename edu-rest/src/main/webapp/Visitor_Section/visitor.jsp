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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/visitor" class="current">Visitors Management</a> </div>
		<h1>Visitors Management (Form - 05)</h1>
	</div>
	<div class="container-fluid">
		<hr>
		<%  List<VisitorDTO> visitorList = (List<VisitorDTO>) request.getAttribute("visitorList"); %>
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="visitor/add" class="btn ra-100 btn-purple" >Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled">Delete</button>
				<div class="widget-box" >
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Including All Visitors Listing </h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="myTable">
							<thead>
							<tr>
								<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th>Serial No.</th>
								<th>Date Of Visit</th>
								<th>Name of the visiting officer</th>
								<th>Designation</th>
								<th colspan="2">Attendance For VisitDay</th>
								<th colspan="2">Presence According visits</th>
								<th colspan="2">Presence According AttendanceSheet</th>
								<th>Remarks</th>
								<th width="10%">Action</th>
							</tr>
							
							</thead>
							<tbody>
								  
		                <!---- Modal Popup Start --->
							<div id="myAlert<?php echo $i; ?>" class="modal hide">
								<div class="modal-header">
									<button data-dismiss="modal" class="close" type="button">x</button>
									<h3>Name</h3>
								</div>
								<div class="modal-body">
									<p>Roll</p>
								</div>
								<div class="modal-body">
									<p><img src="" height="50" width="50"></p>
								 </div>
								<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
							</div>
						<!---- Modal Popup End --->
						  <tr>
						  		<td>&nbsp;</td>
								<td>&nbsp;</td>
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
								<td class="border">&nbsp;</td>
						  </tr>
						  	<%
								for(VisitorDTO visitor:visitorList){
							%>
							<tr class="gradeX">
								<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td>1.</td>
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
								<td><a href="updateVisitor/<%=visitor.getId()%>" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="deleteVisitor/<%=visitor.getId()%>" onclick="return confirm('Are you sure to delete visitor?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
							</tr>
							<%
								}
							%>                
							</tbody>
						</table>
				</div>
				</div> <!-- end of widget-box --->
				<div id="editor"></div>
				
			</div>
    </div>
		</form>
  </div>
</div> <!-- content -->





<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <style>
		.table th {text-align:left !important;}
		.border{border-bottom:1px solid #ddd !important;}
	</style>
	<!--  For creating pdf
	<script src="https://unpkg.com/jspdf"></script>
	<script src="https://unpkg.com/jspdf-autotable"></script>
	<script>
	const doc = new jsPDF();
	doc.autoTable({html: '#myTable'});
	doc.save('table.pdf');

	</script>
	-->
<!-- Footer-part End -->
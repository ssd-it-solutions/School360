<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.ssdit.edu.entity.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>School ERP</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fullcalendar.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matrix-style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matrix-media.css" />
<link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/jquery.gritter.css" />
<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>-->
<!-- For datepicker --->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />

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
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="login" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/students" title="student list" class="tip-bottom">Students</a></div>
  </div>
  
  <% Map<String,List<Student>> mapOfStudents = (Map<String,List<Student>>) request.getAttribute("mapOfStudents"); %>
  
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Students List</h1>
  	</div>
     
    <hr/>
    
    <div class="row-fluid" style="display:block;">
	  <div class="span12">
      	<div class="widget-box">
        	<div class="widget-title">
            	<ul class="nav nav-tabs">
            	<%  boolean activeTracker=true;
            		int tabContentCount=1;
            		for (String key : mapOfStudents.keySet()) { %>
            		<li <% if(activeTracker) {%> class="active" <% activeTracker=false;}%>><a data-toggle="tab" href="#<%=tabContentCount %>"><%= key %><% tabContentCount++; %></a></li>
            	<%} %>
              	
            	</ul>
         	</div>
         	 <div class="widget-content tab-content">
         	 	<% 
         	 	activeTracker=true;
         	 	tabContentCount=1;
         	 	for (String key : mapOfStudents.keySet()) { 
         	 	List<Student> studentList = mapOfStudents.get(key);
         	 	if( null != studentList && !studentList.isEmpty()){
         	 	%>
         	 	<div id="<%=tabContentCount %><% tabContentCount++; %>" <% if(activeTracker) {%>class="tab-pane fade in active"<% activeTracker=false;}else{%> class="tab-pane fade" <%} %>>
         	 			<div class="widget-content nopadding">
         	 				<table class="table table-bordered data-table with-check">
         	 					<thead>
									<tr>
										<th>Student id</th>
										<th>Name</th>
										<th>Roll Number</th>
										<th>Phone Number</th>
										<th width="10%">Action</th>
									</tr>
									<% for(Student student : studentList) {%>
									<tr class="gradeX">
										<td><%= student.getId() %></td>
										<td><%= student.getFirstName() %>&nbsp;<%= student.getLastName() %></td>
										<td><%= student.getRollNumber() %></td>
										<td><%= student.getPhoneNumber() %></td>
										<td></td>
									</tr>
									<%} %>
								</thead>
         	 				</table>
         	 			</div>
         	 	</div>
         	 	<%
         	 		}
         	 	} %>
         	 </div>
       	</div>
	</div>
	</div>
    
    </div>
    
</div><!-- end of widget-box -->
   




<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     
 
     

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>


<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
<!-- End Footer-part -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<!--<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>-->

<style>
	.box-title{
	font-size:15px !important;
}
th{
	font-size:12px !important;
}
.box-red{
	color:red;
}
.box-points{
	font-weight:bold;
}
.box .box-body{
	border-top-left-radius:0;
	border-top-right-radius:0;
	border-bottom-right-radius:3px;
	border-bottom-left-radius:3px;
}
.profile-user-img{
	margin:0 auto;
	width:100px;
	height:100px;
	padding:3px;
	border:3px solid #d2d6de;
}
.img-circle{
	border-radius:50%;
}
.img-responsive{
	display:block;
}
img{
 max-width:100% !important;
 }
.profile-username{
 font-size:21px !important;
 margin-top:5px;
}
.text-muted{
	color:#999;
}
.list-group{
	padding-left:0;
	margin-bottom:20px;
}
.list-group-item:first-child{
	border-top-right-radius:4px;
	border-top-left-radius:4px;
}
.list-group-item{
	position:relative;
	display:block;
	padding:10px 15px;
	margin-bottom:-1px;
	border:1px solid #ddd;
}
.pull-right{
	float:right;
	
}
.tab-content-new{
	background:#fff;
	padding:10px;
}
.tab-content-new>.active{
	display:block;
}
.box{
	position:relative;
	background:#ffffff;
	margin-bottom:20px;
	border-radius:3px;
	width:100%;
	box-shadow:0px 1px 3px rgba(0, 0, 0, 0.1);
}
.box .box-header{
	position:relative;
	border-top-left-radius:3px;
	border-top-right-radius:3px;
	border-bottom-right-radius:0;
	border-bottom-left-radius:0;
	border-bottom:0px solid #f4f4f4;
	color:#444;
	box-sizing:border-box;
}
.box .box-header .box-title{
	display:inline-block;
	padding:15px;
	margin:0;
	font-size:14px;
	font-weight:400;
	float:left;
	cursor:default;
	font-family:"OpenSans Regular";
}
.employee_photo{
	margin-top:20px;
}
.employee_list{
	margin:0px 25px 10px 25px !important;
}
.view-employee-details{margin-left:25% !important;}
	th{font-size:12px !important;}
	td{font-size:12px !important;}
	
	
</style>
</head>
<body>

<!--Header-part-->
	<%@ include file="../PageParts/header.jsp"%>
<!--Header-part end -->

<!--sidebar-menu-->
    <%@ include file="../PageParts/sidebar.jsp" %>
<!--sidebar-menu-->

<!-- Start Main Contain Part  -->
<div id="content">
	<div id="content-header">
		<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">View Student Details</a> </div>
		<h1>View Student Details</h1>
		
	</div>
	
	<div class="container-fluid">
	<hr>
		<div class="row-fluid">
		  <%  StudentDTO student = (StudentDTO) request.getAttribute("StudentDetails");%>
			<div class="span3 view-span">
				<div class="widget-box">
					<div class="widget-content nopadding">
						<div class="clearfix"></div>
						<div id="printableArea">
						<div class="x_content">
							<div class="box-body box-profile">
							
								<% if(null != student.getPhotoField()){
										String photoStringBase64 = new String(student.getPhotoField(),"UTF-8");%>
										<img class="profile-user-img img-responsive img-circle employee_photo" src="data:image/jpeg;base64,<%= photoStringBase64 %>">
										<p id="p1"></p>
								<%}%>    
							
								<h3 class="profile-username text-center"><%= student.getFirstName() %>&nbsp;<%= student.getLastName() %></h3>
								<p class="text-muted text-center">Student</p>
								<ul class="list-group list-group-unbordered employee_list">
									<li class="list-group-item"> 
										<b>Gender </b>
										<a class="pull-right"><%= student.getGender() %></a>
									</li>
									<li class="list-group-item"> 
										<b>Date Of Birth </b>
										<a class="pull-right"><%= student.getDob() %></a>
									</li>
									<li class="list-group-item"> 
										<b>Mobile Number </b>
										<a class="pull-right"><%= student.getPhoneNumber() %></a>
									</li>
								</ul>
							</div> <!-- End of box-body box-profile  --> 
						</div>   <!-- End of x_content --->
						</div>   <!--  End of printableArea  -->
					</div>  <!-- End of widget-content nopadding  -->
				</div>  <!-- End of widget-box -->
			</div> <!-- end of span3 -->

			<div class="span8" id="print">
				<div class="widget-box">
					<div class="widget-title">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#tab1">Personal Information</a></li>
							<li><a data-toggle="tab" href="#tab2">Academic Information</a></li>
							<li><a data-toggle="tab" href="#tab3">Guardian Information</a></li>
						</ul>
					</div> <!-- End of widget-title -->
					<div class="widget-content tab-content">
						<div id="tab1" class="tab-pane active">
							<div class="span6 view-employee-details">
								<div class="widget-box">
									<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
										<h5>Personal Information Details </h5>
									</div>
									<div class="widget-content nopadding">
										<div class="clearfix"></div>
										<div id="printableArea">
											<div class="x_content">

												<table id="table-demo" class="table table-striped table-bordered bulk_action">
													<thead>
														<tr>
															<th>Academic Year</th>
															<td><%= student.getAcademicYear() %></td>
														</tr>

														<tr>
															<th>Register Number</th>
															<td><%= student.getRegisterNumber() %></td>
														</tr>

														<tr>
															<th>First Name</th>
															<td><%= student.getFirstName() %></td>
														</tr>

														<tr>
															<th>Middle Name</th>
															<td><%= student.getMiddleName() %></td>
														</tr>

														<tr>
															<th>Last Name</th>
															<td><%= student.getLastName() %></td>
														</tr>

														<tr>
															<th>Date Of Birth</th>
															<td><%= student.getDob() %></td>
														</tr>

														<tr>
															<th>Gender</th>
															<td><%= student.getGender() %></td>
														</tr>

														<tr>
															<th>Temporary Address</th>
															<td><%= student.getTemporaryAddress() %></td>
														</tr>

														<tr>
															<th>Permanent Address</th>
															<td><%= student.getPermanentAddress() %></td>
														</tr>

														<tr>
															<th>Adhar Number</th>
															<td><%= student.getAdharNo() %></td>
														</tr>

														<tr>
															<th>Religion</th>
															<td><%= student.getReligion() %></td>
														</tr>

														<tr>
															<th>Category </th>
															<td><%= student.getCategory() %> </td>
														</tr>

														<tr>
															<th>Caste </th>
															<td><%= student.getCaste() %></td>
														</tr>

													</thead>
													<tbody>
												</table>
											</div>	<!-- End of x_content --->
										</div>  <!--  End of printableArea  -->
									</div> <!-- End of widget-content nopadding -->
								</div> <!-- End of Widget Box  -->
							</div>  <!-- End of span6  -->
						</div> <!-- end of tab1 div -->

						<div id="tab2" class="tab-pane">
							<div class="span6 view-employee-details">
								<div class="widget-box">
									<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
										<h5>Academic Information </h5>
									</div>
									<div class="widget-content nopadding">
										<div class="clearfix"></div>
										<div id="printableArea">
											<div class="x_content">

												<table id="table-demo" class="table table-striped table-bordered bulk_action">
													<thead>
														<tr>
															<th>Previous School Name</th>
															<td><%= student.getPreviousSchoolName() %></td>
														</tr>

														<tr>
															<th>Previous School Std</th>
															<td><%= student.getPreviousSchoolStd() %></td>
														</tr>

														<tr>
															<th>Class</th>
															<td><%= student.getAssignClass() %></td>
														</tr>

														<tr>
															<th>Division</th>
															<td><%= student.getAssignDivision() %></td>
														</tr>

														<tr>
															<th>Roll Number</th>
															<td><%= student.getRollNumber() %></td>
														</tr>
													</thead>
													<tbody>
												</table>
											</div>	<!-- End of x_content --->
										</div>  <!--  End of printableArea  -->
									</div> <!-- End of widget-content nopadding -->
								</div> <!-- End of Widget Box  -->
							</div>  <!-- End of span6  -->
						</div> <!-- End of tab2 div -->

						<div id="tab3" class="tab-pane">
							<div class="span6 view-employee-details">
								<div class="widget-box">
									<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
										<h5>Personal Information </h5>
									</div>
									<div class="widget-content nopadding">
										<div class="clearfix"></div>
										<div id="printableArea">
											<div class="x_content">

												<table id="table-demo" class="table table-striped table-bordered bulk_action">
													<thead>
														<tr>
															<th>First Name</th>
															<td><%= student.getGuardianFirstName() %></td>
														</tr>

														<tr>
															<th>Middle Name</th>
															<td><%= student.getGuardianMiddleName() %></td>
														</tr>

														<tr>
															<th>Last Name</th>
															<td><%= student.getGuardianLastName() %></td>
														</tr>

														<tr>
															<th>Mobile Number</th>
															<td><%= student.getPhoneNumber() %></td>
														</tr>

														<tr>
															<th>Address</th>
															<td><%= student.getAddress() %></td>
														</tr>

													<%-- 	<tr>
															<th>Country</th>
															<td><%= student.getCountry() %></td>
														</tr> --%>

														<%-- <tr>
															<th>State</th>
															<td><%= student.getState() %></td>
														</tr> --%>

														<tr>
															<th>District</th>
															<td><%= student.getDistrict() %></td>
														</tr>

														<tr>
															<th>Tal.</th>
															<td><%= student.getTal() %></td>
														</tr>

														<tr>
															<th>Village</th>
															<td><%= student.getVillage() %></td>
														</tr>

														<tr>
															<th>Zip Code</th>
															<td><%= student.getZipCode() %></td>
														</tr>

													</thead>
													<tbody>
												</table>
											</div>	<!-- End of x_content --->
										</div>  <!--  End of printableArea  -->
									</div> <!-- End of widget-content nopadding -->
								</div> <!-- End of Widget Box  -->
							</div>  <!-- End of span6  -->
						</div> <!-- End of tab3 div -->

						

						
					</div> <!-- End of widget-content -->
				</div><!-- End of widget-box -->
			</div>  <!-- End of span8 -->
			<div id="editor"></div>

		</div> <!-- End of row-fluid  -->
		
	</div> <!-- End of container-fluid  -->


</div> <!-- END of content div -->
<!-- End of Main Contain Part  -->



<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <!--  For creating pdf  
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js" integrity="sha384-NaWTHo/8YCBYJ59830LTz/P4aQZK1sS0SneOgAvhsIl3zBu8r9RevNg5lHCHAuQ/" crossorigin="anonymous"></script>
     <script>
var doc = new jsPDF();
    var specialElementHandlers = {
        '#editor': function (element, renderer) {
            return true;
        }
    };
	
    $('#cmd').click(function () {
        doc.fromHTML($('#print').html(), 15, 15, {
            'width': 170,
                'elementHandlers': specialElementHandlers
        });
        doc.save('sample-file.pdf');
    });

    // This code is collected but useful, click below to jsfiddle link.
</script>
-->

<!-- End Footer-part -->
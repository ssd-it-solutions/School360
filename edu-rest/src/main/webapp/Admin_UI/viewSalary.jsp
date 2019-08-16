<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="viewStaff" class="current">View Staff Details</a><input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="margin-right: 5; float:right;"/> </div>
		<h1>View Salary Details</h1>
	</div>

	<div class="container-fluid">
	
	<hr>
	
		<div id="printableArea">
		<div class="row-fluid">
			  
			  <%  StaffDTO staff = (StaffDTO) request.getAttribute("EmployeeDetails");%>
			  
			<div class="span3 view-span">
				<div class="widget-box">
					<div class="widget-content nopadding">
						<div class="clearfix"></div>
						
						<div class="x_content">
							<div class="box-body box-profile">
								<!--   	src="https://demo.inilabs.net/school/v4.0/uploads/images/default.png" -->
								<% String photoStringBase64 = new String(staff.getPhotoField(),"UTF-8");%>
								<img class="profile-user-img img-responsive img-circle employee_photo" src="data:image/jpeg;base64,<%= photoStringBase64 %>">
								<h3 class="profile-username text-center"><%= staff.getFirstName() %>&nbsp;<%= staff.getLastName() %></h3>
								<p class="text-muted text-center"><%= staff.getDesignation() %></p>
								<ul class="list-group list-group-unbordered employee_list">
									<li class="list-group-item"> 
										<b>Gender </b>
										<a class="pull-right"><%= staff.getGender() %></a>
									</li>
									<li class="list-group-item"> 
										<b>Date Of Birth </b>
										<a class="pull-right"><%= staff.getDob() %></a>
									</li>
									<li class="list-group-item"> 
										<b>Mobile Number </b>
										<a class="pull-right"><%= staff.getPhoneNumber() %></a>
									</li>
								</ul>
							</div> <!-- End of box-body box-profile  --> 
						</div>   <!-- End of x_content --->
						
					</div>  <!-- End of widget-content nopadding  -->
				</div>  <!-- End of widget-box -->
			</div> <!-- end of span3 -->

			<div class="span8">
				<div class="widget-box">
					<div class="widget-title">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#tab1">Salary Info</a></li>
							
						</ul>
					</div> <!-- End of widget-title -->
					
					<div class="widget-content tab-content">
						<div id="tab1" class="tab-pane active">
							<div class="span6 view-employee-details">
								<div class="widget-box">
									
									<div class="widget-content nopadding">
										<div class="clearfix"></div>
										
											<div class="x_content">

												<table id="table-demo" class="table table-striped table-bordered bulk_action">
													<thead>
														<tr>
															<th>Basic Salary</th>
															<td><%= staff.getBasicSalary() %></td>
															
														</tr>

														<tr>
															<th>Dearness Allowance</th>
															<td><%= staff.getDearnessAllowance() %></td>
														</tr>

														<tr>
															<th>Houserent Allowance</th>
															<td><%= staff.getHouseAllowance() %></td>
														</tr>

														<tr>
															<th>Incentive Allowance/Others</th>
															<td><%= staff.getIncentiveAllowance() %></td>
														</tr>

														<tr>
															<th>Total Salary</th>
															<td><%= staff.getTotalSalary() %></td>
														</tr>

														<tr>
															<th>Cut</th>
															<td><%= staff.getCutSalary() %></td>
														</tr>

														<tr>
															<th>Net Payable</th>
															<td><b><%= staff.getNetPayable() %></b></td>
														</tr>

													</thead>
													<tbody>
												</table>
											</div>	<!-- End of x_content --->
										
									</div> <!-- End of widget-content nopadding -->
								</div> <!-- End of Widget Box  -->
							</div>  <!-- End of span6  -->
						</div> <!-- end of tab1 div -->




						
					</div> <!-- End of widget-content -->
					
				</div><!-- End of widget-box -->
			</div>  <!-- End of span8 -->

		</div> <!-- End of row-fluid  -->
		</div> <!--  End of printable div -->
		
	</div> <!-- End of container-fluid  -->

</div> <!-- END of content div -->



<!-- End of Main Contain Part  -->


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
<!-- End Footer-part -->
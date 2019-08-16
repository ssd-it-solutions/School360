<%@ page import="com.ssdit.edu.entity.Vendor" %>
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
	.view-span{margin-left:25% !important;}
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

<!-- Main-contain-part -->

<div id="content">
	<div id="content-header">
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Vendors Management</a> </div>
		<h1>Vendors Information</h1>
	</div>
	<div class="container-fluid">
		<hr>
		
			<div class="row-fluid">
				<div class="span6 view-span">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
							<h5>Vendors Details </h5>
						</div>
					<div class="widget-content nopadding">
						<div class="clearfix"></div>
						<div id="printableArea">
						<div class="x_content">
						<%  Vendor vendor = (Vendor) request.getAttribute("vendorDTO");%>
						 <table id="table-demo" class="table table-striped table-bordered bulk_action">
							<thead>
								<tr>
									<th>Company Name</th>
									<td><%=vendor.getCompanyName() %></td>
								</tr>

								<tr>
									<th>Company Phone</th>
									<td><%=vendor.getCompanyPhone() %></td>
								</tr>

								<tr>
									<th>Company Email</th>
									<td><%=vendor.getCompanyEmail() %></td>
								</tr>

								<tr>
									<th>Address</th>
									<td><%=vendor.getAddress() %></td>
								</tr>
								
								<tr>
									<th>Country</th>
									<td><%=vendor.getCountry() %></td>
								</tr>

								<tr>
									<th>District</th>
									<td><%=vendor.getDistrict() %></td>
								</tr>

								<tr>
									<th>Contact Person</th>
									<td><%=vendor.getContactPersonsName() %></td>
								</tr>

								<tr>
									<th>Phone(Contact Person)</th>
									<td><%=vendor.getContactPersonsPhone() %></td>
								</tr>

								<tr>
									<th>Bank Name</th>
									<td><%=vendor.getBankName() %></td>
								</tr>

								<tr>
									<th>Branch Name</th>
									<td><%=vendor.getBranchName() %></td>
								</tr>

								<tr>
									<th>Account Number</th>
									<td><%=vendor.getAccountNumber() %></td>
								</tr>

								<tr>
									<th>IFSC Code</th>
									<td><%=vendor.getIfscCode() %></td>
								</tr>
							</thead>
							<tbody>
								  
		               
						</table>
						</div><!-- end of printable area --->
						</div><!--  end of x_content  -->
						
				</div>
				</div>
			</div>
    </div> <!-- end of row-fluid --->
	
		
  </div>
</div> <!-- content -->


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
<!-- Footer-part End -->
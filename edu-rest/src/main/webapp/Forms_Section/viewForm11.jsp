<%@ page import="com.ssdit.edu.dto.StaffDTO" %>
<%@ page import="java.lang.Integer" %>
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
	.form-type{text-align:center;font-size:17px;color:#555555;font-weight:700;}
	.form-role{text-align:center;font-size:17px !important; font-weight:500;}
	.table th{font-size:12px;}
	.total{width:160px !important;}
	.second-table{width:500px;}
	.measurement{width:130px; text-align:center !important; border-left:0px solid #ddd !important;}
	.total_weight{width:290px; border-left:0px solid #ddd !important;}
	.form_tags{font-size:16px;font-weight:600;}
	.month_tags{font-size:16px;font-weight:600;margin-left:200px;}
	
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
		<div id="editor"></div>
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/hostelList" title="Hostel List" class="current">Hostel List</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 11</h1>
		<p class="form-type">Details of Inadequate pay scale(Fifth pay commission)payable payments</p>
		<p class="form-type">(School Department)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Year:-<script>document.write(new Date().getFullYear()- 1);</script>-<script>document.write(new Date().getFullYear()- 0);</script></p>
		
		<p class="form_tags">Dearness Allowance Rate:-April<script>document.write(new Date().getFullYear()- 2);</script> To June  264%</p>
								<p class="month_tags">July<script>document.write(new Date().getFullYear()- 2);</script> To December <script>document.write(new Date().getFullYear()- 2);</script> 268%</p>
								<p class="month_tags">January<script>document.write(new Date().getFullYear()- 1);</script> To June <script>document.write(new Date().getFullYear()- 1);</script> </p>
		
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="staffRecognitionList/add" class="btn ra-100 btn-purple" style="display:none;">Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled" style="display:none;">Delete</button>
					
					
				<div class="widget-box">
					
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Serial No.</th>
								<th>Employee Name</th>
								<th>Designation</th>
								<th>Period(in Months)</th>
								<th>Basic Salary</th>
								<th>Dearness Allowance</th>
								<th>House Rent Allowance</th>
								<th>Other Interim Increase 1,2,3 </th>
								<th>Total 1 Month's Salary(5+6+7+8)</th>
								<th>Total Amount (4 X 9)</th>
							</tr>
							</thead>
							<tbody>
							<%
								List<StaffDTO> staffList = (List<StaffDTO>) request.getAttribute("staffDTOList");
							%>
							
							
						   <%
						    int i=0;
						    int baTotal = 0;
						    int daTotal = 0;
						    int hraTotal = 0;
						    int iaTotal = 0;
						    int column9Total = 0;
						    int column10Total= 0;
						   	for(StaffDTO staff : staffList){
						   		if(staff.getRole().equalsIgnoreCase("ROLE_USER")){
						   		i++;
						   		int bs = Integer.parseInt(staff.getBasicSalary().trim());
						   		baTotal = baTotal + bs;
						   		int da = Integer.parseInt(staff.getDearnessAllowance().trim());
						   		daTotal = daTotal + da;
						   		int hra = Integer.parseInt(staff.getHouseAllowance().trim());
						   		hraTotal = hraTotal + hra;
						   		int ia = Integer.parseInt(staff.getIncentiveAllowance().trim());
						   		iaTotal = iaTotal + ia;
						   		
						   		int column9 = bs + da + hra + ia;
						   		column9Total = column9Total + column9;  
						   		int column10 = column9 * 12;
						   		column10Total = column10Total + column10;
						   	%>
						   		<tr>
						   			<td><%= i %></td>
						   			<td><%= staff.getFirstName()+" "+staff.getLastName() %></td>
						   			<td><%= staff.getDesignation() %></td>
						   			<td><%= staff.getJoiningPeriod() %></td>
						   			<td><%= staff.getBasicSalary() %></td>
						   			<td><%= staff.getDearnessAllowance() %></td>
						   			<td><%= staff.getHouseAllowance() %></td>
						   			<td><%= staff.getIncentiveAllowance() %></td>
						   			<td><%= column9 %></td>
						   			<td><%= column10 %></td>
						   			
						   			
						   		</tr>
						   	<%	
						   		}
						   	}
						   %>
							
							<tr class="gradeX">
								<td style="border-left:0px solid #ddd;"></td>
								<td style="border-left:0px solid #ddd;">&nbsp;</td>
								<td style="border-left:0px solid #ddd;">Total</td>
								<td style="border-left:0px solid #ddd;">&nbsp;</td>
								<td><%=baTotal %></td>
								<td><%=daTotal %></td>
								<td><%=hraTotal %></td>
								<td><%=iaTotal %></td>
								<td><%=column9Total %></td>
								<td><%=column10Total %></td>
							</tr>
							
							
							
							</tbody>
						</table>
												
				</div>
				</div> <!--  End of widget-box -->
				<div class="NoteDiv">
					<p>Note: </p>
				</div>
			</div> <!-- End of span12 -->
    </div>
		</form>
		
		
		
  </div> <!-- container-fluid -->
  </div><!-- printable div -->
</div> <!-- content -->



<!-- End Of Main-contain-part -->

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
<!-- Footer-part End -->
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.dto.GovDietPlansDTO" %><!DOCTYPE html>
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
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 13</h1>
		<p class="form-type">Dietary plan for allocation of Government / Subsidized Ashram schools  </p>
		<p class="form-type"> Year:-<script>document.write(new Date().getFullYear()- 1);</script>-<script>document.write(new Date().getFullYear()- 0);</script></p>
		
<!-- 		<p class="form_tags">Dearness Allowance Rate:-April<script>document.write(new Date().getFullYear()- 2);</script> To June  264%</p>
								<p class="month_tags">July<script>document.write(new Date().getFullYear()- 2);</script> To December <script>document.write(new Date().getFullYear()- 2);</script> 268%</p>
								<p class="month_tags">January<script>document.write(new Date().getFullYear()- 1);</script> To June <script>document.write(new Date().getFullYear()- 1);</script> </p>
	 -->	
	 
	 	<%
			List<GovDietPlansDTO> listOfGovDietPlanItem = (List<GovDietPlansDTO>)request.getAttribute("listOfGovItem");
		%>
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
								<th class="year">Serial No.</th>
								<th>Food Group</th>
								<th>Food Ingredient Names(as per Local Availability)</th>
								<th  colspan="3">Calculate in grams</th>
								</tr><tr>
							<th></th><th></th><th></th>
							<th>STD. 1st To 5th </th><th>STD. 6th To 8th</th><th>STD. 9th To 12th</th>
				
							</tr>
							
							
							</thead>
							
							<tbody>
						
					
							<% for(GovDietPlansDTO govDietPlan : listOfGovDietPlanItem) {%>
							<tr class="gradeX">
								<td> </td>
								<td><%=govDietPlan.getEatableType()%></td>
								<td><%=govDietPlan.getEatableItems()%></td>
								<td><%=govDietPlan. getFirstToFive()%></td>
								<td><%=govDietPlan.getSixToEight()%></td>
								<td><%=govDietPlan.getNineToTwelve()%></td>
								
							</tr>
	
							<%} %>
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
     <script>
   var addSerialNumber = function () {
	    $('table tr').each(function(index) {
	        $(this).find('td:nth-child(1)').html(index+(-1));
	    });
	};

	addSerialNumber();
   </script>
<!-- Footer-part End -->
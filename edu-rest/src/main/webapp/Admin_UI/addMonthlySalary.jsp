<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.ssdit.edu.dto.EmployeeSalaryDTO" %>
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
p {
         font-size:12px;
         color:red;
       }	
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
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="viewVendor" title="vendors list" class="tip-bottom">Add Vendor</a></div>
  </div>
<!--End-breadcrumbs-->
<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Employee's Monthly Salary</h1>
    </div>
<!--End-Action boxes-->    
<hr/>
    <div class="row-fluid" style="display:block;">
       <!-- end of span6 -->
      <!--<div class="span6">-->
	  <div class="span12">
        
		
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Salary Details</a></li>
            </ul>
         </div>
         <%  
         EmployeeSalaryDTO salaryDTO = (EmployeeSalaryDTO) request.getAttribute("salaryDetails");
         
         %> 
        
		 <!-- <form action="#" method="get" class="form-horizontal" id="inventory_form" name="inventory_form"> -->
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
			 <form:form id="inventory_form" class="form-horizontal" action="/admin/addMonthlySalary" method="post"  modelAttribute="employeeSalaryDTO" onSubmit="return validateForm(this);">
				<div class="span6">
					<!-- Vendors-information -->
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Name : value="<%=salaryDTO.getDearnessAllowance()%>"</h5>
						</div>
					
						<div class="widget-content nopadding">
								<div class="control-group">
									<label class="control-label">Basic Salary : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="basicSalary" id="basicSalary" autocomplete="off" value="<%=salaryDTO.getBasicSalary()%>"  ReadOnly="true" path="basicSalary"/>
										    <p id="p1"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Dearness Allowance : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="dearnessAllowance" id="dearnessAllowance" autocomplete="off" value="<%=salaryDTO.getDearnessAllowance()%>" ReadOnly="true" path="dearnessAllowance"/>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">House Rent Allowance : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="houseRentAllowance" id="houseRentAllowance" autocomplete="off" value="<%=salaryDTO.getHouseRentAllowance()%>" path="houseRentAllowance" ReadOnly="true"/>
											<form:input path="staffId" type="hidden" value="<%=salaryDTO.getStaffId()%>" />
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Incentive Allowance : </label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="incentiveAllowance" id="incentiveAllowance" autocomplete="off" value="<%=salaryDTO.getIncentiveAllowance()%>" path="incentiveAllowance" ReadOnly="true"/>
										    <p id="p4"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Total Salary : </label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="totalSalary" id="totalSalary" autocomplete="off" value="<%=salaryDTO.getTotalSalary()%>" path="totalSalary" ReadOnly="true"/>
											<p id="p5"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Deduction : </label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="deduction" id="deduction" autocomplete="off"  path="deduction" onkeyup="return validateForm(this)" value = "0"/>
											
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Net Payable : </label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="netPayable" id="netPayable" autocomplete="off"  value="<%=salaryDTO.getTotalSalary()%>" path="netPayable" ReadOnly="true" />
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Remarks : </label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="remarks" id="remarks" autocomplete="off"  path="remarks" />
										</div>
								</div>
								<div class="form-actions" >
								   <input type="submit" class="btn btn-success" id="vendor_info">
			                  </div>
							
						</div>
					</div>
					<!-- end of vendors information form details   -->
				</div><!-- end of span6 -->
				<!--- end of FIRST FORM DESIGN  -->


			<!--- end of First FORM DESIGN  -->
			 </form:form>
			</div> <!-- end of tab1 div -->


           <!-- end of tab2 -->

            <!-- end of tab3 -->
        </div> <!-- end of widget-content -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
<script type="text/javascript">  			
function validateForm(activeElement){
	var deduction = document.getElementById("deduction").value;
	var totalSalary = document.getElementById("totalSalary").value;
	if(deduction != '' && !isNaN(deduction) && totalSalary != '' && !isNaN(totalSalary)){
		var deductionInt =  parseInt(deduction);
		var totalSalaryInt = parseInt(totalSalary);
		if(deductionInt > totalSalaryInt ){
			alert("Deduction amount must be less than Total Salary");
			return false;
		}else{
			var netPayableInt  = totalSalaryInt - deductionInt;
			document.getElementById("netPayable").value = netPayableInt;
		}
	}

}


</script>     
      <script>
     populateCountries("country","state");
     </script>
<!-- Footer-part End -->
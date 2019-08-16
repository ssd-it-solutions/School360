<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/vendors" title="vendors list" class="tip-bottom">Vendors Management</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Vendor Management</h1>
    </div>
<!--End-Action boxes-->    


    <hr/>
    <div class="row-fluid" style="display:block;">
      
	  <div class="span12">
       <%  Vendor vendor = (Vendor) request.getAttribute("vendorDTO");%> 
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Edit Vendors Information</a></li>
              
            </ul>
         </div>
		 <form:form id="inventory_form" class="form-horizontal" action="/admin/vendors/update" method="post" modelAttribute="vendorDTO" onSubmit="return validateVendorInformation(this);">
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Edit Vendors-information</h5>
						</div>
						<div class="widget-content nopadding">
								<div class="control-group">
									<label class="control-label">Company Name :</label>
										<div class="controls">
											<form:input type="text" class="span11" name="companyName" id="companyName" autocomplete="off" path="companyName" value="<%=vendor.getCompanyName()%>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p1"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Company Phone :</label>
										<div class="controls">
											<form:input type="text" class="span11" name="companyPhone" id="companyPhone" autocomplete="off" path="companyPhone" pattern="((\+*)((0[ -]+)*|(91 )*)(\d{12}+|\d{10}+))|\d{5}([- ]*)\d{6}"  value="<%=vendor.getCompanyPhone()%>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p2"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Company Email :</label>
										<div class="controls">
											<form:input type="email" class="span11" name="companyEmail" id="companyEmail" autocomplete="off" path="companyEmail"  value="<%=vendor.getCompanyEmail() %>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p3"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Address : </label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="address" id="address" autocomplete="off" path="address" value="<%= vendor.getAddress() %>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p4"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Country :</label>
										<div class="controls">
											<form:select class="span8 mask text" id="country" name="country" path="country" value="<%=vendor.getCountry() %>" onchange="return validateVendorInformation(this);">
											  	<form:option value="None" items="<%=vendor.getCountry() %>">  Select Country  </form:option>
											    <form:option value="India">  India  </form:option>
											</form:select>
											<p id="p5"></p>
										</div>
								</div>
							<div class="control-group">
									<label for="normal" class="control-label">State : </label>
										<div class="controls">
											<form:select class="span8 mask text" id="state" name="state" path="state" value="<%=vendor.getState() %>" onchange="return validateVendorInformation(this);">
											  	<form:option value="None" item="<%=vendor.getState() %>">  Select State  </form:option>
											    <form:option value="Maharashtra">  Maharashtra  </form:option>
											</form:select>
											<p id="p6"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">District : </label>
										<div class="controls" >
											<form:select class="span8 mask text" id="district" name="district" path="district" value="<%=vendor.getDistrict() %>" onchange="return validateVendorInformation(this);">
											  	<form:option value="None" item = "<%=vendor.getDistrict() %>" >  Select District  </form:option>
											    <form:option value="Nashik">  Nashik  </form:option>
											</form:select>
											<p id="p7"></p>
										</div>
							</div>
						<!-- end of personal information form details   -->
						</div>
					</div>
				</div><!-- end of span6 -->
	<!--- end of FIRST FORM DESIGN  -->

    <!-- start SECOND FORM DESIGN  --->
				<div class="span6" style="display:block;">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Details of contact person </h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Name</label>
										<div class="controls">
											<form:input type="text" id="contactPersonsName" class="span8 mask text" autocomplete="off" name="contactPersonsName" path="contactPersonsName" value="<%=vendor.getContactPersonsName() %>" onkeyup="return validateVendorInformation(this);"/>
										    <p id="p8"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Phone</label>
										<div class="controls">
											<form:input type="text"  class="span8 mask text" name="contactPersonsPhone" autocomplete="off" id="contactPersonsPhone" path="contactPersonsPhone" value="<%=vendor.getCompanyPhone() %>" onkeyup="return validateVendorInformation(this);"/>
										    <p id="p9"></p>
										</div>
								</div>			
						</div>
					</div>
       
				</div>
				<div class="span6" style="display:block;">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Bank Details </h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Bank Name</label>
										<div class="controls">
											<form:input type="text" id="bankName" name="bankName" path="bankName" autocomplete="off" class="span8 mask text" value="<%=vendor.getBankName() %>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p10"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Branch Name</label>
										<div class="controls">
											<form:input type="text" id="branchName" name="branchName" path="branchName" autocomplete="off" class="span8 mask text" value="<%=vendor.getBranchName() %>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p11"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Account Number</label>
										<div class="controls">
											<form:input type="number"  class="span8 mask text" name="accountNumber" autocomplete="off" id="accountNumber" path="accountNumber" value="<%=vendor.getAccountNumber() %>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p12"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">IFSC Code</label>
										<div class="controls">
											<form:input type="text" id="ifscCode" name="ifscCode" path="ifscCode" autocomplete="off" class="span8 mask text" value="<%=vendor.getIfscCode() %>" onkeyup="return validateVendorInformation(this);"/>
											<p id="p13"></p>
										</div>
								</div>
								
								<div class="form-actions" >
								   <input type="submit" class="btn btn-success" id="vendor_info" onClick="return validateVendorInformation(this)">
			                  </div>
																
							
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div> <!-- end of second span6 --->

	<!--- end of SECOND FORM DESIGN  -->
			</div> <!-- end of tab1 div -->
			
			       <!-- end of tab2 -->
            		<!-- end of tab3 -->
        </div> <!-- end of widget-content -->
		</form:form>
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
function validateVendorInformation(activeElement){

var cname = $('#companyName').val();
var cphone=$('#companyPhone').val();
var emailad=$('#companyEmail').val();
var addr=$('#address').val();
var cntry=$('#country').val();
var st=$('#state').val();
var dist=$('#district').val();
var name=$('#contactPersonsName').val();
var phone=$('#contactPersonsPhone').val();
var bname=$('#bankName').val();
var branch=$('#branchName').val();
var acount=$('#accountNumber').val();
var ifsc=$('#ifscCode').val();

if(activeElement.id == "vendor_info" || activeElement.id == "companyName" ){
	cname=validateNonEmpty(cname,"#p1","#companyName");
}if(activeElement.id == "vendor_info" || activeElement.id == "companyPhone" ){
	cphone=validateMobile(cphone,"#p2","#companyPhone");
}if(activeElement.id == "vendor_info" || activeElement.id == "companyEmail" ){
	emailad=validateEmail(emailad,"#p3","#companyEmail");
}if(activeElement.id == "vendor_info" || activeElement.id == "address" ){
	addr=validateField(addr,"#p4","#address");
}if(activeElement.id == "vendor_info" || activeElement.id == "country" ){
	cntry=validateDropdown(cntry,"#p5","#country");
}if(activeElement.id == "vendor_info" || activeElement.id == "state" ){
	st=validateDropdown(st,"#p6","#state");
}if(activeElement.id == "vendor_info" || activeElement.id == "district" ){
	dist=validateDropdown(dist,"#p7","#district");
}if(activeElement.id == "vendor_info" || activeElement.id == "contactPersonsName" ){
	name=validateCharactersOnly(name,"#p8","#contactPersonsName");
}if(activeElement.id == "vendor_info" || activeElement.id == "contactPersonsPhone" ){
	phone=validateMobile(phone,"#p9","#contactPersonsPhone");
}if(activeElement.id == "vendor_info" || activeElement.id == "bankName" ){
	bname=validateCharactersOnly(bname,"#p10","#bankName");
}if(activeElement.id == "vendor_info" || activeElement.id == "branchName" ){
	branch=validateCharactersOnly(branch,"#p11","#branchName");
}if(activeElement.id == "vendor_info" || activeElement.id == "accountNumber" ){
	acount=validateNonEmpty(acount,"#p12","#accountNumber");
}if(activeElement.id == "vendor_info" || activeElement.id == "ifscCode" ){
	ifsc=validateNonEmpty(ifsc,"#p13","#ifscCode");
}if(cname && cphone && emailad && addr && cntry && st && dist && name && phone && bname && branch && acount && ifsc){
	return true;
}else{
	return false;
}
}

function navigateToNextPage(){
	$('.btnNext').click(function(){
			$('.nav-tabs > .active').next('li').find('a').trigger('click');
		});

		$('.btnPrevious').click(function(){
			$('.nav-tabs > .active').prev('li').find('a').trigger('click');
		});
}

</script>     
     
     <script>
     populateCountries("country","state");
     </script>
<!-- Footer-part End -->
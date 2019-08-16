<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="com.ssdit.edu.entity.Divisions" %>
<%@ page import="com.ssdit.edu.entity.Standards" %>
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="viewStaff" title="staff list" class="tip-bottom">Add Staff</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
    	 <h2><spring:message code="lbl.page" text="Add New Staff" /></h2>
    	<br/>
       <h1>Staff Registration Form</h1>
    </div>
<!--End-Action boxes-->    

<!--Chart-box-->    

<!--End-Chart-box--> 
    <hr/>
    <div class="row-fluid" style="display:block;">
       <!-- end of span6 -->
      <!--<div class="span6">-->
	  <div class="span12">
         <!-- end of widget-box widget-chat -->
         <!-- end of widget-box -->
         <!-- end of accordion -->
         <!--  end of widget-box collapsible --->
		
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Personal Information</a></li>
              <li><a data-toggle="tab" href="#tab2">Education Details</a></li>
              <li><a data-toggle="tab" href="#tab3">Experience Details</a></li>
              <li><a data-toggle="tab" href="#tab4">Salary Details</a></li>
              <li><a data-toggle="tab" href="#tab5">Import</a></li>
            </ul>
         </div>
      
      	<%  List<Divisions> divisionsList = (List<Divisions>) request.getAttribute("divisionsList");
			List<Standards> standardsList = (List<Standards>) request.getAttribute("standardsList");
		%>
      
         <form:form id="staff_form" class="form-horizontal" action="/admin/staff" onSubmit="return validateFormDataBeforeSubmit(this);" method="post" modelAttribute="staffDTO"  enctype="multipart/form-data">
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Personal-information</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label class="control-label">Photo : </label>
										<div class="controls">
											<input type="file" name="photo" id="photo" accept=".png, .jpg, .jpeg"  onchange="return validatePersonalInformation(this);"/>
											<form:input type="hidden" name="photoField" id="photo" path="photoField" value="photoField"/>
										    <p id="p1"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Category : </label>
										<div class="controls">
										<form:select class="span8 mask text chosen-select" id="staffCategory" data-placeholder="select some category" onchange="return validatePersonalInformation(this);" path="staffCategory" >
											  <form:option value="None">Select Category</form:option>
											  <form:option value="School">School</form:option>
											  <form:option value="Hostel">Hostel</form:option>
											</form:select>
											<p id="p2"></p>
										</div>
								</div>
								
								<div class="control-group">
									  <label class="control-label">First Name : </label>
										<div class="controls">
											<form:input type="text" id="firstName" name="firstName" autocomplete="off" path="firstName" onkeyup="return validatePersonalInformation(this);" />
											<p id="p3"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Middle Name : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="middleName" autocomplete="off" id="middleName" path="middleName" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p4"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Last Name : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="lastName" autocomplete="off" id="lastName" path="lastName" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p5"></p>
										</div>
								</div>
								
								<div class="control-group">
									
									 <label class="control-label col-sm-2 requiredField" for="date">Date Of Birth : </label>
									
										<div class="controls">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar" style="display:none;"></i>
												
											<form:input class="form-control" id="dob" name="dob" type="date" path="dob" onchange="ageCount(); validatePersonalInformation(this);"/>
								            <p id="p6"></p>
											</div>
											</div>
										</div>
									 
								</div>
								<div class="control-group">
								<label class="control-label">Address : </label>
									<div class="controls">
										<form:textarea class="span11" name="address" id="address" path="address" autocomplete="off" onkeyup="return validatePersonalInformation(this);" />
										<p id="p7"></p>
									</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Email : </label>
										<div class="controls">
											<form:input type="email" class="span11" autocomplete="off" name="emailAddress" id="emailAddress" path="emailAddress" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p8"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Mobile Number : </label>
										<div class="controls">
											<form:input type="number" class="span11" name="phoneNumber" id="phoneNumber" path="phoneNumber" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p9"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Gender : </label>
										<div class="controls">
											<form:radiobutton  name="gender" id="gender" value="Male"   path="gender" onchange="return validatePersonalInformation(this);"/> Male &nbsp;&nbsp;
											<form:radiobutton  name="gender" id="gender" value="Female" path="gender" onchange="return validatePersonalInformation(this);"/> Female  
											<p id="p10"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Age : </label>
										<div class="controls">
										    <form:input type="text" class="span11" name="age" id="age" path="age" ReadOnly="true"/>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Aadhar Number :  </label>
										<div class="controls">
											<input type="text" class="span11" data-type="adhaar-number" autocomplete="off" id="adharNo" maxLength="14" name="adharNo" path="adharNo" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p11"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Languages Known : </label>
										<div class="controls">
											<form:checkbox   name="knownLang" id="knownLang" value="English" path="knownLang" onchange="return validatePersonalInformation(this);"/> English &nbsp;&nbsp;
											<form:checkbox   name="knownLang" id="knownLang" value="Hindi"   path="knownLang" onchange="return validatePersonalInformation(this);"/> Hindi &nbsp;&nbsp;
											<form:checkbox   name="knownLang" id="knownLang" value="Marathi" path="knownLang" onchange="return validatePersonalInformation(this);"/> Marathi
											<p id="p12"></p>
										</div>
								</div>
								
								
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:none;">
									<button type="submit" class="btn btn-success">Save</button>
								</div>
							
						</div>
					</div>
					<!-- end of widget-box -->
				</div><!-- end of span6 -->

				<!-- start SECOND FORM DESIGN  --->
				<div class="span6" style="display:block;">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Joining Information</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Joining Date : </label>
										<div class="controls">
											<form:input type="date" id="joining_date" class="span8 mask text" path="joiningDate" onchange="return validatePersonalInformation(this);"  />
											<p id="p13"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Assign Class : </label>
										<div class="controls">
											<form:select class="span8 mask text chosen-select" id="cls" data-placeholder="select some classes"  path="assignClass" multiple="true" onchange="return validatePersonalInformation(this);">
											  <% for(Standards std : standardsList) {%>
											  	<form:option value="<%= std.getId() %>"><%= std.getStandard() %></form:option>
											  <%} %>
											</form:select>
											<p id="p14"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Assign Division : </label>
										<div class="controls">
											<form:select class="span8 mask text chosen-select" id="div" data-placeholder="select some divisions"   path="assignDivision" multiple="true" onchange="return validatePersonalInformation(this);">
											  <form:option value="None">Select Division</form:option>
											  <%
											  	for(Divisions div : divisionsList){%>
											  		<form:option value="<%=div.getId() %>"><%=div.getDivision() %></form:option>
											  	<%} %>
											</form:select>
											<p id="p15"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Joining Type : </label>
										<div class="controls">
											<form:radiobutton  name="joiningPeriod" id="joiningPeriod" value="Temporary"   path="joiningPeriod" onchange="return validatePersonalInformation(this);"/> Temporary &nbsp;&nbsp;
											<form:radiobutton  name="joiningPeriod" id="joiningPeriod" value="Permanent" path="joiningPeriod" onchange="return validatePersonalInformation(this);"/> Permanent  
										    <p id="p16"></p>
										</div>
								</div>

								<div class="form-actions" style="display:block;">
									<!-- <button type="submit" class="btn btn-success">Save</button> -->
									<a class="btnNext"><button type="button" class="btn btn-success" onClick="validatePersonalInformation(this)" id="personal_info" > Next <i class="icon icon-arrow-right"></button></i></a>
								</div>
								
								
							
						</div>
					</div>
       <!-- end of widget-box -->
					</div> <!-- end of second span6 --->
			</div> <!-- end of tab1 div -->

            <div id="tab2" class="tab-pane">
			<!-- start Second tab form design -->
			    <div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Educational Details</h5>
						</div>
					<div class="widget-content nopadding">
						
							<div class="control-group">
								<label class="control-label">Qualification : </label>
									<div class="controls">
										<form:select class="span8 mask text " id="qualification" data-placeholder="select qualification" onchange="return validateEducationalInformation(this);" path="qualification" >
											  <form:option value="None">Select Qualification</form:option>
											  <form:option value="MSC">MSC</form:option>
											  <form:option value="BSC">BSC</form:option>
											  <form:option value="D.Ed">D.Ed</form:option>
											  <form:option value="B.Ed">B.Ed</form:option>
											  <form:option value="ME">ME</form:option>
											  <form:option value="BE">BE</form:option>
										</form:select>
										<p id="p17"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Institute : </label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="institute" id="institute" path="institute" onkeyup="return validateEducationalInformation(this);"/>
										<p id="p18"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Board : </label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="board" id="board" path="board" onkeyup="return validateEducationalInformation(this);"/>
										<p id="p19"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Marks/Grade : </label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="marks" id="marks" path="marks" onkeyup="return validateEducationalInformation(this);"/>
										<p id="p20"></p>
									</div>
							</div>
							
							<div class="form-actions" style="display:block;">
     							<a class="btnNext"><button type="button" class="btn btn-success" id="educational_info" onClick="validateEducationalInformation(this)">Next <i class="icon icon-arrow-right"></i></button></a>
								<a class="btnPrevious"><button type="button" class="btn btn-success">Previous <i class="icon icon-arrow-left"></i></button></a>
							</div>
							
						
					</div>
					</div>
      
       
				</div> <!-- end of span6 -->
				<!-- end of second form tab design -->
			
           </div><!-- end of tab2 -->
           <div id="tab3" class="tab-pane">
           <!-- start THIRD DESIGN FORM    -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Experience-details</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
								<label class="control-label">Period : </label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="totalWorkExperience" id="totalWorkExperience" onkeyup="return validateExperienceInformation(this);" path="totalWorkExperience"/>
									    <p id="p21"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Organization & Address : </label>
									<div class="controls">
										<form:textarea class="span11" name="organizationAddress" autocomplete="off" id="organizationAddress" onkeyup="return validateExperienceInformation(this);" path="organizationAddress" />
									    <p id="p22"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Designation : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="designation" autocomplete="off" id="designation" onkeyup="return validateExperienceInformation(this);" path="designation"/>
									    <p id="p23"></p>
									</div> 
								</div>

								<div class="control-group">
								<label class="control-label">Personal Achievements(if any) :</label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="achievements" onkeyup="return validateExperienceInformation(this);" path="achievements"/>
										<p id="p24"></p>
									</div>
								</div>
								

								<div class="control-group">
									<label class="control-label">Aadhar Card : </label>
										<div class="controls">
											<input type="file" name="adhar_card" id="adhar_card" accept=".png, .jpg, .jpeg, .pdf" onchange="return validateExperienceInformation(this);"/>
										    <p id="p25"></p>
										</div>
								</div>
								
								<div class="form-actions">
								
								<a class="btnNext"><button type="button" class="btn btn-success" id="experience_info" onClick="validateExperienceInformation(this)">Next <i class="icon icon-arrow-right"></i></button></a>	
								<a class="btnPrevious"><button type="button" class="btn btn-success">Previous <i class="icon icon-arrow-left"></i></button></a>
							</div>
							
						</div>
					</div>
				</div>
		   <!---  end THIRD DESIGN FORM   --->
			</div> <!-- end of tab3 -->
			
		
			<!-- start of tab4  Salary Details -->
			<div id="tab4" class="tab-pane">
								<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Salary-details</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
								<label class="control-label">Basic Salary : </label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="basicSalary" id="basicSalary" onkeyup="return validateSalaryInformation(this);" path="basicSalary"/>
									    <p id="p26"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Dearness Allowance : </label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="dearnessAllowance" id="dearnessAllowance" onkeyup="return validateSalaryInformation(this);" path="dearnessAllowance"/>
									    <p id="p27"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">House Rent Allowance : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="houseRentAllowance" autocomplete="off" id="houseRentAllowance" onkeyup="return validateSalaryInformation(this);" path="houseAllowance"/>
									    <p id="p28"></p>
									</div> 
								</div>

								<div class="control-group">
								<label class="control-label">Incentive Allowance :</label>
									<div class="controls">
										<form:input type="text" class="span11" autocomplete="off" name="incentiveAllowance" id="incentiveAllowance" onkeyup="return validateSalaryInformation(this);" path="incentiveAllowance"/>
										<p id="p29"></p>
									</div>
								</div>
								

								<div class="control-group">
									<label class="control-label">Total salary : </label>
										<div class="controls">
											<form:input type="text" class="span11" autocomplete="off" name="totalSalary" id="totalSalary" onkeyup="return validateSalaryInformation(this);" path="totalSalary" disbaled="true" value="0"/>
										    <p id="p30"></p>
										</div>
								</div>
								
								<div class="form-actions">
								<input type="submit" class="btn btn-success" id="salary_info" onClick="validateSalaryInformation(this)">	
								<a class="btnPrevious"><button type="button" class="btn btn-success">Previous <i class="icon icon-arrow-left"></i></button></a>
							</div>
							
						</div>
					</div>
				</div>				
			</div>
			<!-- end of tab 4   -->
			</form:form>
		
			<div id="tab5" class="tab-pane">
           <!-- start FOURTH DESIGN FORM    -->
				<div class="span6">
					<div class="widget-box">
						<form:form id="staff_import" class="form-horizontal" action="/admin/staff/import" onSubmit="validateStaffInformation(this);" method="post" enctype="multipart/form-data">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Import-details</h5>
						</div>
						<div class="widget-content nopadding">
								<div class="control-group">
									<label class="control-label">Upload file : </label>
										<div class="controls">
											<input type="file" name="staffFile" id="staffFile" accept=".csv" onchange="validateStaffInformation(this);">
											<p id="p26"></p>
										</div>
								</div>							
								<div class="form-actions">
								<input type="submit" class="btn btn-success" id="staff_info" value="Import" onClick="validateStaffInformation(this)">
			
								</div>
						</div>
						</form:form>
					</div>
				</div>
			<!---  end FOURTH DESIGN FORM   --->
			</div>
        </div> <!-- end of widget-content -->
         
		<!-- </form> -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->


<!--end-main-container-part-->
<style>

	#header h1{
		overflow:inherit !important;
		line-height:0px !important;
		top:35px !important;
		font-size:32.5px !important;
	}
	
	.button-subscribe {
	border-radius: 25px;
    padding: 0 10px;
}
	.highlight-error {
		border-color: red;
	}
	#errorbox {
		color: red;
	}
	#fname-error {
		color: red;
	}
	#mname-error {
		color: red;
	}
	#lname-error {
		color: red;
	}
	#adhar_no-error{
	    color: red;
	}
	#guardian_name-error{
	    color: red;
	}
	#guardian_last_name-error{
	    color: red;
	}
	#adhar_card-error{
		color: red;
	}
	#birth_certificate-error{
		color: red;
	}
	#photo-error{
	   color: red;
	}
	#datepicker-error{
	   color: red;
	}
	#category-error{
	   color: red;
	}
	#caste-error{
	   color: red;
	}
	#guardian_middle_name-error{
	   color: red;
	}
	#mobile_number-error{
	   color: red;
	}
	#p_address-error{
	   color: red;
	}
	#school_LC-error{
	   color: red;
	}
	.goog-te-gadget .goog-te-combo{
		margin-left:65% !important;
	}
	.goog-logo-link{
		display:none;
	}
	.goog-te-gadget{
		/*color:#2E363F !important;*/
		color: #fff !important;
	}
	#google_translate_element{
		margin-right: -120%;
		}
	 p {
         font-size:12px;
         color:red;
       }
       
   	#cls{
       	 width: 150px;
         height: 25px;
   		border: 1px solid #ccc;
   		margin-top:0.8%;
  		 margin-left:0.7%;
   		border-radius:6px;
       	} 
     #btn{
        margin-left:90%;
        }  	  	
</style>





<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
  <!--  Script for datepicker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


<script type="text/javascript">

function validatePersonalInformation(activeElement){
var photos=$('#photo').val(); 
var cat=$('#staffCategory').val();
var firstname = $('#firstName').val();
var middlename = $('#middleName').val();
var lastname = $('#lastName').val();
var dateofbirth=$('#dob').val();
var addr=$('#address').val();
var emailad=$('#emailAddress').val();
var mobile=$('#phoneNumber').val();
var radioValue = $("input[name='gender']:checked").val();
var adhar=$('#adharNo').val(); 
var check = $('input[name="knownLang"]:checked').val();
var joining=$('#joining_date').val();
var clss=$('#cls').val();
var division=$('#div').val();
var jperiod = $("input[name='joiningPeriod']:checked").val();

if(activeElement.id == "personal_info" || activeElement.id == "photo" ){
	photos=validateDocument(photos,"#p1","#photo");
}if(activeElement.id == "personal_info" || activeElement.id == "staffCategory" ){
	cat=validateDropdown(cat,"#p2","#staffCategory");
}if(activeElement.id == "personal_info" || activeElement.id == "firstName" ){
	firstname=validateCharactersOnly(firstname,"#p3","#firstName");
}if(activeElement.id == "personal_info" || activeElement.id == "middleName" ){
	middlename=validateCharactersOnly(middlename,"#p4","#middleName");
}if(activeElement.id == "personal_info" || activeElement.id == "lastName" ){
	lastname=validateCharactersOnly(lastname,"#p5","#lastName");
}if(activeElement.id == "personal_info" || activeElement.id == "dob" ){
	dateofbirth=validateNotEmpty(dateofbirth,"#p6","#dob");
}if(activeElement.id == "personal_info" || activeElement.id == "address" ){
	addr=validateField(addr,"#p7","#address");
}if(activeElement.id == "personal_info" || activeElement.id == "emailAddress" ){
	emailad=validateEmail(emailad,"#p8","#emailAddress");
}if(activeElement.id == "personal_info" || activeElement.id == "phoneNumber" ){
	mobile=validateMobile(mobile,"#p9","#phoneNumber");
}if(activeElement.id == "personal_info" || activeElement.id == "gender" ){
	radioValue=validateRadio(radioValue,"#p10","#gender");
}if(activeElement.id == "personal_info" || activeElement.id == "adharNo" ){
	adhar=validateAdhar(adhar,"#p11","#adharNo");
}if(activeElement.id == "personal_info" || activeElement.id == "knownLang" ){
	check=validateRadio(check,"#p12","#knownLang");
}if(activeElement.id == "personal_info" || activeElement.id == "joining_date" ){
	joining=validateJoining(joining,"#p13","#joining_date");
}if(activeElement.id == "personal_info" || activeElement.id == "cls" ){
	clss=validateDropdown(clss,"#p14","#cls");
	
}if(activeElement.id == "personal_info" || activeElement.id == "div" ){
	division=validateDropdown(division,"#p15","#div");
}if(activeElement.id == "personal_info" || activeElement.id == "joiningPeriod" ){
	jperiod=validateRadio(jperiod,"#p16","#joiningPeriod");
}
if(photos && cat && firstname && middlename && lastname && dateofbirth && addr && emailad && mobile && radioValue && adhar && check && joining && clss && division && jperiod){
	return true;
}
}

function validateEducationalInformation(activeElement){
	
	var qual=$('#qualification').val();
	var inst=$('#institute').val();
	var brd=$('#board').val();
	var mrks=$('#marks').val();

	if(activeElement.id == "educational_info" || activeElement.id == "qualification" ){
		qual=validateDropdown(qual,"#p17","#qualification");
	}if(activeElement.id == "educational_info" || activeElement.id == "institute" ){
		inst=validateNonEmpty(inst,"#p18","#institute");
	}if(activeElement.id == "educational_info" || activeElement.id == "board" ){
		brd=validateNonEmpty(brd,"#p19","#board");
	}if(activeElement.id == "educational_info" || activeElement.id == "marks" ){
		mrks=validateNonEmpty(mrks,"#p20","#marks");
	}
	if(qual && inst && brd && mrks){
		return true;
	}
}

function validateExperienceInformation(activeElement){
	var period=$('#totalWorkExperience').val();
	var addr=$('#organizationAddress').val();
	var desg=$('#designation').val();
	var pachievements=$('#achievements').val();
	var adhar=$('#adhar_card').val();
	
	
	if(activeElement.id == "experience_info" || activeElement.id == "totalWorkExperience" ){
		period=validateNonEmpty(period,"#p21","#totalWorkExperience");
	}if(activeElement.id == "experience_info" || activeElement.id == "organizationAddress" ){
		addr=validateNonEmpty(addr,"#p22","#organizationAddress");
	}if(activeElement.id == "experience_info" || activeElement.id == "designation" ){
		desg=validateNonEmpty(desg,"#p23","#designation");
	}if(activeElement.id == "experience_info" || activeElement.id == "achievements" ){
		pachievements=validateNonEmpty(pachievements,"#p24","#achievements");
	}if(activeElement.id == "experience_info" || activeElement.id == "adhar_card" ){
		adhar=validateDocument(adhar,"#p25","#adhar_card");
	}
	if(period && addr && desg && pachievements && adhar ){
		return true;
	}else{
		return false;
	}

}

function validateSalaryInformation(activeElement){
	var basicSalary=$('#basicSalary').val();
	var dearnessAllowance=$('#dearnessAllowance').val();
	var houseRentAllowance=$('#houseRentAllowance').val();
	var incentiveAllowance=$('#incentiveAllowance').val();
	
	
	if(activeElement.id == "salary_info" || activeElement.id == "basicSalary" ){
		basicSalary=validateDigitOnly(basicSalary,"#p26","#basicSalary");
	}if(activeElement.id == "salary_info" || activeElement.id == "dearnessAllowance" ){
		dearnessAllowance=validateDigitOnly(dearnessAllowance,"#p27","#dearnessAllowance");		
	}if(activeElement.id == "salary_info" || activeElement.id == "houseRentAllowance" ){
		houseRentAllowance=validateDigitOnly(houseRentAllowance,"#p28","#houseRentAllowance");

	}if(activeElement.id == "salary_info" || activeElement.id == "incentiveAllowance" ){
		incentiveAllowance=validateDigitOnly(incentiveAllowance,"#p29","#incentiveAllowance");
	}
	
	var totalSalary = 0;
	if(document.getElementById("basicSalary").value !="" && !isNaN(document.getElementById("basicSalary").value)){
		totalSalary = totalSalary + parseInt(document.getElementById("basicSalary").value);
	}
	if(document.getElementById("dearnessAllowance").value !="" && !isNaN(document.getElementById("dearnessAllowance").value)){
		totalSalary = totalSalary + parseInt(document.getElementById("dearnessAllowance").value);
	}
	if(document.getElementById("houseRentAllowance").value !="" && !isNaN(document.getElementById("houseRentAllowance").value)){
		
		totalSalary = totalSalary + parseInt(document.getElementById("houseRentAllowance").value);
	}
	if(document.getElementById("incentiveAllowance").value !="" && !isNaN(document.getElementById("incentiveAllowance").value)){
		
		totalSalary = totalSalary + parseInt(document.getElementById("incentiveAllowance").value);
		
	}
	document.getElementById("totalSalary").value = totalSalary;
	
	
	if(basicSalary && dearnessAllowance && houseRentAllowance && incentiveAllowance){
		return true;
	}else{
		return false;
	}
	validateDigitOnly
} 

function validateFormDataBeforeSubmit(activeElement){
	var personalInformation = false;
	var educationalInformation = false;
	var experienceInformation = false;
	var salaryInformation = false;
	
	if(validatePersonalInformation(activeElement)){
		personalInformation = true;
	}
	else{
		alert("Please provide mandatory personal information");
		return false;
	}
	if(validateEducationalInformation(activeElement)){
		educationalInformation = true;
	}else{
		alert("Please provide mandatory educational information");
		return false;
	}
	if(validateExperienceInformation(activeElement)){
		experienceInformation = true;
	}else{
		alert("Please provide mandatory educational information");
		return false;
	}
	if(validateSalaryInformation(activeElement)){
		salaryInformation = true;
	}else{
		alert("Please provide mandatory Salary information");
		return false;
	}
	if(personalInformation && educationalInformation && experienceInformation && salaryInformation){
		return true;
	}else{
		return false;
	}
}

function validateStaffInformation(activeElement){
	var imprt=$('#staffFile').val();
	
	if(activeElement.id == "staff_info" || activeElement.id == "staffFile" ){
		validateDocument(imprt,"#p26","#staffFile");
	}
}

function ageCount() {

    var date1 = new Date();
    var dob = document.getElementById("dob").value;
    var date2 = new Date(dob);
  
        var y1 = date1.getFullYear(); //getting current year
        var y2 = date2.getFullYear(); //getting dob year
        var age = y1 - y2;           //calculating age 
        if (date1.getMonth() < date2.getMonth() || 
        		date1.getMonth() == date2.getMonth() && date1.getDate() < date2.getDate()) {
                age--;
            }
        document.getElementById("age").value = age;

}

$(document).ready(function () {
    $('#btn').on('click', function () {
        $('#container')
            .clone()
            .appendTo("body");
    });
});

$('.btnNext').click(function(){
	$('.nav-tabs > .active').next('li').find('a').trigger('click');
});

$('.btnPrevious').click(function(){
	$('.nav-tabs > .active').prev('li').find('a').trigger('click');
});

</script>

<!-- Script for Next and Previous Buttons -->
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- End Script for Next and Previous button -->

<!--  Script for datepicker -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
	$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})
</script>
<!--  End Script for datepicker -->
 <!--  Script for select multiple attribute  -->
<script src="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.jquery.min.js"></script>
<link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>

<script>
$(".chosen-select").chosen({
	  no_results_text: "Oops, nothing found!"
	})
</script>

<!-- End script for select multiple attribute -->

<!--end-Footer-part-->
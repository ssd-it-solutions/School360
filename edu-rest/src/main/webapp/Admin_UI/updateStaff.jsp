<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
 .employee_photo{
	margin-top:20px;
	margin-left:20px;
}
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
<!--main-container-part-->
<div id="content">
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/staff" title="staff list" class="tip-bottom">Staff List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Update Staff Registration Form</h1>
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
              <li class="active"><a data-toggle="tab" href="#tab1">Update Personal Information</a></li>
              <li><a data-toggle="tab" href="#tab2">Update Education Details</a></li>
              <li><a data-toggle="tab" href="#tab3">Update Experience/Salary Details</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab4">Update Salary Details</a></li>
            </ul>
         </div>
         <%  StaffDTO staff = (StaffDTO) request.getAttribute("EmployeeDetails");%>
        <form:form id="staff_form" class="form-horizontal" action="/admin/modifyStaff" modelAttribute="staffDTO" method="post"  onSubmit="return validateExperienceInformation(this);" enctype="multipart/form-data">
		<!--   <form action="#" method="post" class="form-horizontal"> -->
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Update Personal-information</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label class="control-label">Photo :</label>
										<div class="controls">
											<% String photoStringBase64 = new String(staff.getPhotoField(),"UTF-8");%>
											<input type="file" name="photo" id="photo" path="photoField" value="<%=staff.getPhotoField() %>" onchange="return validatePersonalInformation(this);"/>
											<img class="profile-user-img img-responsive img-circle employee_photo" src="data:image/jpeg;base64,<%= photoStringBase64 %>">
											<p id="p1"></p>
										</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Category :</label>
										<div class="controls">
											<form:select class="span8 mask text" id="staffCategory" name="staffCategory" path="staffCategory" value="<%=staff.getStaffCategory() %>" onchange="return validatePersonalInformation(this);">
											  	<form:option value="None" items="<%=staff.getStaffCategory() %>">  Select Category  </form:option>
											  	<form:option value="School" items="<%=staff.getStaffCategory() %>"> School  </form:option>
											  	<form:option value="Hostel" items="<%=staff.getStaffCategory() %>">  Hostel  </form:option>
											</form:select>
											<p id="p2"></p>
										</div>
								</div>
								
								
								<div class="control-group">
									<label class="control-label">First Name :</label>
										<div class="controls">
											<form:input type="text" id="firstName" autocomplete="off" name="firstName" value="<%=staff.getFirstName() %>" path="firstName" onkeyup="return validatePersonalInformation(this);"/>
											<form:input type="hidden" id="id" name="id" value="<%=staff.getId() %>" path="id"  />
											<p id="p3"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Middle Name :</label>
										<div class="controls">
											<form:input type="text" class="span11" name="middleName" id="middleName" value="<%=staff.getMiddleName() %>" path="middleName" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p4"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Last Name :</label>
										<div class="controls">
											<form:input type="text" class="span11" name="lastName" autocomplete="off" id="lastName" value="<%=staff.getLastName() %>" path="lastName" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p5"></p>
										</div>
								</div>
								<div class="control-group">
								<label class="control-label">Address : </label>
									<div class="controls">
										<form:textarea class="span11" name="address" id="address" autocomplete="off" path="address" value="<%=staff.getAddress() %>" onkeyup="return validatePersonalInformation(this);"/>
										<p id="p6"></p>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Age :</label>
										<div class="controls">
											<form:input type="number" class="span11" name="age" id="age" value="<%=staff.getAge() %>" path="age" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Email :  </label>
										<div class="controls">
											<form:input type="email" class="span11" name="emailAddress" id="emailAddress" autocomplete="off" path="emailAddress" value="<%=staff.getEmailAddress() %>" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p7"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Mobile Number :  </label>
										<div class="controls">
											<form:input type="number" class="span11" name="phoneNumber" id="phoneNumber" autocomplete="off" path="phoneNumber" value="<%=staff.getPhoneNumber() %>" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p8"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Gender :  </label>
										<div class="controls">
											<!-- <form:radiobutton   class="" name="gender" id="gender" path="gender" value="Male" /> Male &nbsp;&nbsp;
											<form:radiobutton   class="" name="gender" id="gender" path="gender" value="Female"/> Female --> 
											<form:radiobutton   class="" name="gender" id="gender" path="gender" value="Male" checked="<%= staff.getGender().equalsIgnoreCase(\"Male\")?true:false  %>" onchange="return validatePersonalInformation(this);"/> Male &nbsp;&nbsp;
											<form:radiobutton   class="" name="gender" id="gender" path="gender" value="Female" checked="<%= staff.getGender().equalsIgnoreCase(\"Female\")?true:false  %>" onchange="return validatePersonalInformation(this);"/> Female 
										    <p id="p9"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">DOB :</label>
										<div class="controls">
											<form:input type="date" id="dob" class="span8 mask text" name="date" value="<%=staff.getDob() %>" path="dob" onchange="return validatePersonalInformation(this);"/>
											<p id="p10"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Aadhar Number :</label>
										<div class="controls">
											<form:input type="number" class="span11" name="adharNo" id="adharNo" autocomplete="off" data-type="adhaar-number" maxLength="14" value="<%=staff.getAdharNo() %>" path="adharNo" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p11"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Languages Known :</label>
										<div class="controls">
											<form:checkbox   name="knownLang" id="knownLang" value="English" path="knownLang" onchange="return validatePersonalInformation(this);"/> English &nbsp;&nbsp;
											<form:checkbox   name="knownLang" id="knownLang" value="Hindi"   path="knownLang" onchange="return validatePersonalInformation(this);"/> Hindi &nbsp;&nbsp;
											<form:checkbox   name="knownLang" id="knownLang" value="Marathi" path="knownLang" onchange="return validatePersonalInformation(this);"/> Marathi
											<p id="p12"></p>
										</div>
								</div>
								
								
						<!-- end of personal information form details   -->
								
							
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->
	<!--- end of FIRST FORM DESIGN  -->

    <!-- start SECOND FORM DESIGN  --->
				<div class="span6" style="display:block;">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Joining Information</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Joining Date</label>
										<div class="controls">
											<form:input type="date" id="joining_date" class="span8 mask text" value="<%=staff.getJoiningDate() %>" path="joiningDate" onchange="return validatePersonalInformation(this);"/>
											<p id="p13"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Assign Class</label>
										<div class="controls">
											<form:select class="span8 mask text chosen-select" id="cls" data-placeholder="select some classes" value="<%=staff.getAssignClass() %>" path="assignClass" onchange="return validatePersonalInformation(this);">
											  <form:option value="None">Select Class</form:option>
											  <form:option value="First">First</form:option>
											  <form:option value="Second">Second</form:option>
											  <form:option value="Third">Third</form:option>
											  <form:option value="Fourth">Fourth</form:option>
											  <form:option value="Fifth">Fifth</form:option>
											  <form:option value="Sixth">Sixth</form:option>
											  <form:option value="Seventh">Seventh</form:option>
											  <form:option value="Eighth">Eighth</form:option>
											  <form:option value="Ninth">Ninth</form:option>
											  <form:option value="Tenth">Tenth</form:option>
											</form:select>
											<p id="p14"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Assign Division</label>
										<div class="controls">
											<form:select class="span8 mask text chosen-select" id="div" data-placeholder="select some divisions" value="<%=staff.getAssignDivision() %>" path="assignDivision" onchange="return validatePersonalInformation(this);">
											  <form:option value="None">Select Division</form:option>
											  <form:option value="A">A</form:option>
											  <form:option value="B">B</form:option>
											  <form:option value="C">C</form:option>
											  <form:option value="D">D</form:option>
											</form:select>
											<p id="p15"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Joining Type :  </label>
										<div class="controls">
											<form:radiobutton   class=""  name="joiningPeriod" id="joiningPeriod" path="joiningPeriod" value="Temporary" checked="<%= staff.getJoiningPeriod() %>" onchange="return validatePersonalInformation(this);"/> Temporary &nbsp;&nbsp;
											<form:radiobutton   class=""  name="joiningPeriod" id="joiningPeriod" path="joiningPeriod" value="Permanent" checked="<%= staff.getJoiningPeriod() %>" onchange="return validatePersonalInformation(this);"/> Permanent 
										    <p id="p16"></p>
										</div>
								</div>
								<div class="form-actions" style="display:block;">
									<!-- <button type="submit" class="btn btn-success">Save</button> -->
					           <a class="btnNext"><button type="button" class="btn btn-success" id="personal_info" onClick="validatePersonalInformation(this)"> Next <i class="icon icon-arrow-right"></i></button></a>
								</div>
								
							
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div> <!-- end of second span6 --->
	<!--- end of SECOND FORM DESIGN  -->
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
								<label class="control-label">Qualification :</label>
									<div class="controls">
										<form:select class="span8 mask text" name="qualification" id="qualification" value="<%=staff.getQualification() %>" onchange="return validateEducationalInformation(this);" path="qualification">
											  <form:option value="None">Select Qualification</form:option>
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
								<label class="control-label">Institute :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="institute" id="institute" autocomplete="off" value="<%=staff.getInstitute() %>"  path="institute" onchange="return validateEducationalInformation(this);"/>
										<p id="p18"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Board :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="board" id="board" autocomplete="off" value="<%=staff.getBoard() %>" path="board" onchange="return validateEducationalInformation(this);"/>
										<p id="p19"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Marks/Grade :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="marks" id="marks" autocomplete="off" value="<%=staff.getMarks() %>"  path="marks" onchange="return validateEducationalInformation(this);"/>
										<p id="p20"></p>
									</div>
							</div>

							<div class="form-actions">
								<!-- <button type="submit" class="btn btn-success">Update</button> -->
								<a class="btnNext"><button type="button" class="btn btn-success" id="educational_info"  onClick="validateEducationalInformation(this)" >Next <i class="icon icon-arrow-right"></i></button></a>
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
								<label class="control-label">Period :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="totalWorkExperience" autocomplete="off" id="totalWorkExperience" value="<%=staff.getTotalWorkExperience() %>" path="totalWorkExperience" onkeyup="return validateExperienceInformation(this);"/>
									    <p id="p21"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Organization & Address :</label>
									<div class="controls">
										<form:textarea class="span11" name="organizationAddress" id="organizationAddress" autocomplete="off" path="organizationAddress" value="<%=staff.getOrganizationAddress() %>" onkeyup="return validateExperienceInformation(this);"/>
									    <p id="p22"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Designation :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="designation" id="designation" autocomplete="off" value="<%=staff.getDesignation() %>"  path="designation" onkeyup="return validateExperienceInformation(this);"/>
									    <p id="p23"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Personal Achievements(if any) :</label>
									<div class="controls">
										<form:input type="text" class="span11" id="achievements" name="achievements" autocomplete="off" value="<%=staff.getAchievements() %>" path="achievements" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p24"></p>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Aadhar Card :</label>
										<div class="controls">
											<input type="file" name="adhar_card" id="adhar_card"  value="<%=staff.getAdharCardField() %>" accept=".png, .jpg, .jpeg, .pdf" onchange="return validateExperienceInformation(this);"/>
											<p id="p25"></p>
										</div>
								</div>
								
								<div class="form-actions">
									<!-- <button type="submit" class="btn btn-success">Update</button> -->
									<!--  <a class="btnNext"><button type="button" class="btn btn-success">Next <i class="icon icon-arrow-right"></button></i></a> -->
									<!-- <a class="btnPrevious"><button type="button" class="btn btn-success" >Previous <i class="icon icon-arrow-left"></button></i></a>-->
									<!--  <input type="submit" class="btn btn-success" value="Save" id="experience_info" style="float:right;" /> -->
								</div>
							
						</div>
					</div>
				</div>
		   <!---  end THIRD DESIGN FORM   --->
		    <!-- start Salary DESIGN FORM    -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>SalaryStructure-details</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
								<label class="control-label">Month : </label>
									<div class="controls">
										<form:select class="span8 mask text" id="salary_month" name="salaryMonth" path="salaryMonth" value="<%=staff.getSalaryMonth() %>" onchange="return validateExperienceInformation(this);">
													<form:option value="None">--- Select Month ---</form:option>
													<form:option value="April">April - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="June">June - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="July">July - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="August">August - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="September">September - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="October">October - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="November">November - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="December">December - <script>document.write(new Date().getFullYear()- 2);</script></form:option>
													<form:option value="January">January - <script>document.write(new Date().getFullYear()- 1);</script></form:option>
													<form:option value="February">February - <script>document.write(new Date().getFullYear()- 1);</script></form:option>
													<form:option value="March">March - <script>document.write(new Date().getFullYear()- 1);</script></form:option>												
										</form:select>
										<p id="p26"></p>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Basic Salary : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="basicSalary" autocomplete="off" id="basicSalary" value="<%=staff.getBasicSalary() %>" path="basicSalary" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p27"></p>
									</div>
								</div>
								
								<div class="control-group">
								<label class="control-label">Dearness allowance : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="dearnessAllowance" autocomplete="off" id="dearnessAllowance" value="<%=staff.getDearnessAllowance() %>" path="dearnessAllowance" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p28"></p>
									</div> 
								</div>

							   <div class="control-group">
								<label class="control-label">House rent allowance :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="houseAllowance" autocomplete="off" id="houseAllowance" value="<%=staff.getHouseAllowance() %>" path="houseAllowance" onkeyup="return validateExperienceInformation(this);" />
										<p id="p29"></p>
									</div>
								</div>
								
								<div class="control-group">
								<label class="control-label">Incentive allowance/Others :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="incentiveAllowance" autocomplete="off" id="incentiveAllowance" value="<%=staff.getIncentiveAllowance() %>" path="incentiveAllowance" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p30"></p>
									</div>
								</div>	
								
								<div class="control-group">
								<label class="control-label">Total Salary :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="totalSalary" autocomplete="off" id="totalSalary" value="<%=staff.getTotalSalary() %>" path="totalSalary" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p31"></p>
									</div>
								</div>			
								
								<div class="control-group">
								<label class="control-label">Cut :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="cutSalary" id="cutSalary" autocomplete="off" value="<%=staff.getCutSalary() %>" path="cutSalary" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p32"></p>
									</div>
								</div>	
								
								<div class="control-group">
								<label class="control-label">Net payable :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="netPayable" autocomplete="off" id="netPayable" value="<%=staff.getNetPayable() %>" path="netPayable" onkeyup="return validateExperienceInformation(this);"/>
										<p id="p33"></p>
									</div>
								</div>	
								<div class="form-actions" style="display:block;">
									<!-- <button type="submit" class="btn btn-success" >Save</button> -->
									<input type="submit" class="btn btn-success" value="Update" id="experience_info"  onClick="validateExperienceInformation(this)" style="float:right;">
								</div>
									
						</div>
					</div>
				</div>
		   <!---  end Salary DESIGN FORM   --->
			</div> <!-- end of tab3 -->
			
        </div> <!-- end of widget-content -->
        </form:form>
       
		<!--  </form> -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>

<!--end-main-container-part-->

<!--Footer-part-->
<%@ include file="../PageParts/footer.jsp" %>
<!-- Script for Next and Previous Buttons -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
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
}if(activeElement.id == "personal_info" || activeElement.id == "address" ){
	addr=validateField(addr,"#p6","#address");
}if(activeElement.id == "personal_info" || activeElement.id == "emailAddress" ){
	emailad=validateEmail(emailad,"#p7","#emailAddress");
}if(activeElement.id == "personal_info" || activeElement.id == "phoneNumber" ){
	mobile=validateMobile(mobile,"#p8","#phoneNumber");
}if(activeElement.id == "personal_info" || activeElement.id == "gender" ){
	radioValue=validateRadio(radioValue,"#p9","#gender");
}if(activeElement.id == "personal_info" || activeElement.id == "dob" ){
	dateofbirth=validateNotEmpty(dateofbirth,"#p10","#dob");
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
}if(photos && cat && firstname && middlename && lastname && dateofbirth && addr && emailad && mobile && radioValue && adhar && check && joining && clss && division && jperiod){
	navigateToNextPage();
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
	}if(qual && inst && brd && mrks){
		navigateToNextPage();
	}
}

function validateExperienceInformation(activeElement){
	var period=$('#totalWorkExperience').val();
	var addr=$('#organizationAddress').val();
	var desg=$('#designation').val();
	var pachievements=$('#achievements').val();
	var adhar=$('#adhar_card').val();
	var month=$('#salary_month').val();
	var basic=$('#basicSalary').val();
	var dearness=$('#dearnessAllowance').val();
	var house=$('#houseAllowance').val();
	var incentive=$('#incentiveAllowance').val();
	var total=$('#totalSalary').val();
	var cut=$('#cutSalary').val();
	var net=$('#netPayable').val();

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
	}if(activeElement.id == "experience_info" || activeElement.id == "salary_month" ){
		month=validateDropdown(month,"#p26","#salary_month");
	}if(activeElement.id == "experience_info" || activeElement.id == "basicSalary" ){
		basic=validateNonEmpty(basic,"#p27","#basicSalary");
	}if(activeElement.id == "experience_info" || activeElement.id == "dearnessAllowance" ){
		dearness=validateNonEmpty(dearness,"#p28","#dearnessAllowance");
	}if(activeElement.id == "experience_info" || activeElement.id == "houseAllowance" ){
		house=validateNonEmpty(house,"#p29","#houseAllowance");
	}if(activeElement.id == "experience_info" || activeElement.id == "incentiveAllowance" ){
		incentive=validateNonEmpty(incentive,"#p30","#incentiveAllowance");
	}if(activeElement.id == "experience_info" || activeElement.id == "totalSalary" ){
		total=validateNonEmpty(total,"#p31","#totalSalary");
	}if(activeElement.id == "experience_info" || activeElement.id == "cutSalary" ){
		cut=validateNonEmpty(cut,"#p32","#cutSalary");
	}if(activeElement.id == "experience_info" || activeElement.id == "netPayable" ){
		net=validateNonEmpty(net,"#p33","#netPayable");
	}if(period && addr && desg && pachievements && adhar && month && basic && dearness && house && incentive && total && cut && net){
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
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- End Script for Next and Previous button -->
 <!--  Script for select multiple attribute  -->
<script src="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.jquery.min.js"></script>
<link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>

<script>
$(".chosen-select").chosen({
	  no_results_text: "Oops, nothing found!"
	})
</script>
<style>
.chosen-container-multi{width:205px;}
</style>
<!-- End script for select multiple attribute -->

<!--end-Footer-part-->
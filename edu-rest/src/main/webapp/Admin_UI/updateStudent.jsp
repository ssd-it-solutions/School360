<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<!-- For datepicker --->
<link rel="stylesheet" href="https://formden.com/static/cdn/bootstrap-iso.css" />
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
    <div id="breadcrumb"> <a href="login" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/students" title="Student List" class="current">Student Management</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Update Student Admission Form</h1>
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
              <li><a data-toggle="tab" href="#tab2">Update Guardian Details</a></li>
              <li><a data-toggle="tab" href="#tab3">Update Document Details</a></li>
            </ul>
         </div>
		 <!--  <form name="student_form" class="form-horizontal" id="stud_form">-->
		   <%  StudentDTO student = (StudentDTO) request.getAttribute("StudentDetails");%>
		 <form:form id="stud_form" class="form-horizontal" action="/admin/modifyStudent"  onSubmit="return validateStudInformation(this);"  method="post" modelAttribute="studentDTO"  enctype="multipart/form-data">
		 <!--<form name="student_form" class="form-horizontal" id="stud_form"> -->
         <div class="widget-content tab-content">
		 
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Personal-information</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label class="control-label">Photo : </label>
										<div class="controls">
										<% if(null != student.getPhotoField()){
											String photoStringBase64 = new String(student.getPhotoField(),"UTF-8");%>
											<input type="file" name="photo" path="photoField" id="photo" value="<%=student.getPhotoField() %>" onchange="return validatePersonalInformation(this);"/>
											<img class="profile-user-img img-responsive img-circle employee_photo" src="data:image/jpeg;base64,<%= photoStringBase64 %>">
											<p id="p1"></p>
										<%	}	else {%>
										<input type="file" name="photo" path="photoField" id="photo" value="<%=student.getPhotoField() %>" onchange="return validatePersonalInformation(this);"/>								
										<p id="p1"></p>
										<%}%>    
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Academic Year : </label>
										<div class="controls">
											<form:select class="span8 mask text" id="academicYear" name="academicYear" path="academicYear" value="<%=student.getAcademicYear() %>" >
												 <form:option value="Select Academic Year">Select Academic Year</form:option>
											</form:select>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Reg.No :</label>
										<div class="controls">
											<form:input type="text" class="span11" placeholder="Auto" path="registerNumber" value="<%=student.getRegisterNumber() %>" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">First Name : </label>
										<div class="controls">
											<form:input type="text" class="span11"  id="firstName" name="firstName" autocomplete="off" path="firstName" value="<%=student.getFirstName() %>" onkeyup="return validatePersonalInformation(this);"/>
											<form:input type="hidden" id="id" name="id" value="<%=student.getId() %>" path="id"  />
											<p id="p2"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Middle Name : </label>
										<div class="controls">
											<form:input type="text" class="span11" id="middleName" name="middleName" autocomplete="off" path="middleName" value="<%=student.getMiddleName() %>" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p3"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Last Name : </label>
										<div class="controls">
											<form:input type="text" class="span11"  id="lastName" name="lastName" autocomplete="off" path="lastName" value="<%=student.getLastName() %>" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p4"></p>
										</div>
								</div>
								<div class="control-group">
									
										<label class="control-label col-sm-2 requiredField" for="date">Date Of Birth : </label>
									
										<div class="controls">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar" style="display:none;"></i>
													<form:input class="form-control" id="dob" name="dob" placeholder="MM/DD/YYYY" type="date" path="dob" value="<%=student.getDob() %>" onchange="return validatePersonalInformation(this);"/>
												    <p id="p5"></p>
												</div>
											</div>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Gender : </label>
										<div class="controls">
											<form:radiobutton  name="gender" id="gender" value="Male"   path="gender" checked="<%= student.getGender() %>" onchange="return validatePersonalInformation(this);" /> Male &nbsp;&nbsp;
											<form:radiobutton  name="gender" id="gender" value="Female" path="gender" checked="<%= student.getGender() %>" onchange="return validatePersonalInformation(this);"/> Female  
											<p id="p6"></p>
										</div>
								</div>
								<div class="control-group">
								<label class="control-label">Temporary Address : </label>
									<div class="controls">
										<form:input type="text" class="span11"  id="temporaryAddress" name="temporaryAddress" autocomplete="off" path="temporaryAddress" value="<%=student.getTemporaryAddress() %>" onkeyup="return validatePersonalInformation(this);"/>
										<%-- <form:textarea class="span11" name="temporaryAddress" id="temporaryAddress" autocomplete="off" path="temporaryAddress" value="This is address" onkeyup="return validatePersonalInformation(this);"></form:textarea> --%>
										<p id="p7"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Permanent Address : </label>
									<div class="controls">
										<form:input type="text" class="span11"  id="permanentAddress" name="permanentAddress" autocomplete="off" path="permanentAddress" value="<%=student.getPermanentAddress() %>" onkeyup="return validatePersonalInformation(this);"/>
										<%-- <form:textarea class="span11" name="permanentAddress" id="permanentAddress" autocomplete="off" path="permanentAddress" value="<%=student.getPermanentAddress() %>" onkeyup="return validatePersonalInformation(this);"/> --%>
										<p id="p8"></p>
									</div>
							</div>
								<div class="control-group">
									<label for="normal" class="control-label">Adhar Number : </label>
										<div class="controls">
											 <form:input type="text" class="span11" data-type="adhaar-number" maxLength="14" name="adharNo" id="adharNo" path="adharNo" onkeyup="return validatePersonalInformation(this);" value="<%=student.getAdharNo() %>"/>
											
											<p id="p9"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Religion : </label>
										<div class="controls">
											<form:select  class="span8 mask text" id="religion" name="religion" path="religion"  onchange="return validatePersonalInformation(this);">
													<form:option  value="None" items="<%=student.getReligion() %>">					Select Religion					</form:option >
													<form:option  value="Christianity">			Christianity					</form:option >
													<form:option  value="Islam">				Islam							</form:option >
													<form:option  value="Nonreligious">			Nonreligious					</form:option >
													<form:option  value="Hinduism" selected="selected">				Hinduism						</form:option >
													<form:option  value="Chinese" >				Chinese traditional religion	</form:option >
													<form:option  value="Buddhism">				Buddhism						</form:option >
													<form:option  value="Primal-indigenous">	Primal-indigenous				</form:option >
													<form:option  value="African traditional and Diasporic">African traditional and Diasporic</form:option >
													<form:option  value="Sikhism">				Sikhism							</form:option >
													<form:option  value="Juche">				Juche							</form:option >
													<form:option  value="Spiritism" >			Spiritism						</form:option >
													<form:option  value="Jainism">				Jainism							</form:option >
													<form:option  value="Judaism">				Judaism							</form:option >
													<form:option  value="Bahai">				Bahai							</form:option >
						 				   </form:select>
											<p id="p10"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Category : </label>
										<div class="controls">
											<form:select class="span8 mask text" id="category" name="category" path="category" value="<%=student.getCategory() %>" onchange="return validatePersonalInformation(this);">
												<form:option value="None">Select Category</form:option>
												<form:option value="open">			 Open			</form:option>
												<form:option value="OBC" selected="selected">			 OBC			</form:option>                          
												<form:option value="SC"> 			 SC				</form:option>
												<form:option value="ST">			 ST				</form:option>
												<form:option value="NT">			 NT				</form:option>
											</form:select>
											<p id="p11"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Caste : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="caste" id="caste" autocomplete="off" path="caste" value="<%=student.getCaste() %>" onkeyup="return validatePersonalInformation(this);"/>
											<p id="p12"></p>
										</div> 
								</div>
								
						<!-- end of personal information form details   -->
								
							<!--</form>-->
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->
	<!--- end of FIRST FORM DESIGN  -->

    <!-- start SECOND FORM DESIGN  --->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Academic Information</h5>
						</div>
						<div class="widget-content nopadding">
							<!--<form action="#" class="form-horizontal">-->
								<div class="control-group">
									<label for="normal" class="control-label">Previous School Name</label>
										<div class="controls">
											<form:input type="text" id="mask-phone" class="span8 mask text" autocomplete="off" path="previousSchoolName" value="<%=student.getPreviousSchoolName() %>" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p13"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Previous School Std.</label>
										<div class="controls">
											<form:input type="text" id="standard" class="span8 mask text" autocomplete="off" path="previousSchoolStd" value="<%=student.getPreviousSchoolStd() %>" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p14"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Select Class</label>
										<div class="controls">
											<form:select class="span8 mask text" path="assignClass" id="cls" value="<%=student.getAssignClass() %>" onchange="return validatePersonalInformation(this);">
											  <form:option value="None">Select Class</form:option>
											  <form:option value="First" selected="selected">	   First		</form:option>
											  <form:option value="Second">     Second		</form:option>
											  <form:option value="Third"> 	   Third		</form:option>
											  <form:option value="Fourth">     Fourth		</form:option>
											  <form:option value="Fifth">	   Fifth		</form:option>
											  <form:option value="Sixth">	   Sixth		</form:option>
											  <form:option value="Seventh">	   Seventh		</form:option>
											  <form:option value="Eighth">	   Eighth		</form:option>
											  <form:option value="Nineth">	   Nineth		</form:option>
											  <form:option value="Tenth">	   Tenth		</form:option>
											</form:select>
											<p id="p15"></p>
										</div>
								</div>
							<div class="control-group">
									<label for="normal" class="control-label">Select Division</label>
									<div class="controls">
											<form:select class="span8 mask text" path="assignDivision" id="div" value="<%=student.getAssignDivision() %>" onchange="return validatePersonalInformation(this);">
										 	 <form:option value="None">Select Division</form:option>
											  <form:option value="A" selected="selected">A</form:option>
											  <form:option value="B">B</form:option>
											  <form:option value="C">C</form:option>
											  <form:option value="D">D</form:option>
											</form:select>
											<p id="p16"></p>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Roll Number</label>
										<div class="controls">
											<form:input type="number" id="rollNumber" class="span8 mask text" autocomplete="off" name="rollNumber" path="rollNumber"  value="<%=student.getRollNumber() %>" onkeyup="return validatePersonalInformation(this);"/>
										    <p id="p17"></p>
										</div>
								</div>
								<div class="form-actions" style="display:block;">
									<a class="btnNext"><button type="button" class="btn btn-success" autocomplete="off" id="personal_info" onClick="validatePersonalInformation(this)"> Next <i class="icon icon-arrow-right"></i></button></a>
								</div>
							<!--</form>-->
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
							<h5>Personal-info</h5>
						</div>
					<div class="widget-content nopadding">
						<!--<form action="#" method="get" class="form-horizontal">-->
							<div class="control-group">
								<label class="control-label">First Name : </label>
									<div class="controls">
										<form:input type="text" class="span11"  id="guardianFirstName" autocomplete="off" name="guardianFirstName" path="guardianFirstName" value="<%=student.getGuardianFirstName() %>" onkeyup="return validateGuardianInformation(this);"/>
										<p id="p18"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Middle Name : </label>
									<div class="controls">
										<form:input type="text" class="span11"  id="guardianMiddleName" autocomplete="off" name="guardianMiddleName" path="guardianMiddleName" value="<%=student.getGuardianMiddleName() %>" onkeyup="return validateGuardianInformation(this);"/>
										<p id="p19"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Last Name : </label>
									<div class="controls">
										<form:input type="text" class="span11"  id="guardianLastName" autocomplete="off" name="guardianLastName" path="guardianLastName" value="<%=student.getGuardianLastName() %>" onkeyup="return validateGuardianInformation(this);"/>
										<p id="p20"></p>
									</div>
							</div>
							<div class="control-group">
							
								<label class="control-label">Mobile Number : </label>
									<div class="controls">
										<form:input type="number" class="span11"  id="phoneNumber" autocomplete="off" name="phoneNumber" path="phoneNumber" value="<%=student.getPhoneNumber() %>" onkeyup="return validateGuardianInformation(this);"/>
										<p id="p21"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Address : </label>
									<div class="controls">
										<form:input type="text" class="span11"  id="address" name="address" autocomplete="off" path="address" value="<%=student.getAddress() %>" onkeyup="return validatePersonalInformation(this);"/>
										<%-- <form:textarea class="span11" name="address" path="address" id="address" autocomplete="off" value="<%=student.getAddress() %>" onkeyup="return validateGuardianInformation(this);"/> --%>
										<p id="p22"></p>
									</div>
							</div>
							
							<%-- <div class="control-group">
									<label for="normal" class="control-label">Country</label>
										<div class="controls">
											<form:select class="span8 mask text" id="country" name="country" path="country" value="<%=student.getCountry() %>" onchange="return validateGuardianInformation(this);">
											
										</form:select>
										<p id="p23"></p>
										</div>
							</div> --%>
							<%-- <div class="control-group">
									<label for="normal" class="control-label">State</label>
										<div class="controls">
											<form:select class="span8 mask text" name="state" id="state" path="state" value="<%=student.getState() %>" onchange="return validateGuardianInformation(this);">
										
										</form:select>
												<p id="p24"></p>
										</div>
									

							</div> --%>
							<div class="control-group">
									<label for="normal" class="control-label">District</label>
										<div class="controls">
											<form:select class="span8 mask text" name="district" id="district" path="district" value="<%=student.getDistrict() %>" onchange="return validateGuardianInformation(this);">
											    <form:option value="None">  Select District  </form:option>
											    <form:option value="Ahmednagar">  	  	Ahmednagar  </form:option>
												<form:option value="Akola">  			Akola       </form:option>
												<form:option value="Amravati">  		Amravati    </form:option>
												<form:option value="Aurangabad">  		Aurangabad  </form:option>
												<form:option value="Bhandara">  		Bhandara    </form:option>
												<form:option value="Beed">  			Beed        </form:option>
												<form:option value="Buldhana">  		Buldhana    </form:option>
												<form:option value="Chandrapur">  		Chandrapur  </form:option>
												<form:option value="Dhule">  			Dhule       </form:option>
												<form:option value="Gadchiroli">  		Gadchiroli  </form:option>
												<form:option value="Gondia">  			Gondia      </form:option>
												<form:option value="Hingoli">  			Hingoli     </form:option>
												<form:option value="Jalgaon">  			Jalgaon     </form:option>
												<form:option value="Jalna">  			Jalna       </form:option>
												<form:option value="Kolhapur">  		Kolhapur    </form:option>
												<form:option value="Latur">  			Latur       </form:option>
												<form:option value="Mumbai City">  		Mumbai City </form:option>
												<form:option value="Mumbai suburban">  	Mumbai suburban </form:option>
												<form:option value="Nandurbar">  		Nandurbar   </form:option>
												<form:option value="Nanded">  			Nanded      </form:option>
												<form:option value="Nagpur">  			Nagpur      </form:option>
												<form:option value="Nashik" selected="selected">  			Nashik      </form:option>
												<form:option value="Osmanabad">  		Osmanabad   </form:option>
												<form:option value="Parbhani">  		Parbhani    </form:option>
												<form:option value="Pune">  			Pune        </form:option>
												<form:option value="Raigad">  			Raigad      </form:option>
												<form:option value="Ratnagiri">  		Ratnagiri   </form:option>
												<form:option value="Sindhudurg">  		Sindhudurg  </form:option>
												<form:option value="Sangli">  			Sangli      </form:option>
												<form:option value="Solapur">  			Solapur     </form:option>
												<form:option value="Satara"> 	 		Satara      </form:option>
												<form:option value="Thane">  			Thane       </form:option>
												<form:option value="Wardha">  			Wardha      </form:option>
												<form:option value="Washim">  			Washim      </form:option>
												<form:option value="Yavatmal">  		Yavatmal    </form:option>
												<form:option value="Palghar">  			Palghar     </form:option>
											</form:select>
											<p id="p25"></p>
										</div>
							</div>
							<div class="control-group">
								<label class="control-label">Tal. : </label>
									<div class="controls">
										<form:input type="text" class="span11" path="Tal" id="tal" autocomplete="off" value="<%=student.getTal() %>" onkeyup="return validateGuardianInformation(this);"/>
										<p id="p26"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Village : </label>
									<div class="controls">
										<form:input type="text" class="span11" path="village" id="village" autocomplete="off" value="<%=student.getVillage() %>"  onkeyup="return validateGuardianInformation(this);"/>
										<p id="p27"></p>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Zip Code :</label>
									<div class="controls">
										<form:input type="number" class="span11" name="zipCode" id="zip" autocomplete="off" path="zipCode" value="<%=student.getZipCode() %>" onkeyup="return validateGuardianInformation(this);"/>
										<p id="p28"></p>
									</div>
							</div>
							<div class="form-actions" style="display:block;">
								<!-- <button type="submit" class="btn btn-success">Save</button>-->
     							<a class="btnNext"><button type="button" class="btn btn-success" id="guardian_info" onClick="validateGuardianInformation(this)">Next <i class="icon icon-arrow-right"></i></button></a>
								<a class="btnPrevious"><button type="button" class="btn btn-success">Previous <i class="icon icon-arrow-left"></i></button></a>
							</div>
							
						<!--</form>-->
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
							<h5>Document-details</h5>
						</div>
						<div class="widget-content nopadding">
							<!--<form action="#" method="get" class="form-horizontal">-->
								<div class="control-group">
									<label class="control-label">Aadhar Card : </label>
										<div class="controls">
											<input type="file" name="adhar_card" id="adhar_card"  value="<%=student.getAdharCardField() %>" accept=".png, .jpg, .jpeg, .pdf" onchange="return validateStudInformation(this);"/>
											<p id="p29"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Birth Certificate : </label>
										<div class="controls">
											<input type="file" name="birth_certificate" id="birth_certificate" value="<%=student.getBirthCertificateField() %>" accept=".png, .jpg, .jpeg, .pdf" onchange="return validateStudInformation(this);"/>
										    <p id="p30"></p>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Previous School LC : </label>
										<div class="controls">
											<input type="file" name="previous_schoollc" id="previous_schoollc" value="<%=student.getPreviousSchoolLCField() %>" accept=".png, .jpg, .jpeg, .pdf" onchange="return validateStudInformation(this);"/>
										    <p id="p31"></p>
										</div>
								</div>
								<div class="form-actions" style="display:block;">
									<!-- <button type="submit" class="btn btn-success" >Save</button> -->
									<input type="submit" class="btn btn-success" value="Update" id="stud_info"  onClick="validateStudInformation(this)" style="float:right;">
								</div>
							<!--</form>-->
						</div>
					</div>
				</div>
		   <!---  end THIRD DESIGN FORM   --->
			</div> <!-- end of tab3 -->
        </div> <!-- end of widget-content -->
        </form:form>
		<!--</form>-->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>

<!--end-main-container-part-->



<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
 <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
<script>  			
function validatePersonalInformation(activeElement){
	var photos=$('#photo').val();
	var firstname = $('#firstName').val();
	var middlename = $('#middleName').val();
	var lastname = $('#lastName').val();
	var date=$('#dob').val();
	var radioValue = $("input[name='gender']:checked").val();
	var temporary = $('#temporaryAddress').val();
	var permanent = $('#permanentAddress').val();
	var adhar = $('#adharNo').val();
	var relg = $('#religion').val();
	var cat = $('#category').val();
	var cast=$('#caste').val();
	var psn=$('#mask-phone').val();
	var previous=$('#standard').val();
	var clss=$('#cls').val();
	var divs=$('#div').val();
	var roll=$('#rollNumber').val();
	
	/* if(activeElement.id == "personal_info" || activeElement.id == "photo" ){
		 photos = validateDocument(photos,"#p1","#photo");
		 
	} */if(activeElement.id == "personal_info" || activeElement.id == "firstName" ){
		firstname = validateCharactersOnly(firstname,"#p2","#firstName");
	}if(activeElement.id == "personal_info" || activeElement.id == "middleName" ){
		middlename = validateCharactersOnly(middlename,"#p3","#middleName");
	}if(activeElement.id == "personal_info" || activeElement.id == "lastName" ){
		lastname = validateCharactersOnly(lastname,"#p4","#lastName");
	}if(activeElement.id == "personal_info" || activeElement.id == "dob" ){
		date = validateNotEmpty(date,"#p5","#dob");
	}if(activeElement.id == "personal_info" || activeElement.id == "gender" ){
		radioValue = validateRadio(radioValue,"#p6","#gender");
	}if(activeElement.id == "personal_info" || activeElement.id == "temporaryAddress" ){
		temporary = validateField(temporary,"#p7","#temporaryAddress");
	}if(activeElement.id == "personal_info" || activeElement.id == "permanentAddress" ){
		permanent  =  permanent = validateField(permanent,"#p8","#permanentAddress");
	}if(activeElement.id == "personal_info" || activeElement.id == "adharNo" ){
		adhar = validateAdhar(adhar,"#p9","#adharNo");
   }if(activeElement.id == "personal_info" || activeElement.id == "religion" ){
	    relg = validateDropdown(relg,"#p10","#religion");
   }if(activeElement.id == "personal_info" || activeElement.id == "category" ){
	    cat = validateDropdown(cat,"#p11","#category");
   }if(activeElement.id == "personal_info" || activeElement.id == "caste" ){
    	cast = validateNonEmpty(cast,"#p12","#caste");
   }if(activeElement.id == "personal_info" || activeElement.id == "mask-phone" ){
    	psn = validateNonEmpty(psn,"#p13","#mask-phone");
   }if(activeElement.id == "personal_info" || activeElement.id == "standard" ){
    	previous = validateNonEmpty(previous,"#p14","#standard");
   }if(activeElement.id == "personal_info" || activeElement.id == "cls" ){
	    clss = validateDropdown(clss,"#p15","#cls");
   }if(activeElement.id == "personal_info" || activeElement.id == "div" ){
	    divs = validateDropdown(divs,"#p16","#div");
   }if(activeElement.id == "personal_info" || activeElement.id == "rollNumber" ){
   	    roll = validateNonEmpty(roll,"#p17","#rollNumber");
   }if(/* photos && */ firstname && middlename  && lastname && date  && radioValue  && temporary  && permanent  && adhar  && relg  && cat && cast  && psn  && previous  && clss  && divs  && roll ){
		navigateToNextPage();
   }
}  
function validateGuardianInformation(activeElement){
    var gfirstname=$('#guardianFirstName').val();
	var gmiddlename=$('#guardianMiddleName').val();
	var glastname=$('#guardianLastName').val();
	var gmobile=$('#phoneNumber').val();
	var gaddr=$('#address').val();
	var gcountry=$('#country').val();
	var gstate=$('#state').val();
	var gdist=$('#district').val();
	var gtal=$('#tal').val();
	var gvillage=$('#village').val();
	var gzip=$('#zip').val();
	
	if(activeElement.id == "guardian_info" || activeElement.id == "guardianFirstName" ){
		gfirstname=validateCharactersOnly(gfirstname,"#p18","#guardianFirstName");
	}if(activeElement.id == "guardian_info" || activeElement.id == "guardianMiddleName" ){
		gmiddlename=validateCharactersOnly(gmiddlename,"#p19","#guardianMiddleName");
	}if(activeElement.id == "guardian_info" || activeElement.id == "guardianLastName" ){
		glastname=validateCharactersOnly(glastname,"#p20","#guardianLastName");
	}if(activeElement.id == "guardian_info" || activeElement.id == "phoneNumber" ){
		gmobile=validateMobile(gmobile,"#p21","#phoneNumber");
	}if(activeElement.id == "guardian_info" || activeElement.id == "address" ){
		gaddr=validateField(gaddr,"#p22","#address");
	}if(activeElement.id == "guardian_info" || activeElement.id == "country" ){
		gcountry=validateDropdown(gcountry,"#p23","#country");
	}if(activeElement.id == "guardian_info" || activeElement.id == "state" ){
		gstate=validateDropdown(gstate,"#p24","#gstate");
	}if(activeElement.id == "guardian_info" || activeElement.id == "district" ){
		gdist=validateDropdown(gdist,"#p25","#gdist");
	}if(activeElement.id == "guardian_info" || activeElement.id == "tal" ){
		gtal=validateNonEmpty(gtal,"#p26","#tal");
	}if(activeElement.id == "guardian_info" || activeElement.id == "village" ){
		gvillage=validateNonEmpty(gvillage,"#p27","#village");
	}if(activeElement.id == "guardian_info" || activeElement.id == "zip" ){
		gzip=validateNonEmpty(gzip,"#p28","#zip");
	}
	if(gfirstname && gmiddlename && glastname && gmobile && gaddr && gcountry && gstate && gdist && gtal && gvillage && gzip){
		navigateToNextPage();
	}
}
	
	function validateStudInformation(activeElement){
		/* var adhar=$('#adhar_card').val();
		var birth=$('#birth_certificate').val();
		var previous=$('#previous_schoollc').val();

		if(activeElement.id == "stud_info" || activeElement.id == "adhar_card" ){
			adhar=validateDocument(adhar,"#p29","#adhar_card");
		}if(activeElement.id == "stud_info" || activeElement.id == "birth_certificate" ){
			birth=validateDocument(birth,"#p30","#birth_certificate");
		}if(activeElement.id == "stud_info" || activeElement.id == "previous_schoollc" ){
			previous=validateDocument(previous,"#p31","#previous_schoollc");
		}
		if(adhar && birth && previous){
		return true;
	    }
		else{
		return false;
		} */
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
     
 
     

<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
    /* For Date of birth calendar  */
	$(document).ready(function(){
		var date_input=$('input[name="dob"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})

    /* For Academic Year  */
	var start = 2010;
	var end = new Date().getFullYear();
	var options = "";
	for(var year = start ; year <=end; year++){
	options += "<option>"+ year +"</option>";
	}
	document.getElementById("academicYear").innerHTML = options;
	
	

	/* End of Academic Year  */
    /* For country and state  */
	populateCountries("country","state");
	/*populateStates("state","district");*/
	/* End for country and state */

</script>
<!-- Script for Next and Previous Buttons -->
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<!-- End Script for Next and Previous button -->
    
<!-- End Footer-part -->
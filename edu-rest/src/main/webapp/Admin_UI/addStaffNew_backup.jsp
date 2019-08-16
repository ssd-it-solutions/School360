<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.entity.Divisions" %>
<%@ page import="com.ssdit.edu.entity.Standards" %>
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
	.highlight-error {
		border-color: red;
	}
	#errorbox{
		color: red;
	}
	#photo-error{
		color: red;
	}
	#staff_first_name-error{
		color: red;
	}
	#staff_middle_name-error{
		color: red;
	}
	#staff_last_name-error{
		color: red;
	}
	#staff_age-error{
		color: red;
	}
	#mask-date-error{
		color: red;
	}
	#staff_adhar_no-error{
		color: red;
	}
	#staff_qualification-error{
		color: red;
	}
	#staff_institute-error{
		color: red;
	}
	#board-error{
		color: red;
	}
	#marks-error{
		color: red;
	}
	#period-error{
		color: red;
	}
	#address-error{
		color: red;
	}
	#designation-error{
		color: red;
	}
	#adhar_card-error{
		color: red;
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="viewStaff" title="staff list" class="tip-bottom">Staff List</a></div>
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
              <li><a data-toggle="tab" href="#tab4">Import</a></li>
            </ul>
         </div>
      
      
		<%  List<Divisions> divisionsList = (List<Divisions>) request.getAttribute("divisionsList");
			List<Standards> standardsList = (List<Standards>) request.getAttribute("standardsList");
		%>
      	
         <form:form id="staff_form" class="form-horizontal" action="/admin/staff" method="post" modelAttribute="staffDTO"  enctype="multipart/form-data">
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
											<input type="file" name="photo" id="photo"/>
											<form:input type="hidden" name="photoField" id="photoField" path="photoField" value="photoField"/>
										</div>
								</div>
								
								<div class="control-group">
									<label for="normal" class="control-label">Category : </label>
										<div class="controls">
											<form:select class="span8 mask text" name="staffCategory" path="staffCategory">
											  <form:option value="Select category">Select Category</form:option>
											  <form:option value="School">School</form:option>
											  <form:option value="Hostel">Hostel</form:option>
											</form:select>
										</div>
								</div>
								
								<div class="control-group">
									  <label class="control-label">First Name : </label>
										<div class="controls">
											<form:input type="text" id="firstName" name="firstName"  path="firstName"  />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Middle Name : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="middleName" id="middleName" path="middleName" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Last Name : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="lastName" id="lastName" path="lastName"/>
										</div>
								</div>
								<div class="control-group">
								<label class="control-label">Address : </label>
									<div class="controls">
										<textarea class="span11" name="address" id="address" path="address"></textarea>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Age : </label>
										<div class="controls">
											<form:input type="text" class="span11" name="age" id="age" path="age" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Email : </label>
										<div class="controls">
											<form:input type="email" class="span11" name="emailAddress" id="emailAddress" path="emailAddress" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Mobile Number : </label>
										<div class="controls">
											<form:input type="number" class="span11" name="phoneNumber" id="phoneNumber" path="phoneNumber" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Gender : </label>
										<div class="controls">
											<form:radiobutton  name="gender" id="gender" value="Male"   path="gender" /> Male &nbsp;&nbsp;
											<form:radiobutton  name="gender" id="gender" value="Female" path="gender" /> Female  
										</div>
								</div>
								<div class="control-group">
									<!--<label for="normal" class="control-label">DOB : <span id="errorbox">*</span></label>
										<div class="controls">
											<!--<input type="date" id="mask-date" class="span8 mask text" data-date-inline-picker="true" name="staff_dob">-->
											<!--<input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
											 
										</div>
								     -->
									 <label class="control-label col-sm-2 requiredField" for="date">Date Of Birth : </label>
									
										<div class="controls">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar" style="display:none;"></i>
												
											<form:input class="form-control" id="dob" name="dob" type="date" path="dob"/>
											</div>
											</div>
										</div>
									 
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Aadhar Number :  </label>
										<div class="controls">
											<form:input type="text" class="span11" data-type="adhaar-number" maxLength="14" name="adharNo" path="adharNo" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Languages Known : </label>
										<div class="controls">
											<form:checkbox   name="knownLang"  value="English" path="knownLang" /> English &nbsp;&nbsp;
											<form:checkbox   name="knownLang"  value="Hindi"   path="knownLang" /> Hindi &nbsp;&nbsp;
											<form:checkbox   name="knownLang"  value="Marathi" path="knownLang" /> Marathi
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
											<form:input type="date" id="mask-phone" class="span8 mask text" path="joiningDate" />
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Assign Class : </label>
										<div class="controls">
											<form:select class="span8 mask text chosen-select" data-placeholder="select some classes"  path="assignClass" multiple="true">
											  <form:option value="None">Select Class</form:option>
											  <% for(Standards std : standardsList) {%>
											  	<form:option value="<%= std.getId() %>"><%= std.getStandard() %></form:option>
											  <%} %>
											</form:select>
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Assign Division : </label>
										<div class="controls">
											<form:select class="span8 mask text chosen-select" data-placeholder="select some divisions"   path="assignDivision" multiple="true">
											  <form:option value="None">Select Division</form:option>
											  <%
											  	for(Divisions div : divisionsList){%>
											  		<form:option value="<%=div.getId() %>"><%=div.getDivision() %></form:option>
											  	<%} %>
											</form:select>
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">Joining Type : </label>
										<div class="controls">
											<form:radiobutton  name="joiningPeriod" id="joiningPeriod" value="Temporary"   path="joiningPeriod" /> Temporary &nbsp;&nbsp;
											<form:radiobutton  name="joiningPeriod" id="joiningPeriod" value="Permanent" path="joiningPeriod" /> Permanent  
										</div>
								</div>

								<div class="form-actions" style="display:block;">
									<!--  <button type="submit" class="btn btn-success" id="personal_info">Next</button> -->
									<a class="btnNext"><button type="button" class="btn btn-success" id="personal_info" > Next <i class="icon icon-arrow-right"></button></i></a>
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
										<select class="span8 mask text" name="qualification" id="qualification" >
											  <option value="">Select Qualification</option>
											  <option>MSC</option>
											  <option>BSC</option>
											  <option>D.Ed</option>
											  <option>B.Ed</option>
											  <option>ME</option>
											  <option>BE</option>
										</select>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Institute : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="institute" id="institute" path="institute"/>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Board : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="board" id="board" path="board"/>
									</div>
							</div>
							<div class="control-group">
								<label class="control-label">Marks/Grade : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="marks" id="marks" path="marks"/>
									</div>
							</div>
							
							
							<div class="form-actions" style="display:block;">
								<!-- <button type="submit" class="btn btn-success" id="educational_info">Next</button> -->
								<a class="btnNext"><button type="button" class="btn btn-success">Next <i class="icon icon-arrow-right"></button></i></a>
								<a class="btnPrevious"><button type="button" class="btn btn-success">Previous <i class="icon icon-arrow-left"></button></i></a>
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
										<form:input type="text" class="span11" name="totalWorkExperience" id="totalWorkExperience" path="totalWorkExperience"/>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Organization & Address : </label>
									<div class="controls">
										<textarea class="span11" name="organizationAddress" id="organizationAddress" path="organizationAddress"></textarea>
									</div>
								</div>

								<div class="control-group">
								<label class="control-label">Designation : </label>
									<div class="controls">
										<form:input type="text" class="span11" name="designation" id="designation" path="designation"/>
									</div> 
								</div>

								<div class="control-group">
								<label class="control-label">Personal Achievements(if any) :</label>
									<div class="controls">
										<form:input type="text" class="span11" name="achievements" path="achievements"/>
									</div>
								</div>

								<div class="control-group">
									<label class="control-label">Aadhar Card : </label>
										<div class="controls">
											<input type="file" name="adhar_card" id="adhar_card"  />
											<form:input type="hidden" name="photoField" id="photoField" path="adharCardField" value="adharCardField"/>
										</div>
								</div>
								
								<div class="form-actions">
									<!--  <button type="submit" class="btn btn-success" id="experience_info">Save</button> -->
									<a class="btnPrevious"><button type="button" class="btn btn-success" >Previous <i class="icon icon-arrow-left"></button></i></a>
									<input type="submit" class="btn btn-success" value="Save" id="experience_info" style="float:right;">
								</div>
							
						</div>
					</div>
				</div>
		   <!---  end THIRD DESIGN FORM   --->
			</div> <!-- end of tab3 -->
			</form:form>
			<div id="tab4" class="tab-pane">
           <!-- start FOURTH DESIGN FORM    -->
				<div class="span6">
					<div class="widget-box">
						<form:form id="staff_import" class="form-horizontal" action="/admin/staff/import" method="post" enctype="multipart/form-data">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Import-details</h5>
						</div>
						<div class="widget-content nopadding">
								<div class="control-group">
									<label class="control-label">Upload file : </label>
										<div class="controls">
											<input type="file" name="staffFile" id="staffFile"/>
										</div>
								</div>							
								<div class="form-actions">
									<input type="submit" class="btn btn-success" value="Import" id="experience_info" style="float:right;">
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
</div>

<!--end-main-container-part-->



<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
<!-- Script for Next and Previous Buttons -->
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script>
$('.btnNext').click(function(){
  $('.nav-tabs > .active').next('li').find('a').trigger('click');
});

  $('.btnPrevious').click(function(){
  $('.nav-tabs > .active').prev('li').find('a').trigger('click');
});
</script>
<!-- End Script for Next and Previous button -->

<!--  Script for datepicker -->
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
<style>
.chosen-container-multi{width:205px;}
</style>
<!-- End script for select multiple attribute -->

<!--end-Footer-part-->
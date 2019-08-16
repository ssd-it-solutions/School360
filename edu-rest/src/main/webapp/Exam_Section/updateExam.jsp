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
.roll_number{width:34px !important;}
.subject_list{width:125px !important;}
.exam_list{width:118px !important;}
.marks-widget-box{margin-left: -45px !important;}
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="unitTest.html" class="current">Exams Management</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Unit Test Exam</h1>
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
              <li class="active"><a data-toggle="tab" href="#tab1">Create Exam</a></li>
              <li><a data-toggle="tab" href="#tab2">Enter Mark</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab3">Experience Details</a></li>
            </ul>
         </div>
		 <form  class="form-horizontal" name="staff_form" id="staff_form"> 
         <div class="widget-content tab-content">
            <div id="tab1" class="tab-pane active">
			<!-- Start form design -->
				<div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Create Exam</h5>
						</div>
						<div class="widget-content nopadding">
							
								<div class="control-group">
									<label for="normal" class="control-label">Class : </label>
										<div class="controls">
											<select class="span8 mask text" id="class" name="class" >
											  <option>Select Class</option>
											  <option selected="selected">First</option>
											  <option>Second</option>
											  <option>Third</option>
											  <option>Fourth</option>
											  <option>Fifth</option>
											  <option>Sixth</option>
											  <option>Seventh</option>
											  <option>Eighth</option>
											  <option>Nineth</option>
											  <option>Tenth</option>
											</select>
										</div>
								</div>

								<div class="control-group">
									<label for="normal" class="control-label">Batch : </label>
										<div class="controls">
											<select class="span8 mask text" id="batch" name="batch" >
											  <option>Select Division</option>
											  <option selected="selected">A</option>
											  <option>B</option>
											  <option>C</option>
											  <option>D</option>
											</select>
										</div>
								</div>

								<div class="control-group">
									<label for="normal" class="control-label">Subject : </label>
										<div class="controls">
											<select class="span8 mask text" id="subject" name="subject" >
											  <option>Select Subject</option>
											  <option selected="selected">English</option>
											  <option>Maths</option>
											  <option>Science</option>
											  <option>History</option>
											  <option>Marathi</option>
											  <option>Geography</option>

											</select>
										</div>
								</div>
								
								<div class="control-group">
									<label class="control-label">Exam Name : </label>
										<div class="controls">
											<input type="text" class="span11" name="exam_name" id="exam_name" value="Unit Test Exam" />
										</div>
								</div>

								<div class="control-group">
									<label class="control-label">Maximum Mark : </label>
										<div class="controls">
											<input type="text" class="span11" name="max_marks" id="max_marks" value="100"/>
										</div>
								</div>
								
							
						<!-- end of personal information form details   -->
								<div class="form-actions" style="display:block;">
									<button type="submit" class="btn btn-success">Save</button>
								</div>
							
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
				</div><!-- end of span6 -->
	<!--- end of FIRST FORM DESIGN  -->

    <!-- start SECOND FORM DESIGN  --->
				 <!-- end of second span6 --->
	<!--- end of SECOND FORM DESIGN  -->
			</div> <!-- end of tab1 div -->

            <div id="tab2" class="tab-pane">
			<!-- start Second tab form design -->
			    <div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Enter Mark</h5>
						</div>
					<div class="widget-content nopadding">
						
							
							<div class="control-group">
									<label for="normal" class="control-label">Class : </label>
										<div class="controls">
											<select class="span8 mask text" id="class" name="class" >
											  <option>Select Class</option>
											  <option value="First" selected="selected">First</option>
											  <option>Second</option>
											  <option>Third</option>
											  <option>Fourth</option>
											  <option>Fifth</option>
											  <option>Sixth</option>
											  <option>Seventh</option>
											  <option>Eighth</option>
											  <option>Nineth</option>
											  <option>Tenth</option>
											</select>
										</div>
								</div>

								<div class="control-group">
									<label for="normal" class="control-label">Batch : </label>
										<div class="controls">
											<select class="span8 mask text" id="batch" name="batch" >
											  <option>Select Division</option>
											  <option value="A" selected="selected">A</option>
											  <option>B</option>
											  <option>C</option>
											  <option>D</option>
											</select>
										</div>
								</div>

								<div class="control-group">
									<label for="normal" class="control-label">Subject : </label>
										<div class="controls">
											<select class="span8 mask text" id="subject" name="subject" >
											  <option>Select Subject</option>
											  <option value="English" selected="selected">English</option>
											  <option>Maths</option>
											  <option>Science</option>
											  <option>History</option>
											  <option>Marathi</option>
											  <option>Geography</option>

											</select>
										</div>
								</div>
								

							    <div class="control-group">
									<label for="normal" class="control-label">Exam Name : </label>
										<div class="controls">
											<select class="span8 mask text" id="ex_name" name="ex_name">
											  <option>Select Exam Name</option>
											  <option value="Unit Test Exam" selected="selected">Unit Test Exam</option>
											</select>
										</div>
								</div>

							<div class="form-actions" style="display:block;">
								<!--<button type="submit" class="btn btn-success" onclick="showDiv()">Marks</button>-->
								 <input type="button" class="btn btn-success" onclick="showDiv()" value="Update Marks" >
							</div>
						
					</div>
					</div>
      
       
				</div> <!-- end of span6 -->
	<!-- end of second form tab design -->
	<!-- start second form design   -->
	<div class="span6" style="display:none;">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Student Information</h5>
						</div>
						<div class="widget-content nopadding">
							<!--<form action="#" class="form-horizontal">-->
								<div class="control-group">
									<label for="normal" class="control-label">Student Roll Number : </label>
										<div class="controls">
											<input type="text" id="mask-phone" class="span8 mask text" value="F-01" >
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Student Admission Number : </label>
										<div class="controls">
											<input type="text" id="mask-phoneExt" class="span8 mask text" value="101" >
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Student Name : </label>
										<div class="controls">
											<input type="text" id="mask-phone" class="span8 mask text"  value="ABC">
										</div>
								</div>
								<div class="control-group">
									<label for="normal" class="control-label">Marks : </label>
										<div class="controls">
											<input type="text" id="mask-phone" class="span8 mask text" value="65" >
										</div>
								</div>

								<div class="form-actions marks-btn" style="display:block;">
									<button type="submit" class="btn btn-success">Publish Marks</button>
								</div>
							<!--</form>-->
						</div>
					</div>
       <!-- end of widget-box -->
       <!-- end of widget-box -->
	</div> <!-- end of second span6 --->
	<!-- end of second form design  -->
	<!-- design for marks entry table   -->
		<!--main-container-part-->
<div class="span12" id="content-new" style="display:none;">
	<div id="content-header" style="display:none;">
		<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Exams Management</a> </div>
		<h1>Exams Management</h1>
	</div>
	<div class="container-fluid">
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="addUnitTest.html" class="btn ra-100 btn-purple" style="display:none;" >Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled" style="display:none;">Delete</button>
					
				<div class="widget-box marks-widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Including All Student Marks Listing </h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th>Roll_No </th>
								<th>Name</th>
								<th>Subject</th>
								<th>Exam Name</th>
								<th>Marks Obtained</th>
								<th>Marks Out of</th>
								<th style="display:none;">Average</th>
								<th width="10%">Action</th>
							</tr>
							</thead>
							<tbody>
								  
		                <!---- Modal Popup Start --->
							<div id="myAlert<?php echo $i; ?>" class="modal hide">
								<div class="modal-header">
									<button data-dismiss="modal" class="close" type="button">x</button>
									<h3>Roll_No</h3>
								</div>
								<div class="modal-body">
									<p>Name</p>
								</div>
								<div class="modal-body">
									<p><img src="" height="50" width="50"></p>
								 </div>
								<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
							</div>
							<form action="" method="post">
						<!---- Modal Popup End --->
						   <!-- for first entry  -->
						   
							<tr class="gradeX">
							
								<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td><input type="text" class="span11 roll_number" name="roll_no" value="01" disabled ></td>
								<td><input type="text" class="span11" name="name" value="ABC" disabled></td>
								<td><select class="span11 mask text subject_list" id="" name="" >
											  <option value="">Select Subject</option>
											  <option selected="selected">English</option>
											  <option>Maths</option>
											  <option>Science</option>
											  <option>History</option>
											  <option>Marathi</option>
											  <option>Geography</option>

									</select>
								</td>
								<td><select class="span11 mask text exam_list" id="" name="" >
											  <option value="">Select Exam Name</option>
											  <option selected="selected">test exam</option>
									</select>
								</td>
								<td><input type="text" name="marks_obtain" class="span11" value="60"></td>
								<td><input type="text" name="marks_out_of" class="span11" value="100"></td>
								<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete student record?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="view" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
								<div class="form-actions marks-btn" style="display:block;">
									<!--<button type="submit" class="btn btn-success">ADD Marks</button>-->
									<input type="button" class="btn btn-success" value="UPDATE MARKS">
								</div>
							
							</tr>
							
							<!-- end for first entry  -->

							<!-- for second entry -->
							<tr class="gradeX">
								<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td><input type="text" class="span11 roll_number" name="roll_no" value="02" disabled ></td>
								<td><input type="text" class="span11" name="name" value="XYZ" disabled></td>
								<td><select class="span11 mask text subject_list" id="" name="" >
											  <option value="">Select Subject</option>
											  <option>English</option>
											  <option selected="selected">Maths</option>
											  <option>Science</option>
											  <option>History</option>
											  <option>Marathi</option>
											  <option>Geography</option>

									</select>
								</td>
								<td><select class="span11 mask text exam_list" id="" name="" >
											  <option value="">Select Exam Name</option>
											  <option selected="selected">semester II </option>
									</select>
								</td>
								<td><input type="text" name="marks_obtain" class="span11" value="55"></td>
								<td><input type="text" name="marks_out_of" class="span11" value="70"></td>
								<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete student record?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="view" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
								
							</tr>
							<!-- end for second entry -->
							</form>                
							</tbody>
						</table>
				</div>
				</div>
			</div>
    </div>
		</form>
  </div>
</div> <!-- content -->

<!--end-main-container-part-->


	<!-- end design for marks entry table --->

           </div><!-- end of tab2 -->
            <!-- end of tab3 -->
        </div> <!-- end of widget-content -->
		</form>
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>



<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <script>
     function showDiv() {
    	   document.getElementById('content-new').style.display = "block";
    	}
     </script>
<!-- Footer-part End -->
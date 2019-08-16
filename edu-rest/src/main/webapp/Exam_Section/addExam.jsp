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
.max_marks{width:55px !important;}
th {font-size:12px !important;}
.roll_number{width:34px !important;}
.subject_list{width:125px !important;}
.exam_list{width:118px !important;}
.marks-widget-box{margin-left: -45px !important;}
.marks-btn{float:right !important;}
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
		<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>  <a href="unitTest.html" class="current">Exams Management</a></div>
	  </div>
	<!--End-breadcrumbs-->

	<div class="container-fluid">
		<div class="quick-actions_homepage">
			<h1>Unit Test Exam</h1>
		</div>
		<hr/>
		<div class="row-fluid" style="display:block;">
			<div class="span12">
				<div class="widget-box">
					<div class="widget-title">
						<ul class="nav nav-tabs">
							<li class="active"><a data-toggle="tab" href="#tab1">Create Exam</a></li>
							<li><a data-toggle="tab" href="#tab2">Enter Mark</a></li>
							<li style="display:none;"><a data-toggle="tab" href="#tab3">Experience Details</a></li>
						</ul>
					</div>
		
					<div class="widget-content tab-content">
						<div id="tab1" class="tab-pane active">
							<form  class="form-horizontal" name="exam_form" id="exam_form">
							<!-- Start form design -->
								<div class="span6">
									<div class="widget-box">
										<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
											<h5>Create Exam</h5>
										</div>
										<div class="widget-content nopadding">
											<div class="control-group">
												<label for="normal" class="control-label">Class : <span id="errorbox">*</span> </label>
													<div class="controls">
														<select class="span8 mask text" id="exam_class" name="exam_class" >
														  <option value="">Select Class</option>
														  <option>First</option>
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
												<label for="normal" class="control-label">Batch : <span id="errorbox">*</span> </label>
													<div class="controls">
														<select class="span8 mask text" id="batch" name="batch" >
														  <option value="">Select Division</option>
														  <option>A</option>
														  <option>B</option>
														  <option>C</option>
														  <option>D</option>
														</select>
													</div>
											</div>

											<div class="control-group">
												<label for="normal" class="control-label">Subject : <span id="errorbox">*</span> </label>
													<div class="controls">
														<select class="span8 mask text" id="subject" name="subject" >
														  <option value="">Select Subject</option>
														  <option>English</option>
														  <option>Maths</option>
														  <option>Science</option>
														  <option>History</option>
														  <option>Marathi</option>
														  <option>Geography</option>
														</select>
													</div>
											</div>
								
											<div class="control-group">
												<label class="control-label">Exam Name : <span id="errorbox">*</span> </label>
													<div class="controls">
														<input type="text" class="span11" name="exam_name" id="exam_name" />
													</div>
											</div>

											<div class="control-group">
												<label class="control-label">Maximum Mark : <span id="errorbox">*</span> </label>
													<div class="controls">
														<input type="text" class="span11" name="max_marks" id="max_marks" />
													</div>
											</div>

											<div class="form-actions" style="display:block;">
												<button type="submit" class="btn btn-success">Save</button>
											</div>
										</div> <!-- End of widget-content nopadding --> 
									</div> <!-- End of widget-box  -->
								</div><!-- end of span6 -->
								<!--- end of  FORM DESIGN  -->

								<!-- start SECOND FORM DESIGN  --->
								<div class="span6">
									<div class="container-fluid">
										<form class="form-horizontal" method="post" action="" >
										<div class="row-fluid">
											<div class="span12">
												<div class="widget-box">
													<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
													<h5>Including All Exams Listing </h5>
													</div>
													<div class="widget-content nopadding">
														<table class="table table-bordered data-table with-check">
															<thead>
																<tr>
																	<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
																	<th>Class</th>
																	<th>Batch</th>
																	<th>Subject</th>
																	<th>Exam Name</th>
																	<th>Maximum Marks</th>
																	<th width="10%">Action</th>
																</tr>
															</thead>
															<tbody>
																<tr class="gradeX">
																	<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
																	<td>First</td>
																	<td>A</td>
																	<td>English</td>
																	<td>Unit Test Exam</td>
																	<td class="max_marks">100</td>
																	<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete exam record?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
																</tr>
															</tbody>
														</table>
													</div> <!-- End of widget-content nopadding -->
												</div> <!-- End of widget-box -->
											</div> <!-- End of span12 -->
										</div> <!-- End of row-fluid -->
										</form>
									</div> <!-- End of container-fluid -->
								</div> <!-- end of span6 --->
								<!--- end of SECOND FORM DESIGN  -->
							</form> <!-- End of first form -->
						</div> <!-- end of tab1 div -->

						<div id="tab2" class="tab-pane">
							<!-- start Second tab form design -->
							<form  class="form-horizontal" name="mark_form" id="mark_form">
								<div class="span6">
									<div class="widget-box">
										<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
										<h5>Enter Mark</h5>
									</div>
									<div class="widget-content nopadding">
										<div class="control-group">
											<label for="normal" class="control-label">Class :  </label>
												<div class="controls">
													<select class="span8 mask text" id="stud_class" name="stud_class" >
													  <option value="">Select Class</option>
													  <option>First</option>
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
											<label for="normal" class="control-label">Batch :  </label>
												<div class="controls">
													<select class="span8 mask text" id="stud_batch" name="stud_batch" >
													  <option value="">Select Division</option>
													  <option>A</option>
													  <option>B</option>
													  <option>C</option>
													  <option>D</option>
													</select>
												</div>
										</div>

										<div class="control-group">
											<label for="normal" class="control-label">Subject :  </label>
												<div class="controls">
													<select class="span8 mask text" id="stud_subject" name="stud_subject" >
													  <option value="">Select Subject</option>
													  <option>English</option>
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
													<select class="span8 mask text" id="ex_name" name="ex_name" >
													  <option value="">Select Exam Name</option>
													  <option>test exam</option>
													</select>
												</div>
										</div>

										<div class="form-actions " style="display:block;">
										<!--<button type="submit" class="btn btn-success" onclick="showDiv()">Marks</button>-->
											<input type="button" class="btn btn-success" onclick="showDiv()" value="Marks" >
										</div>
									</div> <!-- End of widget-content nopadding -->
									</div> <!-- End of widget-box -->
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
											<label for="normal" class="control-label">Student Roll Number : <span id="errorbox">*</span> </label>
												<div class="controls">
													<input type="text" id="roll_no" class="span8 mask text" name="roll_no" >
												</div>
										</div>
										<div class="control-group">
											<label for="normal" class="control-label">Student Admission Number : <span id="errorbox">*</span> </label>
												<div class="controls">
													<input type="text" id="admission_no" class="span8 mask text" name="admission_no">
												</div>
										</div>
										<div class="control-group">
											<label for="normal" class="control-label">Student Name : <span id="errorbox">*</span> </label>
												<div class="controls">
													<input type="text" id="stud_name" class="span8 mask text" name="stud_name" >
												</div>
										</div>
										<div class="control-group">
											<label for="normal" class="control-label">Marks : <span id="errorbox">*</span> </label>
												<div class="controls">
													<input type="text" id="stud_marks" class="span8 mask text" name="stud_marks" >
												</div>
										</div>

										<div class="form-actions marks-btn" style="display:block;">
											<!--<button type="submit" class="btn btn-success">Marks</button>-->
										</div>
										<!--</form>-->
									</div> <!-- End of widget-content nopadding -->
									</div> <!-- end of widget-box -->
								</div> <!-- end of second span6 --->

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
											<!-- for first entry  -->
						   
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td><input type="text" class="span11 roll_number" name="roll_no" value="01" disabled ></td>
														<td><input type="text" class="span11" name="name" value="ABC" disabled></td>
														<td><select class="span11 mask text subject_list" id="" name="" >
																	  <option value="">Select Subject</option>
																	  <option>English</option>
																	  <option>Maths</option>
																	  <option>Science</option>
																	  <option>History</option>
																	  <option>Marathi</option>
																	  <option>Geography</option>

															</select>
														</td>
														<td><select class="span11 mask text exam_list" id="" name="" >
																	  <option value="">Select Exam Name</option>
																	  <option>test exam</option>
															</select>
														</td>
														<td><input type="text" name="marks_obtain" class="span11"></td>
														<td><input type="text" name="marks_out_of" class="span11"></td>
														<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete student record?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="view" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
														<div class="form-actions marks-btn" style="display:block;">
															<!-- <button type="submit" class="btn btn-success">ADD Marks</button> -->
															<input type="button" class="btn btn-success" value="ADD MARKS">
														</div>
													
													</tr>
					</form>
										<!-- end for first entry  -->

										<!-- for second entry -->
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td><input type="text" class="span11 roll_number" name="roll_no" value="02" disabled ></td>
														<td><input type="text" class="span11" name="name" value="XYZ" disabled></td>
														<td><select class="span11 mask text subject_list" id="" name="" >
																	  <option value="">Select Subject</option>
																	  <option>English</option>
																	  <option>Maths</option>
																	  <option>Science</option>
																	  <option>History</option>
																	  <option>Marathi</option>
																	  <option>Geography</option>

															</select>
														</td>
														<td><select class="span11 mask text exam_list" id="" name="" >
																	  <option value="">Select Exam Name</option>
																	  <option>test exam</option>
															</select>
														</td>
														<td><input type="text" name="marks_obtain" class="span11"></td>
														<td><input type="text" name="marks_out_of" class="span11"></td>
														<td><a href="update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="" onclick="return confirm('Are you sure to delete student record?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="view" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
														
													</tr>
													<!-- end for second entry -->
												</tbody>
											</table>
										</div> <!-- End of widget-content nopadding -->
									</div> <!-- End of widget-box marks-widget-box  -->
								</div> <!-- End OF span12  -->
							</div> <!-- End of row-fluid -->
						</form>
					</div> <!-- End of container-fluid  -->
			</div> <!--End pf span12 content -->
			
           </div><!-- end of tab2 -->

        </div> <!-- end of widget-content -->
		<!--</form> -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div> <!-- End of content -->


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <script>
		function showDiv() {
   			document.getElementById('content-new').style.display = "block";
		}
	</script>
<!-- Footer-part End -->
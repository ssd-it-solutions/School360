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
.select_class{width:155px !important;
              float: right !important;
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
	<div id="content-header">
		<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Exams Management</a> </div>
		<h1>Exams Management</h1>
	</div>
	<div class="container-fluid">
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="exams/add" class="btn ra-100 btn-purple" >Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled" style="display:none;">Delete</button>
					
					
						
							
								<select class="span11 select_class" id="stud_class" name="stud_class" onchange="showList(this)" >
								  <option value="">Select Class</option>
								  <option value ="1">First</option>
								  <option value ="2">Second</option>
								  <option value ="3">Third</option>
								  <option value ="4">Fourth</option>
								  <option value ="5">Fifth</option>
								  <option value ="6">Sixth</option>
								  <option value ="7">Seventh</option>
								  <option value ="8">Eighth</option>
								  <option value ="9">Nineth</option>
								  <option value ="10">Tenth</option>
								</select>
							
					
					<div class="widget-box " id="student_marks_list" style="display:none;" >
						<div class="widget-title">
							<ul class="nav nav-tabs">
								<li class="active"><a data-toggle="tab" href="#tab1">All Students</a></li>
								<li><a data-toggle="tab" href="#tab2">Section A</a></li>
								<li><a data-toggle="tab" href="#tab3">Section B</a></li>
							</ul>
						</div>
		 
						<div class="widget-content tab-content">
							<div id="tab1" class="tab-pane active">
									<div class="widget-content nopadding">
										<table class="table table-bordered data-table with-check">
											<thead>
												<tr>
													<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
													<th>Name</th>
													<th>Roll Number</th>
													<th>Email</th>
													<th width="10%">Action</th>
												</tr>
											</thead>
											<tbody>
								  
												<!---- Modal Popup Start --->
													<div id="myAlert<?php echo $i; ?>" class="modal hide">
														<div class="modal-header">
															<button data-dismiss="modal" class="close" type="button">x</button>
															<h3>Name</h3>
														</div>
														<div class="modal-body">
															<p>Roll_No</p>
														</div>
														<div class="modal-body">
															<p><img src="" height="50" width="50"></p>
														 </div>
														<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
													</div>
												<!---- Modal Popup End --->
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td>ABC</td>
														<td>01</td>
														<td>ABC@gmail.com</td>
														<td><a href="exams/viewMarksheet" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
													</tr>
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td>XYZ</td>
														<td>02</td>
														<td>XYZ@gmail.com</td>
														<td><a href="exams/viewMarksheet" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
													</tr>
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td>PQR</td>
														<td>03</td>
														<td>PQR@gmail.com</td>
														<td><a href="exams/viewMarksheet" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
													</tr>
									                
											</tbody>
										</table>
									</div>
								
							</div> <!-- end of tab1 div -->

							<div id="tab2" class="tab-pane">
									<div class="widget-content nopadding">
										<table class="table table-bordered data-table with-check">
											<thead>
												<tr>
													<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
													<th>Name</th>
													<th>Roll Number</th>
													<th>Email</th>
													<th width="10%">Action</th>
												</tr>
											</thead>
											<tbody>
								  
												<!---- Modal Popup Start --->
													<div id="myAlert<?php echo $i; ?>" class="modal hide">
														<div class="modal-header">
															<button data-dismiss="modal" class="close" type="button">x</button>
															<h3>Name</h3>
														</div>
														<div class="modal-body">
															<p>Roll_No</p>
														</div>
														<div class="modal-body">
															<p><img src="" height="50" width="50"></p>
														 </div>
														<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
													</div>
												<!---- Modal Popup End --->
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td>ABC</td>
														<td>01</td>
														<td>ABC@gmail.com</td>
														<td><a href="exams/viewMarksheet" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
													</tr>
											</tbody>
										</table>
									</div>
							</div><!-- end of tab2 -->

							<div id="tab3" class="tab-pane">
									<div class="widget-content nopadding">
										<table class="table table-bordered data-table with-check">
											<thead>
												<tr>
													<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
													<th>Name</th>
													<th>Roll Number</th>
													<th>Email</th>
													<th width="10%">Action</th>
												</tr>
											</thead>
											<tbody>
								  
												<!---- Modal Popup Start --->
													<div id="myAlert<?php echo $i; ?>" class="modal hide">
														<div class="modal-header">
															<button data-dismiss="modal" class="close" type="button">x</button>
															<h3>Name</h3>
														</div>
														<div class="modal-body">
															<p>Roll_No</p>
														</div>
														<div class="modal-body">
															<p><img src="" height="50" width="50"></p>
														 </div>
														<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
													</div>
												<!---- Modal Popup End --->
													<tr class="gradeX">
														<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
														<td>XYZ</td>
														<td>02</td>
														<td>XYZ@gmail.com</td>
														<td><a href="exams/viewMarksheet" title="View"><img src="${pageContext.request.contextPath}/assets/img/view.png" height="20" width="20"></a></td>
													</tr>
											</tbody>
										</table>
									</div>

							</div> <!-- end of tab3 -->

						</div> <!-- end of widget-content -->
		
					</div><!-- end of widget-box -->



					
				
				</div> <!-- end of span12  -->
			</div> <!-- end of row-fluid  -->

		</form>
  </div>
</div> <!-- content -->
	

<!-- END of Main-contain-part -->
<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>   
     
     <script type="text/javascript">
     function showList(elem){
    	   if(elem.value == 1)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 2)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 3)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 4)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 5)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 6)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 7)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 8)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else if(elem.value == 9)
    	      document.getElementById('student_marks_list').style.display = "block";
    	   else 
    	      document.getElementById('student_marks_list').style.display = "block";
    	}
     </script>
<!-- Footer-part End -->
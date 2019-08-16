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
    .box-title{
	font-size:15px !important;
}
th{
	font-size:12px !important;
}
.box-red{
	color:red;
}
.box-points{
	font-weight:bold;
}
.box .box-body{
	border-top-left-radius:0;
	border-top-right-radius:0;
	border-bottom-right-radius:3px;
	border-bottom-left-radius:3px;
}
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
.profile-username{
 font-size:21px !important;
 margin-top:5px;
}
.text-muted{
	color:#999;
}
.list-group{
	padding-left:0;
	margin-bottom:20px;
}
.list-group-item:first-child{
	border-top-right-radius:4px;
	border-top-left-radius:4px;
}
.list-group-item{
	position:relative;
	display:block;
	padding:10px 15px;
	margin-bottom:-1px;
	border:1px solid #ddd;
}
.pull-right{
	float:right;
	
}
.tab-content-new{
	background:#fff;
	padding:10px;
}
.tab-content-new>.active{
	display:block;
}
.box{
	position:relative;
	background:#ffffff;
	margin-bottom:20px;
	border-radius:3px;
	width:100%;
	box-shadow:0px 1px 3px rgba(0, 0, 0, 0.1);
}
.box .box-header{
	position:relative;
	border-top-left-radius:3px;
	border-top-right-radius:3px;
	border-bottom-right-radius:0;
	border-bottom-left-radius:0;
	border-bottom:0px solid #f4f4f4;
	color:#444;
	box-sizing:border-box;
}
.box .box-header .box-title{
	display:inline-block;
	padding:15px;
	margin:0;
	font-size:14px;
	font-weight:400;
	float:left;
	cursor:default;
	font-family:"OpenSans Regular";
}
.stud_profile{
	margin-top:20px;
}
.stud_list{
	margin:0 20px 10px 25px !important;
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
		<div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">View Student Marks</a> </div>
		<h1>View Student Marks</h1>
	</div>
	<div class="container-fluid">
		<hr>
		
			<div class="row-fluid">
				<div class="span3 view-span">
					<div class="widget-box">
						
					<div class="widget-content nopadding">
						<div class="clearfix"></div>
						<div id="printableArea">
						<div class="x_content">
							<div class="box-body box-profile">
								<img class="profile-user-img img-responsive img-circle stud_profile" src="https://demo.inilabs.net/school/v4.0/uploads/images/default.png">
								<h3 class="profile-username text-center">ABC</h3>
								<p class="text-muted text-center">Student</p>
								<ul class="list-group list-group-unbordered stud_list">
									<li class="list-group-item"> 
										<b>Register No </b>
										<a class="pull-right">1234</a>
									</li>
									<li class="list-group-item"> 
										<b>Roll </b>
										<a class="pull-right">01</a>
									</li>
									<li class="list-group-item"> 
										<b>Class </b>
										<a class="pull-right">First</a>
									</li>
									<li class="list-group-item"> 
										<b>Section </b>
										<a class="pull-right">A</a>
									</li>
								</ul>

							</div>
						 
						</div><!-- end of printable area --->
						</div><!--  end of x_content  -->
						
				</div>
				</div>
				</div> <!-- end of span3 -->
				
				<div class="span8">
					
					<div class="widget-title" style="display:none;"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Mark</h5>
					</div>
					
					<div class="tab-content-new" style="display:none;">
						<div class="active tab-pane" id="mark">
							<div class="box" style="border-top:1px solid #23292F; border-left:1px solid #23292F; border-right:1px solid #23292F;
							border-bottom:1px solid #23292F;" id="e1">
								<div class="box-header" style="background-color:#FFFFFF;">
									<h3 class="box-title" style="color:#23292F;">First Semester</h3>
								</div>

							</div>
						</div>
					</div>

					<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5 class="box-title">First Semester</h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th style="display:none;"><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th rowspan="2">Subject</th>
								<th colspan="2">Exam</th>
								<th colspan="2">Attendance</th>
								<th colspan="2">Class Test</th>
								<th colspan="2">Assignment</th>
								<th colspan="3">Total</th>
							</tr>
							<tr>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Point</th>
								<th>Grade</th>
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
									<p>Roll</p>
								</div>
								<div class="modal-body">
									<p><img src="" height="50" width="50"></p>
								 </div>
								<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
							</div>
						<!---- Modal Popup End --->
							<tr class="gradeX">
								<td style="display:none;"><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td>English</td>
								<td>42</td>
								<td>42</td>
								<td>10</td>
								<td>10</td>
								<td>6</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>68</td>
								<td>3.58</td>
								<td>A-</td>
							</tr>

							<tr>
								<td>Maths</td>
								<td>42</td>
								<td>42</td>
								<td>9</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>71</td>
								<td>4.00</td>
								<td>A</td>
							</tr>

							
							<tr>
								<td>Science</td>
								<td>39</td>
								<td>39</td>
								<td>8</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>67</td>
								<td>3.50</td>
								<td>A</td>
							</tr>

							
							<tr>
								<td>Social Science</td>
								<td>41</td>
								<td>41</td>
								<td>6</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>9</td>
								<td>10</td>
								<td>66</td>
								<td>3.50</td>
								<td>A</td>
							</tr>

							<tr>
								<td>Marathi</td>
								<td>39</td>
								<td>39</td>
								<td>8</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>67</td>
								<td>3.50</td>
								<td>A</td>
							</tr>

							</tbody>
							
						</table>
						<div class="box-footer">
								<p class="box-points">
								Total Marks:
								<span class="box-red">332.00</span>&nbsp;&nbsp;
								Average Marks:
								<span class="box-red">66.40</span>&nbsp;&nbsp;
								Average Point:
								<span class="box-red">3.50</span>&nbsp;&nbsp;
								Average Grade:
								<span class="box-red">A+</span>
								</p>
						</div>
						
				</div>
				</div> <!-- end of widget-box --->
				</div> <!-- end of span8 -->


				<div class="span8">
					<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5 class="box-title">Second Semester</h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check">
							<thead>
							<tr>
								<th style="display:none;"><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th rowspan="2">Subject</th>
								<th colspan="2">Exam</th>
								<th colspan="2">Attendance</th>
								<th colspan="2">Class Test</th>
								<th colspan="2">Assignment</th>
								<th colspan="3">Total</th>
							</tr>
							<tr>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Highest Mark</th>
								<th>Mark</th>
								<th>Point</th>
								<th>Grade</th>
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
									<p>Roll</p>
								</div>
								<div class="modal-body">
									<p><img src="" height="50" width="50"></p>
								 </div>
								<div class="modal-footer"><a data-dismiss="modal" class="btn btn-inverse" href="#">Cancel</a></div>
							</div>
						<!---- Modal Popup End --->
							<tr class="gradeX">
								<td style="display:none;"><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td>English</td>
								<td>42</td>
								<td>42</td>
								<td>10</td>
								<td>10</td>
								<td>6</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>68</td>
								<td>3.58</td>
								<td>A-</td>
							</tr>

							<tr>
								<td>Maths</td>
								<td>42</td>
								<td>42</td>
								<td>9</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>71</td>
								<td>4.00</td>
								<td>A</td>
							</tr>

							
							<tr>
								<td>Science</td>
								<td>39</td>
								<td>39</td>
								<td>8</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>67</td>
								<td>3.50</td>
								<td>A</td>
							</tr>

							
							<tr>
								<td>Social Science</td>
								<td>41</td>
								<td>41</td>
								<td>6</td>
								<td>10</td>
								<td>10</td>
								<td>10</td>
								<td>9</td>
								<td>10</td>
								<td>66</td>
								<td>3.50</td>
								<td>A</td>
							</tr>



									                
							</tbody>
						</table>
						<div class="box-footer">
								<p class="box-points">
								Total Marks:
								<span class="box-red">400.00</span>&nbsp;&nbsp;
								Average Marks:
								<span class="box-red">66.40</span>&nbsp;&nbsp;
								Average Point:
								<span class="box-red">3.50</span>&nbsp;&nbsp;
								Average Grade:
								<span class="box-red">A</span>
								</p>
						</div>
				</div>
				</div> <!-- end of widget-box --->
				</div> <!-- end of span8 -->



    </div> <!-- end of row-fluid --->
	
		
  

	<div> <!-- end of container-fluid  -->
</div> <!-- end of content  -->


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
<!-- Footer-part End -->
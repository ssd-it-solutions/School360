
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
	.input-width{width:350px;}
	.sub-label{margin-left:-190px;}
	.sub-label-one{margin-left:-180px;}
	.sub-label-other{margin-left:-20px;}  
	.table-column{width:490px !important;}
	.new-table{width:570px; border:1px solid #ddd !important;margin-left:25px;margin-bottom:15px !important;}
	.other_table_column{width:560px !important;}
	.table-input{width:70px;}
	/*.secondary-school-table{width:900px;margin-left:65px;}
	.secondary_form_title{width:500px;font-size:15px;}*/
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
	<div id="content-header">
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="" class="current">Primary School Form</a>  </div>
		<h1 style="text-align:center;">Primary AshramShala - Final Grant Verification Year <script>document.write(new Date().getFullYear()- 2);</script> - <script>document.write(new Date().getFullYear()- 1);</script></h1>
	</div>
	
	<div class="container-fluid">
		<hr style="border-top: dotted 3px;">
		<form name="primary_school_form" class="form-horizontal" id="primary_school_form"> 
			 <div class="widget-content tab-content">
			 	<div class="span12">
			 		<div class="widget-box">
			 			<div class="widget-content nopadding">
			 					<div class="control-group">
									<label class="control-label">1. Name and address of the organization running ashram shala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="school_name" id="school_name" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">2. Organization Registration Number : </label>
										<div class="controls">
											<input class="input-width" type="text" name="organization_reg_no" id="organization_reg_no" />
										</div>
									
									<label class="control-label sub-label">A)  Trustee Registration Number : </label>
										<div class="controls">
											<input class="input-width" type="text" name="trustee_reg_no" id="trustee_reg_no" />
										</div>
										
									<label class="control-label sub-label-one">B)  Mumbai Public Trust Registration Number : </label>
										<div class="controls">
											<input class="input-width" type="text" name="mumbai_public__reg_no" id="mumbai_public__reg_no" />
										</div>	
								</div>
								<div class="control-group">
									<label class="control-label">3. Sanction No and Date of establishment of ashram shala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="sanction_no" id="sanction_no" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label sub-label-other">4. Name and Address of ashram shala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="ashramshala_name" id="ashramshala_name" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label sub-label-other">5. Designation of Grant ashramshala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="designation" id="designation" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label table-column">6. 31 March 2017,Pupils of student And pieces recognition <span class="statement_label">(statement no.07)</span>: </label></br></br></br>
										<table class="table table-bordered data-table with-check new-table">
											<thead>
												<tr>
													<th>Serial No.</th>
													<th>Details </th>
													<th>Std.1 To 4 </th>
													<th>Std.5th </th>
													<th>Std.6th </th>
													<th>Std.7th </th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Ashram Resident</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Descholar</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Number of Approved Pieces</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
								</div>
								
								<div class="control-group">
									<label class="control-label other_table_column">7. Number of teachers with principle And Number of hostel employees<span class="statement_label">(statement no.08)</span>: </label></br></br></br>
										<table class="table table-bordered data-table with-check new-table">
											<thead>
												<tr>
													<th>Serial No.</th>
													<th>Details </th>
													<th>Valid Numbers </th>
													<th>Organize by the Organization </th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Teacher  (1) Ashramic </br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2) Descholar		</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Hostel   (1) Superintendent + Female Officer </br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(2) Cookie </br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(3) Helper </br>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(4) Kamathi </td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												
											</tbody>
										</table>
								</div>
							<div class="form-actions" style="display:block;">
								  <button type="submit" class="btn btn-success">Save</button> 
								<input type="button" class="btn btn-success" onclick="showDiv()" value="Next" >
							</div>
							
			 			</div> <!-- End of widget-content nopadding -->
			 		</div> <!--  End of widget-box -->
			 	</div> <!-- End of span6 -->
			 </div> <!-- End of widget-content tab-content -->
		</form>
	</div> <!-- End of container-fluid -->
</div> <!-- End of content -->
	<!--  New Form Start -->
<div id="content-new" style="display:none">
<div id="content">
	<div id="content-header">
	
		<h1 style="text-align:center;">Primary AshramShala - Final Grant Verification Year <script>document.write(new Date().getFullYear()- 1);</script> - <script>document.write(new Date().getFullYear());</script></h1>
	</div>
	
	<div class="container-fluid">
		<hr style="border-top: dotted 3px;">
		<form name="primary_school_form" class="form-horizontal" id="primary_school_form"> 
			 <div class="widget-content tab-content">
			 	<div class="span12">
			 		<div class="widget-box">
			 			<div class="widget-content nopadding">
			 					<div class="control-group">
									<label class="control-label">1. Name and address of the organization running ashram shala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="school_name" id="school_name" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label">2. Organization Registration Number : </label>
										<div class="controls">
											<input class="input-width" type="text" name="organization_reg_no" id="organization_reg_no" />
										</div>
									
									<label class="control-label sub-label">A)  Trustee Registration Number : </label>
										<div class="controls">
											<input class="input-width" type="text" name="trustee_reg_no" id="trustee_reg_no" />
										</div>
										
									<label class="control-label sub-label-one">B)  Mumbai Public Trust Registration Number : </label>
										<div class="controls">
											<input class="input-width" type="text" name="mumbai_public__reg_no" id="mumbai_public__reg_no" />
										</div>	
								</div>
								<div class="control-group">
									<label class="control-label">3. Sanction No and Date of establishment of ashram shala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="sanction_no" id="sanction_no" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label sub-label-other">4. Name and Address of ashram shala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="ashramshala_name" id="ashramshala_name" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label sub-label-other">5. Designation of Grant ashramshala : </label>
										<div class="controls">
											<input class="input-width" type="text" name="designation" id="designation" />
										</div>
								</div>
								<div class="control-group">
									<label class="control-label table-column">6. 01 August 2017,Pupils of student And pieces recognition <span class="statement_label">(statement no.07)</span>: </label></br></br></br>
										<table class="table table-bordered data-table with-check new-table">
											<thead>
												<tr>
													<th>Serial No.</th>
													<th>Details </th>
													<th>Std.1 To 4 </th>
													<th>Std.5th </th>
													<th>Std.6th </th>
													<th>Std.7th </th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>1</td>
													<td>Ashram Resident</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>2</td>
													<td>Descholar</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
												<tr>
													<td>3</td>
													<td>Number of Approved Pieces</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
													<td>&nbsp;</td>
												</tr>
											</tbody>
										</table>
								</div>
								<div class="form-actions" style="display:block;">
								  <button type="submit" class="btn btn-success">Save</button> 
								  <input type="button" class="btn btn-success" onclick="showNextDiv()" value="Next" >
								
							</div>
								
								
			 			</div> <!-- End of widget-content nopadding -->
			 		</div> <!--  End of widget-box -->
			 	</div> <!-- End of span6 -->
			 </div> <!-- End of widget-content tab-content -->
		</form>
	</div> <!-- End of container-fluid -->
</div> <!-- End of content -->
</div> <!-- End of content-new -->

<!-- New Form Design form add -->	
<div id="content-new-form" style="display:none">
	<div id="content">
		<div id="content-header">
			<table class="table table-bordered data-table with-check secondary-school-table">
				<thead>
					<tr>
						<th class="secondary_form_title">Grant Determination Report(year <script>document.write(new Date().getFullYear()- 2);</script> - <script>document.write(new Date().getFullYear()- 1);</script> )Secondary Department</th>
					</tr>
					<tr>
						<th>1</th>
						<th>Name of Secondary AshramShala </th>
						<th>&nbsp;</th>
						<th>Secondary</th>
						<th>&nbsp;</th>
					</tr>
					<tr>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
						<th>&nbsp;</th>
						<th>M.Po &nbsp;&nbsp;</th>
						<th>&nbsp;</th>
						<th>Taluka</th>
						<th>&nbsp;</th>
						<th>District</th>
						<th>&nbsp;</th>
					</tr>
				</thead>
			</table>
		</div>
	</div> <!-- End of content -->
</div><!-- End of content-new-form -->
<!-- End of New form Design -->

<!--end-main-container-part-->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <script>
		function showDiv() {
   			document.getElementById('content-new').style.display = "block";
		}
		function showNextDiv(){
			document.getElementById('content-new-form').style.display = "block";
		}
	</script>
<!-- End Footer-part -->
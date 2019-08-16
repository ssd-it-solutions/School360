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
	<div id="content-header">
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="<%=applicationURL%>/admin/residenceStudAvg" title="Residence Students Average" class="current">Residence Students Average</a> </div>
		<h1>Statement - 07</h1>
	</div>
	<div class="container-fluid">
		<hr>
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="residenceStudAvg/add" class="btn ra-100 btn-purple" >Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled" style="display:none;">Delete</button>
					<a href="residenceStudAvg/view" class="btn ra-100 btn-purple" >View</a>
					
				<div class="widget-box">
					<div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
						<h5>Including All Residence Students Average Listing </h5>
					</div>
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th><input type="checkbox" id="title-table-checkbox" name="title-table-checkbox" onClick="checkAll(this.form,this,this.checked)" /></th>
								<th>Month</th>
								<th>Class 1</th>
								<th>Class 2</th>
								<th>Class 3</th>
								<th>Class 4</th>
								<th>Class 5</th>
								<th>Class 6</th>
								<th>Class 7</th>
								<th>Class 8</th>
								<th>Class 9</th>
								<th>Class 10</th>
								<th>Class 11</th>
								<th>Class 12</th>
								<th>Total</th>
								<th width="10%">Action</th>
							</tr>
							</thead>
							<tbody>
								  
		              
							<tr class="gradeX">
								<td><input type="checkbox" name="chk[]" value="" onClick="checkSingle(this,this.checked)"/></td>
								<td>April - 2017</td>
								<td class="attendance-1">10</td>
								<td class="attendance-2">20</td>
								<td class="attendance-3">40</td>
								<td class="attendance-4">30</td>
								<td class="attendance-5">60</td>
								<td class="attendance-6">70</td>
								<td class="attendance-7">50</td>
								<td class="attendance-8">60</td>
								<td class="attendance-9">20</td>
								<td class="attendance-10">10</td>
								<td class="attendance-11">20</td>
								<td class="attendance-12">30</td>
								<td id="result" class="totalAmount"></td>
								<td><a href="residenceStudAvg/update" title="Edit"><img src="${pageContext.request.contextPath}/assets/img/edit.png" height="20" width="20"/></a>&nbsp;|&nbsp;<a href="#" onclick="return confirm('Are you sure to delete category?');" title="Delete"><img src="${pageContext.request.contextPath}/assets/img/delete.png" height="20" width="20"/></a></td>
							</tr>
							
							
									                
							</tbody>
						</table>
				</div>
				</div>
			</div>
    </div>
		</form>
  </div>
</div> <!-- content -->



<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
     <script type="text/javascript">
     var sum = 0;

     $('td[class*="attendance-"]').each(function() {
       sum += Number($(this).text()) || 0;
     });

     $('#result').text(sum);
     </script>
<!-- Footer-part End -->
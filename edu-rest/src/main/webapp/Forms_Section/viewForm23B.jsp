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
	.form-name{text-align:center;font-size:26px;}
	.form-type{text-align:center;font-size:17px;color:#555555;font-weight:700;}
	.form-role{text-align:center;font-size:17px !important; font-weight:500;}
	.table th{font-size:12px;}
	.principle-sign-column{float:right;}
	.school-name{text-align:left;}
	.total{width:160px !important;}
	.second-table{width:500px;}
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
		<div id="editor"></div>
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a><input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
		<h1 class="form-name">Statement - 23B</h1>
		<p class="form-type  ">Name of aided Ashram School:</p>
		<p class="form-type">  Showing details balance stocks in the Year <script>document.write(new Date().getFullYear()- 1);</script>-<script>document.write(new Date().getFullYear()- 0);</script></p>
		
		<hr>
	
		
		<form class="form-horizontal" method="post" action="" >
			<div class="row-fluid">
				<div class="span12">
					<a href="staffRecognitionList/add" class="btn ra-100 btn-purple" style="display:none;">Add</a>
					<button class="btn ra-100 btn-purple" type="submit" name="btn_del" value="Delete" id="btn_del" disabled="disabled" style="display:none;">Delete</button>
					
					
				<div class="widget-box">
					
					<div class="widget-content nopadding">
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Serial No.</th>
								<th>Matter/Items</th>
								<th>Initial Balance</th>
								<th>Total purchases for the year (kg)</th>
								<th>Total purchase price for the year (kg)</th>
								<th>Total (kg)</th>
								<th>Total consumption/usage of the Year (kg)</th>
								<th>Last balance (kg)</th>
								<th>Purchase rate (kg)</th>	
								<th>Total Cost (kg)</th>
								<th>Remark</th>
							
							</tr>
							</thead>
							<tbody>
						<tr class="gradeX">
							
								
								<th>1</th>
								<th>2</th>
								<th>3</th>
								<th>4</th>
								<th>5</th>
								<th>6</th>
								<th>7</th>
								<th>8</th>
								<th>9</th>
								<th>10</th>
								<th>11</th>
								
							</tr>
							
						
							     <tr class="gradeX">
								<td></td>
								<th>Wheat/Flour</th>
							
								<td>2500</td>
								<td>3100</td>
								<td>3100</td>
								<td>5600</td>
								<td>1050</td>
								<td>4550</td>
								<td>18</td>
								<td>81900</td>
								<td>-</td>
							
							</tr>
	
							<tr class="gradeX">
								<td></td>
									<th>Rice</th>
							<td>3880</td>
								<td>4000</td>
								<td>4000</td>
								<td>7880</td>
								<td>1050</td>
								<td>6830</td>
								<td>35</td>
								<td>239050</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
									<th>Pulses</th>
								<td>1200</td>
								<td>2200</td>
								<td>2200</td>
								<td>3400</td>
								<td>1070</td>
								<td>2330</td>
								<td>45</td>
								<td>104850</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
								<th>Oil</th>
							<td>5300</td>
								<td>3800</td>
								<td>3800</td>
								<td>9100</td>
								<td>7050</td>
								<td>2050</td>
								<td>100</td>
								<td>205000</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
								<th>Spices</th>
									<td>3880</td>
								<td>4000</td>
								<td>4000</td>
								<td>7880</td>
								<td>1050</td>
								<td>6830</td>
								<td>35</td>
								<td>239050</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
								
								<th>Salt</th>	
								<td>6000</td>
								<td>5500</td>
								<td>5500</td>
								<td>11500</td>
								<td>9050</td>
								<td>2450</td>
								<td>20</td>
								<td>49000</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
								
								<th>Usal / Breakfast / Pohe</th>
									<td>43200</td>
								<td>42000</td>
								<td>42000</td>
								<td>85200</td>
								<td>70000</td>
								<td>15200</td>
								<td>100</td>
								<td>1520000</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
								
								<th>Sugar</th>
								<td>44500</td>
								<td>4100</td>
								<td>48600</td>
								<td>48600</td>
								<td>10050</td>
								<td>38550</td>
								<td>42</td>
								<td>1619100</td>
								<td>-</td>
							</tr>
							
							<tr class="gradeX">
								<td></td>
								<th>Peanut</th>
									<td>11500</td>
								<td>5200</td>
								<td>5200</td>
								<td>11500</td>
								<td>1300</td>
								<td>10200</td>
								<td>80</td>
								<td>816000</td>
								<td>-</td>
							</tr>
							
						   
								<tr class="gradeX">
								<td></td>
								<th>Soap</th>
									<td>21500</td>
								<td>5500</td>
								<td>5500</td>
								<td>27000</td>
								<td>3000</td>
								<td>24000</td>
								<td>23</td>
								<td>552000</td>
								<td>-</td>					
							</tr>  
								<tr class="gradeX">
													<td></td>	
								<th>Coconut oil</th>
								<td>1500</td>
								<td>3100</td>
								<td>3100</td>
								<td>4600</td>
								<td>3300</td>
								<td>7900</td>
								<td>20</td>
								<td>158000</td>
								<td>-</td>			
							</tr>   
							
								<tr class="gradeX">
							<td></td>
								<th>Tooth Powder</th>
								<td>17600</td>
								<td>876</td>
								<td>876</td>
								<td>18476</td>
								<td>3004</td>
								<td>18180</td>
								<td>37</td>
								<td>672660</td>
								<td>-</td>
							</tr>   
								<tr class="gradeX">
							<td></td>
								<th>Other</th>
								<td>10200</td>
								<td>2100</td>
								<td>2100</td>
								<td>21300</td>
								<td>1050</td>
								<td>20250</td>
								<td>67</td>
								<td>1356750</td>
								<td>-</td>	
							</tr>   
								<tr class="gradeX">
						<td></td>
								<th>Vegetables And Tuber roots</th>								
								<td>1210</td>
								<td>5200</td>
								<td>5200</td>
								<td>6410</td>
								<td>1300</td>
								<td>10200</td>
								<td>80</td>
								<td>816000</td>
								<td>-</td>			
							</tr>   
								<tr class="gradeX">
								<td></td>
								<th>Banquet</th>
								<td>17600</td>
								<td>876</td>
								<td>876</td>
								<td>18476</td>
								<td>3004</td>
								<td>18180</td>
								<td>37</td>
								<td>672660</td>
								<td>-</td>				
							</tr>   
								<tr class="gradeX">
							<td></td>
								<th>Gas</th>
								<td>33120</td>
								<td>679</td>
								<td>679</td>
								<td>33120</td>
								<td>2380</td>
								<td>31419</td>
								<td>700</td>
								<td>21993300</td>
								<td>-</td>					
							</tr>   
								<tr class="gradeX">
								<td></td>
								<th>Cookies</th>
								<td>2300</td>
								<td>600</td>
								<td>600</td>
								<td>2900</td>
								<td>2500</td>
								<td>2100</td>
								<td>10</td>
								<td>21000</td>
								<td>-</td>			
							</tr>    
								<tr class="gradeX">
								<td></td>
								<th>Water</th>
								<td>44500</td>
								<td>4100</td>
								<td>48600</td>
								<td>48600</td>
								<td>10050</td>
								<td>38550</td>
								<td>42</td>
								<td>1619100</td>
								<td>-</td>				
							</tr>    
								<tr class="gradeX">
								<td></td>
								<th>Grinding</th>
								<td>8600</td>
								<td>1400</td>
								<td>1400</td>
								<td>10000</td>
								<td>8900</td>
								<td>1100</td>
								<td>942</td>
								<td>1036200</td>
								<td>-</td>					
							</tr>    
								<tr class="gradeX">
								
								<th colspan="2">Total</th>
								<td>280090</td>
								<td>103531</td>
								<td>183755</td>								
								<td>279744</td>
								<td>137158</td>								
								<td>251691</td>
								<td>2433</td>
								<td>35392720</td>
								<td>-</td>
														
							</tr>    
							</tbody>
						</table>
												
				</div>
				</div>
			</div>
    </div>
		</form>
		
	
		<!-- <div class="principle-sign-column">
			<h5>Principle Sign</h5>
		</div> -->
  </div> <!-- container-fluid -->
  </div><!-- printable div -->
</div> <!-- content -->


<!-- End Of Main-contain-part -->


<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
      <script>
     function printDiv(printableArea) {
     var printContents = document.getElementById(printableArea).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
}
    </script>
    <script>
   var addSerialNumber = function () {
	    $('table tr').each(function(index) {
	        $(this).find('td:nth-child(1)').html(index+(-1));
	    });
	};

	addSerialNumber();
   </script>
<!-- Footer-part End -->
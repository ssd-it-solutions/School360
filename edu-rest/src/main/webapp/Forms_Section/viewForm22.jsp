
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
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 
 <style>

	#header h1{
		overflow:inherit !important;
		line-height:0px !important;
		top:35px !important;
		font-size:32.5px !important;
	}
	
	.button-subscribe {
	border-radius: 25px;
    padding: 0 10px;
}
	.highlight-error {
		border-color: red;
	}
	#errorbox {
		color: red;
	}
	#fname-error {
		color: red;
	}
	#mname-error {
		color: red;
	}
	#lname-error {
		color: red;
	}
	#adhar_no-error{
	    color: red;
	}
	#guardian_name-error{
	    color: red;
	}
	#guardian_last_name-error{
	    color: red;
	}
	#adhar_card-error{
		color: red;
	}
	#birth_certificate-error{
		color: red;
	}
	#photo-error{
	   color: red;
	}
	#datepicker-error{
	   color: red;
	}
	#category-error{
	   color: red;
	}
	#caste-error{
	   color: red;
	}
	#guardian_middle_name-error{
	   color: red;
	}
	#mobile_number-error{
	   color: red;
	}
	#p_address-error{
	   color: red;
	}
	#school_LC-error{
	   color: red;
	}
	.goog-te-gadget .goog-te-combo{
		margin-left:65% !important;
	}
	.goog-logo-link{
		display:none;
	}
	.goog-te-gadget{
		/*color:#2E363F !important;*/
		color: #fff !important;
	}
	#google_translate_element{
		margin-right: -120%;
		}
	 p {
         font-size:12px;
         color:red;
       }
       
   	#cls{
       	 width: 150px;
         height: 25px;
   		border: 1px solid #ccc;
   		margin-top:0.8%;
  		 margin-left:0.7%;
   		border-radius:6px;
       	} 
     #btn{
        margin-left:90%;
        }  	
        .balance-form-name{text-align:center;}  	
        .balance-form-type{text-align:center;} 
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
		<div id="editor"></div>
		<div id="breadcrumb"> <a href="#" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <input type="button" onclick="printDiv('printableArea')" class="btn btn-success" value="PRINT"  style="float:right;"/></div>
		
	</div>
	<div id="printableArea">
	<div class="container-fluid">
       	<h1 class="form-name balance-form-name">Statement - 22</h1>
		<h4 class="form-type balance-form-type">Name of aided Ashram School:</h4>
		<h4 class="form-type balance-form-type"> Showing outstanding balance details Year <script>document.write(new Date().getFullYear()- 2);</script>-<script>document.write(new Date().getFullYear()- 1);</script></h4>

   
<!--End-Action boxes-->    

<!--Chart-box-->    

<!--End-Chart-box--> 
    <hr/>
  
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
             	<li class="active"><a data-toggle="tab" href="#tab1">1-5</a></li>
              	<li><a data-toggle="tab" href="#tab2">6-8</a></li>
              	<li><a data-toggle="tab" href="#tab3">9-12</a></li>
            </ul>
         </div>
      
      
      
        
         <div class="widget-content tab-content">
         
            <div id="tab1" class="tab-pane active">
						
						<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Serial No.</th>
								<th>Month</th>
								<th>Number of Total students(As the hostel Attendance)</th>
								<th colspan="13">The cost incurred on the basis of the Food Registry(in KiloGram)</th>
							</tr>
							<tr>
								<th style="border-top:0px solid #ddd;"></th>
								<th style="border-top:0px solid #ddd;"></th>
								<th style="border-top:0px solid #ddd;"></th>
								<th>Wheat/Flour</th>
								<th>Rice</th>
								<th>Pulses</th>
								<th>Oil</th>
								<th>Spices</th>
								<th>Gas</th>
								<th>Salt</th>	
								<th>Vegetables And Tuber roots</th>
								<th>Fest</th>
								<th>Usal / Breakfast / Pohe</th>
								<th>Cookies</th>
								<th>Sugar</th>
								<th>Peanut</th>
								<th>Remark</th>
							</tr>
							
							<tr >
								<th></th>
								<th>Measurement</th>
								<th>Students</th>
								<th>350 Gram</th>
								<th>350 Gram</th>
								<th>100 Gram</th>
								<th>35 Gram</th>
								<th>20 Gram</th>
								<th>1000</th>
								<th>15 Gram</th>
								<th>100 Gram</th>
								<th>150 Gram</th>
								<th>100 Gram</th>
								<th>150 Gram</th>
								<th>20 Gram</th>
								<th>25 Gram</th>
								
								<th>-</th>
							
								
							</tr>
							</thead>
							<tbody>	
						 <c:forEach items="${dietExpenditureMap1to5}" var="each">
						 <tr class="gradeX">
						 <td></td>
           					 	<td>${each.key}</td>           					 	
           					 		 <c:forEach items="${each.value}" var="list">
           					 			 <td>${list.value}</td>           					 		
           					 		 </c:forEach>  
           					 		 <td>-</td>             					
							</tr>
          				 	</c:forEach>
      					 
							<tr>
							<td></td>
								<td style="width:100px;">Total Students</td>
							
								<td>${totalStudent1to5}</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td colspan="2">A) Total Weight Kilogram</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
						<td>&nbsp;</td>
							</tr>
							
						 	<tr>
								<td>&nbsp;</td>
								<td colspan="2" >B) Total Cost Rs.</td>
								 <c:forEach items="${totalPrice}" var="each">
									 
           							
           							 <td>${totalPrice.get(each.key)}</td>
           							
          				 	</c:forEach>
								<td>-</td>
							
								
							</tr> 
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >C)Average Price Rs./K.gram(B / A)</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >D)An Accredited Diet as per the standard of diet - (Total student number * Adjustable diet per day)</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >E)Excess weight shown above standard</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >C)Expenditure shown higher than standard</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >E)Non valid Expenditure </td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								
							</tr>
							</tbody>
						</table>
						
			</div>

            <div id="tab2" class="tab-pane">
			<table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Serial No.</th>
								<th>Month</th>
								<th>Number of Total students(As the hostel Attendance)</th>
								<th colspan="13">The cost incurred on the basis of the Food Registry(in KiloGram)</th>
							</tr>
							<tr>
								<th style="border-top:0px solid #ddd;"></th>
								<th style="border-top:0px solid #ddd;"></th>
								<th style="border-top:0px solid #ddd;"></th>
								<th>Wheat/Flour</th>
								<th>Rice</th>
								<th>Pulses</th>
								<th>Oil</th>
								<th>Spices</th>
								<th>Gas</th>
								<th>Salt</th>	
								<th>Vegetables And Tuber roots</th>
								<th>Fest</th>
								<th>Usal / Breakfast / Pohe</th>
								<th>Cookies</th>
								<th>Sugar</th>
								<th>Peanut</th>
								<th>Remark</th>
							</tr>
							
							<tr >
								<th></th>
								<th>Measurement</th>
								<th>Students</th>
								<th>400 Gram</th>
								<th>400 Gram</th>
								<th>100 Gram</th>
								<th>35 Gram</th>
								<th>20 Gram</th>
								<th>1000</th>
								<th>15 Gram</th>
								<th>150 Gram</th>
								<th>150 Gram</th>
								<th>100 Gram</th>
								<th>150 Gram</th>
								<th>20 Gram</th>
								<th>25 Gram</th>
								<th>-</th>
							
								
							</tr>
							</thead>
							<tbody>	
						 <c:forEach items="${dietExpenditureMap6to8}" var="each">
						 <tr class="gradeX">
						 <td></td>
           					 	<td>${each.key}</td>           					 	
           					 		 <c:forEach items="${each.value}" var="list">
           					 			 <td>${list.value}</td>           					 		
           					 		 </c:forEach>  
           					 		 <td>-</td>             					
							</tr>
          				 	</c:forEach>
      					 
							<tr>
							<td></td>
								<td >Total Students</td>
								<td>${totalStudent6to8}</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >A) Total Weight Kilogram</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								
							
							</tr>
							
						 	<tr>
								<td>&nbsp;</td>
								<td colspan="2"  >B) Total Cost Rs.</td>
							 <c:forEach items="${totalPrice}" var="each">
									 
           							
           							 <td>${totalPrice.get(each.key)}</td>
           							
          				 	</c:forEach>
								<td>-</td>
							
								
							</tr> 
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >C)Average Price Rs./K.gram(B / A)</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >D)An Accredited Diet as per the standard of diet - (Total student number * Adjustable diet per day)</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >E)Excess weight shown above standard</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >C)Expenditure shown higher than standard</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >E)Non valid Expenditure </td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								
							</tr>
							</tbody>
						</table>
           </div>
           
           
            <div id="tab3" class="tab-pane">
            <table class="table table-bordered data-table with-check" id="my-table">
							<thead>
							<tr>
								<th>Serial No.</th>
								<th>Month</th>
								<th>Number of Total students(As the hostel Attendance)</th>
								<th colspan="13">The cost incurred on the basis of the Food Registry(in KiloGram)</th>
							</tr>
							<tr>
								<th style="border-top:0px solid #ddd;"></th>
								<th style="border-top:0px solid #ddd;"></th>
								<th style="border-top:0px solid #ddd;"></th>
								<th>Wheat/Flour</th>
								<th>Rice</th>
								<th>Pulses</th>
								<th>Oil</th>
								<th>Spices</th>
								<th>Gas</th>
								<th>Salt</th>	
								<th>Vegetables And Tuber roots</th>
								<th>Fest</th>
								<th>Usal / Breakfast / Pohe</th>
								<th>Cookies</th>
								<th>Sugar</th>
								<th>Peanut</th>
								<th>Remark</th>
							</tr>
							
							<tr >
								<th></th>
								<th>Measurement</th>
								<th>Students</th>
								<th>450 Gram</th>
								<th>450 Gram</th>
								<th>100 Gram</th>
								<th>35 Gram</th>
								<th>20 Gram</th>
								<th>1000</th>
								<th>15 Gram</th>
								<th>150 Gram</th>
								<th>150 Gram</th>
								<th>100 Gram</th>
								<th>150 Gram</th>
								<th>20 Gram</th>
								<th>25 Gram</th>
								<th>-</th>
							
								
							</tr>
							</thead>
							<tbody>	
						 <c:forEach items="${dietExpenditureMap9to12}" var="each">
						 <tr class="gradeX">
						 <td></td>
           					 	<td>${each.key}</td>           					 	
           					 		 <c:forEach items="${each.value}" var="list">
           					 			 <td>${list.value}</td>           					 		
           					 		 </c:forEach>  
           					 		 <td>-</td>             					
							</tr>
          				 	</c:forEach>
      					 
							<tr>
							<td></td>
								<td style="width:100px;">Total Students</td>
								<td>${totalStudent9to12}</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
								<td>----</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >A) Total Weight Kilogram</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								
							
							</tr>
							
						 	<tr>
								<td>&nbsp;</td>
								<td colspan="2"  >B) Total Cost Rs.</td>
						 <c:forEach items="${totalPrice}" var="each">
									 
           							
           							 <td>${totalPrice.get(each.key)}</td>
           							
          				 	</c:forEach>
								<td>-</td>
							
								
							</tr> 
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >C)Average Price Rs./K.gram(B / A)</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >D)An Accredited Diet as per the standard of diet - (Total student number * Adjustable diet per day)</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >E)Excess weight shown above standard</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >C)Expenditure shown higher than standard</td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
							</tr>
							
							<tr>
								<td>&nbsp;</td>
								<td class="total_weight" >E)Non valid Expenditure </td>
								<td style="border-left:0px solid #ddd; width:75px;">&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
									<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								<td>&nbsp;</td>
								
							</tr>
							</tbody>
						</table>
			</div>
			
		</div>
        </div> <!-- end of widget-content -->
         </div>
		<!-- </form> -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->


<!--end-main-container-part-->


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
	        $(this).find('td:nth-child(1)').html(index+(-2));
	    });
	};

	addSerialNumber();
   </script>
<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
  <!--  Script for datepicker -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>



<!-- Script for Next and Previous Buttons -->
<script src="${pageContext.request.contextPath}/assets/js/vendor/bootstrap.min.js"  integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<!-- End Script for Next and Previous button -->

<!--  Script for datepicker -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>


<!--  End Script for datepicker -->
 <!--  Script for select multiple attribute  -->
<script src="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.jquery.min.js"></script>
<link href="https://cdn.rawgit.com/harvesthq/chosen/gh-pages/chosen.min.css" rel="stylesheet"/>

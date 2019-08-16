<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="com.ssdit.edu.entity.InventoryItem" %>

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
     p {
         font-size:12px;
         color:red;
       }	
</style>
</head>
<script type="text/javascript">
	function calculation(){
		var quantify = document.getElementById("quantity").value;
		var rate = document.getElementById("rate").value;
		var gst = document.getElementById("gst").value;
		var amount = quantify * rate;
		var gstc= (amount*gst)/100;
		document.getElementById("gstc").value = gstc;
		document.getElementById("actual_cost").value = amount;
		document.getElementById("price").value = amount + gstc;
	
		
	}
</script>
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
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/stocks" title="Inventory list" class="tip-bottom">Inventory List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Stock Management</h1>
    </div>
<!--End-Action boxes-->    

	<%  Map<Long,String> vendorsMap = (Map<Long,String>) request.getAttribute("vendorsMap");
		Map<String,List<InventoryItem>> mapOfItems = (Map<String,List<InventoryItem>>) request.getAttribute("mapOfItems");
			
	%>
	
    <hr/>
    <div class="row-fluid" style="display:block;">
       <!-- end of span6 -->
      <!--<div class="span6">-->
	  <div class="span12">
        
		
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active"><a data-toggle="tab" href="#tab1">Inventory Item</a></li>
             
            </ul>
         </div>
         
        
		 <!-- <form action="#" method="get" class="form-horizontal" id="inventory_form" name="inventory_form"> -->
         <div class="widget-content tab-content">

			<div id="tab1" class="tab-pane active">
			<!-- start Second tab form design -->
			<form:form action="/admin/stocks/add" method="post" class="form-horizontal" onSubmit="return validatePurchaseInformation(this);" id="inventory_form" name="inventory_form" modelAttribute="inventoryPurchaseDTO">
			    <div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Inventory Item (Form - 18 AND 19)</h5>
						</div>
					<div class="widget-content nopadding">
						<!--<form action="#" method="get" class="form-horizontal">-->
							<div class="control-group">
									<label class="control-label">Category : </label>
										<div class="controls">
											<form:select class="span8 mask text" id="vendor_category" name="vendor_category" path="category" onchange="return validatePurchaseInformation(this);">
												<form:option value="None">Select Category</form:option>
												<form:option value="School">School</form:option>
												<form:option value="Hostel">Hostel</form:option>
											</form:select>
											<p id="p1"></p>
										</div>
							</div>
							<div class="control-group">
									<label class="control-label">Vendor : </label>
										<div class="controls">
											<form:select class="span8 mask text" id="vendor" name="vendor" path="vendor" onchange="return validatePurchaseInformation(this);">
												<form:option value="None">Select Vendor</form:option>
												<%for (Map.Entry<Long,String> vendor : vendorsMap.entrySet()){ %>
													<option value="<%=vendor.getKey()%>"><%=vendor.getValue() %></option>
												<%}%>
											</form:select>
											<p id="p2"></p>
										</div>
							</div>
							<div class="control-group">
									<label class="control-label">Type : </label>
										<div class="controls">
											<select class="span8 mask text" id="inventory_type" name="inventory_type" onchange="return validatePurchaseInformation(this);">
												<option value="None">-- Select Type --</option>
												<%for (Map.Entry<String,List<InventoryItem>> vendor : mapOfItems.entrySet()){ %>
													<option value="<%=vendor.getKey()%>"><%=vendor.getKey() %></option>
												<%}%>
											</select>
											<p id="p3"></p>
										</div>
							</div>
							
							<div class="control-group" style="display:none;" id="eatable">
									<label class="control-label">Inventory Item :</label>
										<div class="controls">
											<form:select class="span8 mask text" id="inventory_item_eatable" name="inventory_item" path="item" onchange="return validatePurchaseInformation(this);">
												<form:option value="None">--- Select Items ---</form:option>
													<%
														List<InventoryItem> itemsList=mapOfItems.get("Eatable");
														for(InventoryItem item : itemsList) {
													%>
														<form:option value="<%=item.getId()%>"><%=item.getItem()%></form:option>
													<%
														}
													%>
											</form:select>
											<p id="p4"></p>
										</div>
							</div>
							
							<div class="control-group" style="display:none;" id="non-eatable">
									<label class="control-label">Inventory Item :</label>
										<div class="controls">
											<form:select class="span8 mask text" id="inventory_item_nonEatable" name="inventory_item" path="item" onchange="return validatePurchaseInformation(this);">
												<form:option value="None">-- Select NonEatable Items --</form:option>
												<%
														List<InventoryItem> itemsList=mapOfItems.get("NonEatable");
													    for(InventoryItem item : itemsList) {
												%>
													<form:option value="<%=item.getId()%>"><%=item.getItem()%></form:option>
												<%
														}
												%>
											</form:select>
											<p id="p5"></p>	
										</div>
							</div> 
								
							<div class="control-group">
									<label for="normal" class="control-label">Quantity : </label>
										<div class="controls">
											<form:input type="number" id="quantity" class="span8 mask text" autocomplete="off" name="quantity" path="quantity" onkeyup="calculation();  validatePurchaseInformation(this);"  placeholder="0"/>
										    <p id="p6"></p>
										</div>
							</div>
							<div class="control-group">
									<label class="control-label">Unit : </label>
										<div class="controls">
											<form:select class="span8 mask text" id="unit" name="unit" path="unit" onchange="return validatePurchaseInformation(this);">
												<form:option value="None">Select Unit</form:option>
												<form:option value="Kilogram">Kilogram</form:option>
												<form:option value="Liter">Liter</form:option>
												<form:option value="Pieces">Pieces</form:option>
											</form:select>
											<p id="p7"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">Rate : </label>
										<div class="controls">
											<form:input type="text" id="rate" class="span8 mask text" autocomplete="off" name="rate" path="rate" onkeyup="calculation(); validatePurchaseInformation(this);"  placeholder="0" />
										    <p id="p8"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">GST (percentage) : </label>
										<div class="controls">
											<input type="text" id="gst" class="span8 mask text" autocomplete="off" name="gst" path="discount" onkeyup="calculation(); validatePurchaseInformation(this);" placeholder="0" />
										    <p id="p9"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">GST (calculated amount) : </label>
										<div class="controls">
											<input type="text" id="gstc" autocomplete="off" class="span8 mask text" name="gst" value="0" ReadOnly="true"/>
										</div>
							</div>
							<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<form:input type="number" autocomplete="off" class="span11" name="actual_cost" id="actual_cost" disabled="false" path="actualCost" value="0" ReadOnly="true" />
											</div>
							</div>			
											
							<div class="control-group">
									<label for="normal" class="control-label">Amount Paid : </label>
										<div class="controls">
											<form:input type="text" class="span8 mask text" id="price" disabled="false" name="price" path="paidAmount" ReadOnly="true"/>
										</div>
							</div>
							<div class="control-group">
										<label class="control-label">Approved Cost :</label>
											<div class="controls">
												<form:input type="number" class="span11" autocomplete="off" name="approved_cost" id="approved_cost" path="approvedCost" onkeyup="return validatePurchaseInformation(this);" />
											    <p id="p10"></p>
											</div>
							</div>
							<div class="control-group">
										<label class="control-label">Non-Approved Cost:</label>
											<div class="controls">
												<form:input type="number" class="span11" autocomplete="off" name="refused_cost" id="refused_cost" path="nonApprovedCost" onkeyup="return validatePurchaseInformation(this);"/>
										          <p id="p11"></p>
										</div>
							</div>

							<div class="control-group">
										<label class="control-label">Reasons For Non-Approved Cost:</label>
											<div class="controls">
												<form:textarea class="span11" autocomplete="off" name="reasons_invalid_cost" id="reasons_invalid_cost" path="nonApprovedCostReason" onkeyup="return validatePurchaseInformation(this);" />
											    <p id="p12"></p>
											</div>
							</div>
				<!-- 	<div class="control-group">
									<label for="normal" class="control-label"> Date : </label>
										<div class="controls">
											<input type="date" id="purchase_date" class="span8 mask text" path="purchaseDate" name="purchase_date" 
											onClick="return validatePurchaseInformation(this);">
											<p id="p13"></p>
										</div>
								</div> -->
								
								<div class="control-group">
									<!--<label for="normal" class="control-label">DOB : <span id="errorbox">*</span></label>
										<div class="controls">
											<input type="date" id="datepicker" class="span8 mask text" name="date_of_birth"> 
											<!-- <input type="text" id="datepicker" class="span8 mask text"> --->
											
										<!--</div>-->
										<label class="control-label col-sm-2 requiredField" for="date">Date Of Purchase : </label>
									
										<div class="controls">
											<div class="input-group">
												<div class="input-group-addon">
													<i class="fa fa-calendar" style="display:none;"></i>
													<form:input class="form-control" id="purchase_date" name="purchase_date" placeholder="MM/DD/YYYY" type="date" path="purchaseDate" onchange="return validatePurchaseInformation(this);" />
												    <p id="p5"></p>
												</div>
											</div>
										</div>
								</div>
							<div class="form-actions" >
							 <input type="submit" class="btn btn-success" id="purchase_info" onClick="validatePurchaseInformation(this)">
							</div>
						
					</div>
					</div>
      
       
				</div> <!-- end of span6 -->
			</form:form>
           </div>

           <!-- end of tab2 -->

            <!-- end of tab3 -->
        </div> <!-- end of widget-content -->
     </div><!-- end of widget-box -->
   </div> <!-- end of span12 -->
   </div> <!-- end of row-fluid --->
 </div> <!-- end of container-fluid -->
</div>


<!-- End Of Main-contain-part -->

<!--Footer-part-->
     <%@ include file="../PageParts/footer.jsp" %>
      <script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/customjs/validationLibrary.js"></script>
 <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
     
<script type="text/javascript">  			
function validatePurchaseInformation(activeElement){
	var cat = $('#vendor_category').val();
	var vndr = $('#vendor').val();
	var inventory = $('#inventory_type').val();
	var inventoryItem=$('#inventory_item_eatable').val();
	var inventoryItemNon=$('#inventory_item_nonEatable').val();
	var qty = $('#quantity').val();
	var unt = $('#unit').val();
	var rte = $('#rate').val();
	var gstRate = $('#gst').val();
	var approved = $('#approved_cost').val();
	var refused= $('#refused_cost').val();
	var reasons= $('#reasons_invalid_cost').val();
	var date= $('#purchase_date').val();

if(activeElement.id == "purchase_info" || activeElement.id == "vendor_category" ){
	cat=validateDropdown(cat,"#p1","#vendor_category");
}if(activeElement.id == "purchase_info" || activeElement.id == "vendor" ){
	vndr=validateDropdown(vndr,"#p2","#vendor");
}if(activeElement.id == "purchase_info" || activeElement.id == "inventory_type" ){
	inventory=validateDropdown(inventory,"#p3","#inventory_type");
}if(activeElement.id == "purchase_info" || activeElement.id == "inventory_item_eatable" ){
	inventoryItem=validateDropdown(inventoryItem,"#p4","#inventory_item_eatable");
}if(activeElement.id == "purchase_info" || activeElement.id == "inventory_item_nonEatable" ){
	inventoryItemNon=validateDropdown(inventoryItemNon,"#p5","#inventory_item_nonEatable");
}if(activeElement.id == "purchase_info" || activeElement.id == "quantity" ){
	qty=validateNonEmpty(qty,"#p6","#quantity");
}if(activeElement.id == "purchase_info" || activeElement.id == "unit" ){
	unt=validateDropdown(unt,"#p7","#unit");
}if(activeElement.id == "purchase_info" || activeElement.id == "rate" ){
	rte=validateNonEmpty(rte,"#p8","#rate");
}if(activeElement.id == "purchase_info" || activeElement.id == "gst" ){
	gstRate=validateNonEmpty(gstRate,"#p9","#gst");
}if(activeElement.id == "purchase_info" || activeElement.id == "approved_cost" ){
	approved=validateNonEmpty(approved,"#p10","#approved_cost");
}if(activeElement.id == "purchase_info" || activeElement.id == "refused_cost" ){
	refused=validateNonEmpty(refused,"#p11","#refused_cost");
}if(activeElement.id == "purchase_info" || activeElement.id == "reasons_invalid_cost" ){
	reasons=validateNonEmpty(reasons,"#p12","#reasons_invalid_cost");
}if(activeElement.id == "purchase_info" || activeElement.id == "purchase_date" ){
	date=validateNonEmpty(date,"#p13","#purchase_date");
}if(cat && vndr && inventory && inventoryItem && inventoryItemNon && qty && unt && rte && gstRate && approved && refused && reasons && date){
	return true;
}else{
	return false;
}

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
     <script>
     populateCountries("country","state");
     </script>
  
     <!--  For Select Eatable and Non-eatable Items -->
     <script>
     $('#inventory_type').on('change',function(){
    	    if( $(this).val()==="Eatable"){
    	    $("#eatable").show()
    	    }
    	    else{
    	    $("#eatable").hide()
    	    }
    	    if($(this).val()==="NonEatable"){
    	    $("#non-eatable").show()
    	    }
    	    else{
    	    $("#non-eatable").hide()
    	    }
    	});
     </script>
<!-- Footer-part End -->
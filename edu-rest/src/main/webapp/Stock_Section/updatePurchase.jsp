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
<!--breadcrumbs-->
  <div id="content-header">
    <div id="breadcrumb"> <a href="index.html" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a>&nbsp;<a href="<%=applicationURL%>/admin/stocks" title="inventory list" class="tip-bottom">Inventory List</a></div>
  </div>
<!--End-breadcrumbs-->

<!--Action boxes-->
  <div class="container-fluid">
    <div class="quick-actions_homepage">
       <h1>Stock Management</h1>
    </div>
<!--End-Action boxes-->    


    <hr/>
    <div class="row-fluid" style="display:block;">
      
	  <div class="span12">
        
      <div class="widget-box">
         <div class="widget-title">
            <ul class="nav nav-tabs">
              <li class="active" style="display:block;"><a data-toggle="tab" href="#tab1">Inventory Item</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab2">Inventory Item</a></li>
              <li style="display:none;"><a data-toggle="tab" href="#tab3">Experience Details</a></li>
            </ul>
         </div>
		 <form action="#" method="get" class="form-horizontal" onSubmit="return validatePurchaseInformation(this);">
         <div class="widget-content tab-content">
            			
			<div id="tab1" class="tab-pane active">
			<!-- start Second tab form design -->
			    <div class="span6">
					<div class="widget-box">
						<div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
							<h5>Edit Inventory Item</h5>
						</div>
					<div class="widget-content nopadding">
						<!--<form action="#" method="get" class="form-horizontal">-->
							<div class="control-group">
									<label class="control-label">Category : </label>
										<div class="controls">
											<select class="span8 mask text" id="vendor_category" name="vendor_category" onchange="return validatePurchaseInformation(this);">
												<option value="">Select Category</option>
												<option>School</option>
												<option>Hostel</option>
											</select>
											<p id="p1"></p>
										</div>
							</div>
							<div class="control-group">
									<label class="control-label">Vendor :</label>
										<div class="controls">
											<select class="span8 mask text" id="vendor" name="vendor" onchange="return validatePurchaseInformation(this);">
												<option>Select Vendor</option>
												<option>ABC</option>
												<option>XYZ</option>
												<option>PQR</option>
												<option>ASDFD</option>
											</select>
											<p id="p2"></p>
										</div>
							</div>
							
							<div class="control-group">
									<label class="control-label">Type : </label>
										<div class="controls">
											<select class="span8 mask text" id="inventory_type" name="inventory_type" onchange="return validatePurchaseInformation(this);">
												<option value="">-- Select Type --</option>
												<option value="Eatable">Eatable</option>
												<option value="Non-Eatable">Non-Eatable</option>
											</select>
											<p id="p3"></p>
										</div>
							</div>
							<div class="control-group" style="display:none;" id="eatable">
									<label class="control-label">Inventory Item :</label>
										<div class="controls">
											<select class="span8 mask text" id="inventory_item_eatable" name="inventory_item_eatable" onchange="return validatePurchaseInformation(this);">
												<option value="0">--- Select Items ---</option>
												<option>Wheat/Jowar</option>
												<option>Rice</option>
												<option>Pulses</option>
												<option>Grocery</option>
												<option>Oil</option>
												<option>Spices(Turmeric,Mustard,Cumin,Pepper,Kalami Spice,Coriander seeds,etc.)</option>
												<option>Milk</option>
												<option>Eggs</option>
												<option>Mutton</option>
												<option>Fruits</option>
												<option>Salt</option>
												<option>Vegetables</option>
												<option>Feast</option>
												<option>Rust(chawl,Mutki,Gram,etc.)</option>
												<option>Breakfast</option>
												<option>Sugar</option>
											</select>
											<p id="p4"></p>
										</div>
							</div>
							
							<div class="control-group" style="display:none;" id="non-eatable">
									<label class="control-label">Inventory Item :</label>
										<div class="controls">
											<select class="span8 mask text" id="inventory_item_eatable" name="inventory_item_eatable" onchange="return validatePurchaseInformation(this);">
												<option value="0">-- Select NonEatable Items --</option>
												<option value="">Uniform Expense</option>
												<option value="">BedClothes Expense</option>
												<option value="">Blankets Expense</option>
												<option value="">Vessels Expense</option>
												<option value="">Entertainment And Sporting Goods</option>
												<option value="">Night Gown/Kurta Pajama</option>
												<option value="">Soap And Coconut Oil</option>
												<option value="">Firewood / Gas </option>
												<option value="">Traffic</option>
												<option value="">Logistics</option>
											</select>	
											<p id="p5"></p>
										</div>
							</div> 
							
							<div class="control-group">
									<label for="normal" class="control-label">Quantity</label>
										<div class="controls">
											<input type="text" id="quantity" class="span8 mask text" value="" autocomplete="off" onkeyup="return validatePurchaseInformation(this);">
											<p id="p6"></p>
										</div>
							</div>
							<div class="control-group">
									<label class="control-label">Unit :</label>
										<div class="controls">
											<select class="span8 mask text" id="unit" name="unit" autocomplete="off" onchange="return validatePurchaseInformation(this);">
												<option>Select Unit</option>
												<option>kg</option>
												<option>ltr</option>
											</select>
											<p id="p7"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">Re-order Level</label>
										<div class="controls">
											<input type="text" id="reorder" class="span8 mask text" value="" autocomplete="off" onkeyup="return validatePurchaseInformation(this);">
											<p id="p8"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">Free</label>
										<div class="controls">
											<input type="text" id="free" class="span8 mask text" value="" autocomplete="off" onkeyup="return validatePurchaseInformation(this);">
											<p id="p9"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">Discount</label>
										<div class="controls">
											<input type="text" id="discount" class="span8 mask text" autocomplete="off" value="" onkeyup="return validatePurchaseInformation(this);">
											<p id="p10"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">MRP</label>
										<div class="controls">
											<input type="text" id="mrp" class="span8 mask text" autocomplete="off" value="" onkeyup="return validatePurchaseInformation(this);">
											<p id="p11"></p>
										</div>
							</div>
							<div class="control-group">
									<label for="normal" class="control-label">Rate</label>
										<div class="controls">
											<input type="text" id="rate" class="span8 mask text" autocomplete="off" value="" onkeyup="return validatePurchaseInformation(this);">
											<p id="p12"></p>
										</div>
							</div>
							<div class="control-group">
										<label class="control-label">Actual Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="actual_cost" autocomplete="off" id="actual_cost" value="500" onkeyup="return validatePurchaseInformation(this);"/>
												<p id="p13"></p>
											</div>
							</div>

							<div class="control-group">
										<label class="control-label">Approved Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="approved_cost" autocomplete="off" id="appoved_cost" value="400" onkeyup="return validatePurchaseInformation(this);"/>
												<p id="p14"></p>
											</div>
							</div>

							<div class="control-group">
										<label class="control-label">Invalid Cost:</label>
											<div class="controls">
												<input type="number" class="span11" name="invalid_cost" autocomplete="off" id="invalid_cost" value="100" onkeyup="return validatePurchaseInformation(this);"/>
												<p id="p15"></p>
											</div>
							</div>

							<div class="control-group">
										<label class="control-label">Reasons For Invalid Cost:</label>
											<div class="controls">
												<textarea class="span11" id="reasons" name="reasons_invalid_cost" autocomplete="off" onkeyup="return validatePurchaseInformation(this);"></textarea>
												<p id="p16"></p>
											</div>
							</div>
							<div class="form-actions" >
							 <input type="submit" class="btn btn-success" id="purchase_info" onClick="validatePurchaseInformation(this)">
							</div>
						<!--</form>-->
					</div>
					</div>
      
       
				</div> <!-- end of span6 -->
	<!-- end of second form tab design -->
			
           </div>
           <!-- end of tab1 -->
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
	var order = $('#reorder').val();
	var fre = $('#free').val();
	var dist = $('#discount').val();
	var total = $('#mrp').val();
	var price = $('#rate').val();
	var actual = $('#actual_cost').val();
	var approved = $('#approved_cost').val();
	var refused= $('#refused_cost').val();
	var reasons= $('#reasons_invalid_cost').val();

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
}if(activeElement.id == "purchase_info" || activeElement.id == "reorder" ){
	order=validateNonEmpty(order,"#p8","#reorder");
}if(activeElement.id == "purchase_info" || activeElement.id == "free" ){
	fre=validateNonEmpty(fre,"#p9","#free");
}if(activeElement.id == "purchase_info" || activeElement.id == "discount" ){
	dist=validateNonEmpty(dist,"#p10","#discount");
}if(activeElement.id == "purchase_info" || activeElement.id == "mrp" ){
	total=validateNonEmpty(total,"#p11","#mrp");
}if(activeElement.id == "purchase_info" || activeElement.id == "rate" ){
	price=validateNonEmpty(fre,"#p12","#rate");
}if(activeElement.id == "purchase_info" || activeElement.id == "actual_cost" ){
	actual=validateNonEmpty(actual,"#p13","#actual_cost");
}if(activeElement.id == "purchase_info" || activeElement.id == "aproved_cost" ){
	approved=validateNonEmpty(approved,"#p14","approved_cost"");
}if(activeElement.id == "purchase_info" || activeElement.id == "refused_cost" ){
	refused=validateNonEmpty(approved,"#p15","refused_cost"");
}if(activeElement.id == "purchase_info" || activeElement.id == "reasons_invalid_cost" ){
	reasons=validateNonEmpty(reasons,"#p16","#reasons_invalid_cost");
}if(cat && vndr && inventory && inventoryItem && inventoryItemNon && qty && unt && order && fre && dist && total && price && actual && approved && refused && reasons){
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
     
     $('#inventory_type').on('change',function(){
    	    if( $(this).val()==="Eatable"){
    	    $("#eatable").show()
    	    }
    	    else{
    	    $("#eatable").hide()
    	    }
    	    if($(this).val()==="Non-Eatable"){
    	    $("#non-eatable").show()
    	    }
    	    else{
    	    $("#non-eatable").hide()
    	    }
    	});
     </script>
     </script>
<!-- Footer-part End -->
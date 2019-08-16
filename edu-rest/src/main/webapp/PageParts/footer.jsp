<!--Footer-part-->

<div class="row-fluid">
  <div id="footer" class="span12"> 2018 &copy; School ERP</div>
</div>

<!--end-Footer-part-->

<script src="${pageContext.request.contextPath}/assets/js/excanvas.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.custom.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.flot.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.flot.resize.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.peity.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/fullcalendar.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.dashboard.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.gritter.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.interface.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.chat.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.validate.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.form_validation.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.wizard.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.uniform.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/select2.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.popover.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/jquery.dataTables.min.js"></script> 
<script src="${pageContext.request.contextPath}/assets/js/matrix.tables.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/countries.js"></script>
<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {
      
          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();            
          } 
          // else, send page to designated URL            
          else {  
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
<script>
$('[data-type="adhaar-number"]').keyup(function() {
  var value = $(this).val();
  value = value.replace(/\D/g, "").split(/(?:([\d]{4}))/g).filter(s => s.length > 0).join("-");
  $(this).val(value);
});

$('[data-type="adhaar-number"]').on("change, blur", function() {
  var value = $(this).val();
  var maxLength = $(this).attr("maxLength");
  if (value.length != maxLength) {
    $(this).addClass("highlight-error");
  } else {
    $(this).removeClass("highlight-error");
  }
});
</script>
<!--  For langauge translation -->
<script type="text/javascript">
function googleTranslateElementInit() {
  new google.translate.TranslateElement({pageLanguage: 'en'}, 'google_translate_element');
}
</script>
<script type="text/javascript" src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
<!-- End for language translation -->
<!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

<script>
	$(document).ready(function(){
		var date_input=$('input[name="date"]'); //our date input has the name "date"
		var container=$('.bootstrap-iso form').length>0 ? $('.bootstrap-iso form').parent() : "body";
		date_input.datepicker({
			format: 'mm/dd/yyyy',
			container: container,
			todayHighlight: true,
			autoclose: true,
		})
	})
</script>
<!--  For staff form validations -->
	

<!-- End of staff form validations -->

</body>
</html>
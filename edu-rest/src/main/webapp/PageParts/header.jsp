<%@ page session = "true" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--Header-part-->
<div id="header">
  <h1><a href="dashboard.html">School ERP</a></h1>
</div>
<!--close-Header-part--> 


<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
  <ul class="nav">
  <c:if test="${pageContext.request.userPrincipal.name != null}">
  	<li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">Welcome ${pageContext.request.userPrincipal.name}</span><b class="caret"></b></a>
      <ul class="dropdown-menu">
        <li><a href="#"><i class="icon-user"></i> My Profile</a></li>
        <li class="divider"></li>
        <li><a href="#"><i class="icon-check"></i> My Tasks</a></li>
        <li class="divider"></li>
      </ul>
    </li>
    </c:if>
    <li class=""><a title="" href="/logout"><i class="icon icon-share-alt"></i> <span class="text">Logout</span></a></li>
  </ul>
  
  <!-- For google translation language -->
  		 <div id="google_translate_element"></div>
  <!-- End for google translation language -->
</div>
<!--close-top-Header-menu-->

<style>
#header h1{
		background:none !important;
		overflow:inherit !important;
		line-height:0px !important;
		top:35px !important;
		font-size:32.5px !important;
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
</style>
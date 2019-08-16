<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page import="java.lang.Boolean" %>
<!DOCTYPE html>
<html lang="en">


   
<head>
        <title>Matrix Admin</title><meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap-responsive.min.css" />
        <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/matrix-login.css" />
        <link href="${pageContext.request.contextPath}/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    </head>
    
     <%
      boolean errorStatus = false;
      if( null != request.getAttribute("errorStatus")){
    	 errorStatus = (boolean) request.getAttribute("errorStatus");  
      }
     	 
     %>
    
    <body>
        <div id="loginbox">            
            <form:form id="loginform" class="form-vertical" action="/school360/login" method="post" modelAttribute="loginDTO">
				 <div class="control-group normal_text"> <h3>School ERP</h3></div>
				 <%
				 	if(errorStatus){
				 	%>
				 		
				 		<div class="card bg-danger text-white">
    						<div class="card-body">Authentication failure! username or password is incorrect </div>
  						</div>
  						
				 	<%	
				 	}
				 %>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lg"><i class="icon-user"> </i></span><form:input type="text" id="username" name="username" autocomplete="off" path="username" placeholder="Username" />
                        </div>
                    </div>
                </div>
                <div class="control-group">
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_ly"><i class="icon-lock"></i></span><form:input type="password" id="password" name="password" autocomplete="off" path="password" placeholder="Password" />
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <span class="pull-left" style="display:none;"><a href="#" class="flip-link btn btn-info" id="to-recover">Lost password?</a></span>
                    <span class="pull-right"><input type="submit" class="btn btn-success" value="login"/></span>
                </div>
            </form:form>
            <form id="recoverform" action="#" class="form-vertical">
				<p class="normal_text">Enter your e-mail address below and we will send you instructions how to recover a password.</p>
				
                    <div class="controls">
                        <div class="main_input_box">
                            <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
                        </div>
                    </div>
               
                <div class="form-actions">
                    <span class="pull-left"><a href="#" class="flip-link btn btn-success" id="to-login">&laquo; Back to login</a></span>
                    <span class="pull-right"><a class="btn btn-info"/>Recover</a></span>
                </div>
            </form>
        </div>
    </body>

</html>

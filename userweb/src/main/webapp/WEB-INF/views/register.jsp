<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" /> 

         <section class="margin-bottom margin-top">
             <div class="container">
                 <div class="row">
                 	<div class="col-md-6 col-md-offset-3">
                 <div class="panel panel-default">
				  <h3 style="padding-left:10px;">注册新用户</h3>
			  	  <div class="panel-body">		  	  
					 <form class="form-horizontal" action="register_user" method="post" data-toggle="validator" role="form">
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">姓名</label>
					    <div class="col-sm-10">
					      <input type="text" class="form-control"  placeholder="Username in Chinese" name='name' required="required">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control"  placeholder="Email will be your login name" name='email' required="required" 
					      placeholder="Email" data-error="email address is invalid" >
					      <div class="help-block with-errors"></div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" id="inputPassword" placeholder="Password" name='password' required="required">
					      <div class="help-block with-errors"></div>	
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">Confirm</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control" id="inputPasswordConfirm" data-match="#inputPassword" 
					         data-match-error="these don't match" placeholder="Confirm password">
					      <div class="help-block with-errors"></div>	
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label"></label>
					    <div class="col-sm-10">
					      <c:if test="${error != null}">
					      	<div class="alert alert-warning" role="alert">${error}</div>
						</c:if>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-success">Submit</button>  						      
					    </div>
					  </div>
					</form>
				  </div>
				</div>
				</div>
                 </div>
             </div>
         </section>

		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
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

			  	  <div class="panel-body">
					 <form class="form-horizontal" action="<c:url value='/j_spring_security_check'/>" method="post" data-toggle="validator" role="form">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
					    <div class="col-sm-10">
					      <input type="email" class="form-control"  placeholder="Email" name='j_username' required="required" value="">
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
					    <div class="col-sm-10">
					      <input type="password" class="form-control"  placeholder="Password" name='j_password' required="required" value="">
					    </div>
					  </div>
<!-- 					  <div class="form-group"> -->
<!-- 					    <label for="inputPassword3" class="col-sm-2 control-label">Password</label> -->
<!-- 					    <div class="col-sm-10"> -->
<!-- 					      <img src="jcaptcha.jpg" /> <input type="text" name="jcaptcha" value="" /> -->
<!-- 					    </div> -->
<!-- 					  </div>					   -->
					  					  
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label"></label>
					    <div class="col-sm-10">
					      <c:if test="${error && SPRING_SECURITY_LAST_EXCEPTION != null}">
					      	<div class="alert alert-warning" role="alert">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</div>
						</c:if>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-2 col-sm-10">
					      <button type="submit" class="btn btn-success">Log in</button>  	
					        <a href="reset_password" class="alert">Forget Password</a>  						      
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
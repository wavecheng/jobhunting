<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" /> 

         <section class="margin-bottom margin-top">
             <div class="container">
                <div class="cont_title">
                    <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg"></div>
                    <div class="cont_title_txt_c">密码重置</div>
                    <div class="cont_title_txt_e ">Reset Password</div>
                </div>
           
                 <div class="row">
					 <div class="col-md-12">
					 <form class="form-horizontal" action="" method="post" data-toggle="validator" role="form">
					  <div class="form-group">
					    <label for="inputEmail3" class="col-sm-3 control-label">Please input your Email:</label>
					    <div class="col-sm-5">
					      <input type="email" class="form-control"  placeholder="Email" name="email" required="required" value="a@b.com">
					      <div class="help-block with-errors"></div>
					    </div>
					  </div>
					  <div class="form-group">
					    <label for="inputPassword3" class="col-sm-2 control-label"></label>
					    <div class="col-sm-10">
					      <c:if test="${msg!=null}">
					      	<div class="alert alert-warning" role="alert">${msg}</div>
						</c:if>
					    </div>
					  </div>
					  <div class="form-group">
					    <div class="col-sm-offset-3 col-sm-7">
					      <button type="submit" class="btn btn-success">Submit</button>  							      
					    </div>
					  </div>
					</form>
				  </div>
				</div>

         </section>
		
		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
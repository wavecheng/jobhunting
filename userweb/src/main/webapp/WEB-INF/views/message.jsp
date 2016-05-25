<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" /> 

         <section class="margin-bottom margin-top">
             <div class="container">
                 <div class="row">                	          		
	                <c:if test="${success == true}">
	                 	<div class="alert alert-info text-center">     
	                 		<c:choose>
	                 			<c:when test="${type=='register' }">
	                 				注册成功，请检查您的邮箱进行账号激活！
	                 			</c:when>
	                 			<c:when test="${type=='verify' }">
	                 				Email验证成功，请 <a href="user/mine" class="alert-link">登录</a>
	                 			</c:when>
	                 			<c:when test="${type=='change_password' }">
	                 				密码修改成功!
	                 			</c:when>
							 </c:choose>
						</div>
                 	</c:if>
	                <c:if test="${success == false}">
	                 	<div class="alert alert-danger text-center">     
	                 		<c:choose>
	                 			<c:when test="${type=='register' }">
	                 				注册失败！
	                 			</c:when>
	                 			<c:when test="${type=='verify' }">
	                 				无效的验证信息!
	                 			</c:when>
							 </c:choose>
						</div>
                 	</c:if>
				</div>
             </div>
         </section>
		
		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
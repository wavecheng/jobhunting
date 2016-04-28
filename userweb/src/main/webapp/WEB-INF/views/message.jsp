<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" /> 

         <section class="margin-bottom margin-top">
             <div class="container">
                 <div class="row">
                 	<div class="alert alert-info center">               		
	                 		<c:if test="${success == true}">
	                 		<c:choose>
	                 			<c:when test="${type=='register' }">
	                 				注册成功，请检查您的邮箱进行Email地址确认来激活！
	                 			</c:when>
	                 			<c:when test="${type=='verify' }">
	                 				Email验证成功，请<a href="login">登录</a>
	                 			</c:when>
	                 			<c:otherwise>
							        No comment sir...
							    </c:otherwise>
							    </c:choose>
                 		</c:if>
                 		
                 	</div>
				</div>
             </div>
         </section>
		
		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
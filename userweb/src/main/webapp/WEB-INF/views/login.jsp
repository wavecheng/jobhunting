<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="header.jsp" /> 

<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
	<p class="alert alert-error">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
</c:if>
		<form action="<c:url value='/j_spring_security_check'/>" method="post">
			<input type="text" name='j_username'>
			<input type="password" name='j_password'>
			<input type="submit" value="submit" >
		</form>
		
		<%@ include file="footer.jsp" %>
        </div>
    </div> 
</body>
</html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null}">
	<p class="alert alert-error">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</p>
</c:if>
<form action="<c:url value='/j_spring_security_check'/>" method="post">
	<input type="text" name='j_username'>
	<input type="password" name='j_password'>
	<input type="submit" value="submit" >
</form>
</body>
</html>
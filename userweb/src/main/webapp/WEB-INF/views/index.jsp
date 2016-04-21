<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/bootstrap-theme.min.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/style.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/own-style.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/icons.css"/>
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath}/resources/css/animate.min.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	${username},hello
        <security:authorize access="!isAuthenticated()">
            <li><a href="<spring:url value="/register"/>"><i class="glyphicon-user"></i>
                denglu
            </a></li>
        </security:authorize>
        <security:authorize access="hasRole('ROLE_ADMIN')">
            <li><a href="<spring:url value="/admin/users"/>"><i class="icon-user"></i>
                Admin
            </a></li>
           </security:authorize>   
<br/>hello...
<a href="admin">click to login </a>
</body>
</html>
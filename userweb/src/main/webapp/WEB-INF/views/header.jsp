<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"  %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>思杰招聘 | Citrix Jobs</title>
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/img/icon-favicon.png" />
    <meta name="description" content="思杰招聘 Citrix China recruiting job" />
    <link href="${pageContext.request.contextPath}/resources/css/vendors.css" rel="stylesheet"  />
    <link href="${pageContext.request.contextPath}/resources/css/style-blue.css" rel="stylesheet" title="default"  />
    <link href="${pageContext.request.contextPath}/resources/css/toastr.min.css" rel="stylesheet" title="default"  />
	<link href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet" title="default"  />
	
</head>
<body style="overflow: visible;">
    <div id="sb-site" >
        <div class="boxed">
            <header id="header-full-top" class="hidden-xs header-full">
                <div class="container">
                    <div class="header-full-title">
                        <h1></h1>
                    </div>
                    <nav class="top-nav">
                        <ul class="top-nav-social hidden-sm">
                            <li><a href="http://www.citrix.com/news/RSS.html" taret="_blank" class="animated fadeIn animation-delay-2 rss" title="Citrix新闻"><i class="fa fa-rss"></i></a></li>                           
                            <li><a href="http://www.linkedin.com/company/citrix?trk=tabs_biz_home" taret="_blank" class="animated fadeIn animation-delay-4 linkedin" title="LinkedIn"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="http://weibo.com/citrixcn" taret="_blank" class="animated fadeIn animation-delay-6 weibo"><i class="fa fa-weibo" title="思杰微博"></i></a></li>  
                            <li><a href="http://www.citrix.com.cn/" taret="_blank" class="animated fadeIn animation-delay-6 citrix" title="思杰中国"><img class="fa" src="${pageContext.request.contextPath}/resources/img/icon-favicon.png" /></a></li>
                        </ul>
                    </nav>
                </div> <!-- container -->
            </header> <!-- header-full -->

            <nav class="navbar navbar-default navbar-header-full navbar-dark yamm navbar-static-top" role="navigation" id="header">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <i class="fa fa-bars"></i>
                        </button>
                        <a id="ar-brand" class="navbar-brand hidden-lg hidden-md hidden-sm" href="<c:url value="/" />">思杰 | Citrix  <span>Jobs</span></a>
                    </div> <!-- navbar-header -->

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="<c:url value="/" />">首页</a>
                            </li>
                            <li>
                                <a href="<c:url value="/aboutus" />">认识思杰</a>
                            </li>
                            <li>
                                <a href="<c:url value="/work" />">人在思杰</a>
                            </li>
                            <li>
                                <a href="<c:url value="/voice" />">员工之声</a>
                            </li>
                            <li>
                                <a href="<c:url value="/video" />">思杰视频</a>
                            </li>
                        </ul>
                        <ul class="nav navbar-nav navbar-right">
                          	<security:authorize access="isAuthenticated()">         	
                          	
                           <li class="dropdown">
					          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><security:authentication property="principal.username" /></a>
					          <ul class="dropdown-menu">
		                            <li><a href="<c:url value="/user/update_resume" />" class="dropdown-toggle" ><i class="fa fa-user"></i> 个人简历</a></li>
		                            <li><a href="<c:url value="/user/apply" />" class="dropdown-toggle" ><i class="fa fa-file-text-o"></i> 我的申请</a></li>
					          		<li><a href="<c:url value="/user/change_password" />" class="dropdown-toggle" > <i class="fa fa-wrench"></i> 修改密码</a></li>
					          </ul>
					        </li>  
					        <li><a href="<c:url value="/user/logout" />" class="dropdown-toggle" ><i class="fa fa-circle-o-notch"></i> 退出</a></li>
                            </security:authorize>
        					<security:authorize access="!isAuthenticated()">
        					<li><a href="<c:url value="/register" />" class="dropdown-toggle" ><i class="fa fa-user"></i> 注册</a></li>
                      		<li><a href="<c:url value="/login" />" class="dropdown-toggle" ><i class="fa fa-user"></i> 登录</a></li>
                           </security:authorize>                          
                        </ul>
                    </div>
                </div>
            </nav>
            
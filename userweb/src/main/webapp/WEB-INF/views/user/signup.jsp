<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp" /> 

<form class="form-narrow form-horizontal" method="post" th:action="@{/signup}" th:object="${signupForm}">
    <fieldset>
        <legend>Please Sign Up</legend>
        <div class="form-group"  >
            <label for="email" class="col-lg-2 control-label">Email</label>
            <div class="col-lg-10">
                <input type="text" class="form-control" id="email" placeholder="Email address"   />
                <span class="help-block"   >Incorrect email</span>
            </div>
        </div>
        <div class="form-group"  >
            <label for="password" class="col-lg-2 control-label">Password</label>
            <div class="col-lg-10">
                <input type="password" class="form-control" id="password" placeholder="Password" />
                <span class="help-block"  >Incorrect password</span>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <button type="submit" class="btn btn-default">Sign up</button>
            </div>
        </div>
        <div class="form-group">
            <div class="col-lg-offset-2 col-lg-10">
                <p>Already have an account? <a href="login"  >Sign In</a></p>
            </div>
        </div>
    </fieldset>
</form>
<script src="${pageContext.request.contextPath}/js/vendors.js"></script>
</body>
</html>
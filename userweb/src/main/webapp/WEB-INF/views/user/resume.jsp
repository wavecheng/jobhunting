<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<jsp:include page="../header.jsp" /> 

            <section class="margin-bottom margin-top">
            <div class="container ">
                <div class="cont_title">
                    <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg"></div>
                    <div class="cont_title_txt_c">我的个人信息</div>
                    <div class="cont_title_txt_e ">MY RESUME</div>
                </div>
                <div class="row">
                	<div class="col-md-4">
						<div class="list-group">
						  <a href="#basic" class="list-group-item">个人信息</a>
						  <a href="#" class="list-group-item">教育经历</a>
						  <a href="#" class="list-group-item">语言能力</a>
						  <a href="#" class="list-group-item">项目经验</a>
						  <a href="#" class="list-group-item">其他信息</a>
						</div>
                	</div>
                	<div class="col-md-8">
                		<div class="panel panel-default">
							  <div class="panel-heading">个人信息</div>
							  <div class="panel-body">
							     <table class="table text-left noborder">
								    <tr><td class="col-xs-2">中午姓名：</td><td>${user.name}</td></tr>
								    <tr><td>中午姓名：</td><td>${user.name}</td></tr>
								    <tr><td>中午姓名：</td><td>${user.name}</td></tr>
								    <tr><td>中午姓名：</td><td>${user.name}</td></tr>
								    <tr><td>中午姓名：</td><td>${user.name}</td></tr>
								 </table>
							  </div>
							</div>
							
							<div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title">教育经历</h3>
							  </div>
							  <div class="panel-body">
							    Panel content
							  </div>
							</div>      
                	</div>                                          
                </div>
			</div>

            </section>

		
		<%@ include file="../footer.jsp" %>
        </div>
    </div> 
</body>
</html>
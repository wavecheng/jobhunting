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
						  <a href="#education" class="list-group-item">教育经历</a>
						  <a href="#" class="list-group-item">语言能力</a>
						  <a href="#" class="list-group-item">项目经验</a>
						  <a href="#" class="list-group-item">其他信息</a>
						</div>
                	</div>
                	<div class="col-md-8">
                		<div class="panel panel-default">
							  <div class="panel-heading">个人信息<a id="basic"></a></div>
							  <div class="panel-body">
							     <table class="table table-hover"  >
								    <tr><td class="col-xs-3 text-right">Name in Chinese:</td><td class="text-left"><strong>${user.name}</strong></td></tr>
								    <tr><td class="col-xs-3 text-right">Name in English:</td><td class="text-left">${user.nameEng}</td></tr>
								    <tr><td class="col-xs-3 text-right">Gender:</td><td class="text-left">${user.gender}</td></tr>
								    <tr><td class="col-xs-3 text-right">Mobile:</td><td class="text-left">${user.mobile}</td></tr>
								    <tr><td class="col-xs-3 text-right">Email:</td><td class="text-left">${user.email}</td></tr>
								    <tr><td class="col-xs-3 text-right">Personal ID:</td><td class="text-left">${user.idNo}</td></tr>
								    <tr><td class="col-xs-3 text-right">Date of Birth:</td><td class="text-left">${user.birthDate}</td></tr>
								    <tr><td class="col-xs-3 text-right">Married:</td><td class="text-left">${user.married}</td></tr>								    
								    <tr><td class="col-xs-3 text-right">Place of Origin City:</td>
								    	<td class="text-left">${user.birthProvince} ${user.birthCity}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right">Place of Current City:</td>
								    	<td class="text-left">${user.currentProvince} ${user.currentCity}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right">City to Take Exam:</td>
								    	<td class="text-left">${user.citytoExam}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right">University:</td><td class="text-left">${user.universityName}</td></tr>
								    <tr><td class="col-xs-3 text-right">Highest Degree:</td><td class="text-left">${user.degree}</td></tr>
								    <tr><td class="col-xs-3 text-right">Department:</td><td class="text-left">${user.depart}</td></tr>
								    <tr><td class="col-xs-3 text-right">Major:</td><td class="text-left">${user.major}</td></tr>
								 </table>
							  </div>
							</div>
							
							<div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="education">教育经历</h3>
							  </div>
							  <div class="panel-body">
							    <table class="table table-bordered table-hover"  >
							    	<tr>
							    		<th>From</td>
							    		<th>To</th>
							    		<th>University</th>
							    		<th>Department</th>
							    		<th>Major</th>
							    		<th>Degree</th>
							    		<th>Rank</th>
							    	</tr>
							    	<c:forEach items="${user.userEducation}" var="item">
							    		<td>${item.fromDate}</td>
							    		<td>${item.toDate}</td>
							    		<td>${item.university}</td>
							    		<td>${item.depart}</td>
							    		<td>${item.major}</td>
							    		<td>${item.degree}</td>
							    		<td>>${item.totalRank}%</td>
							    	</c:forEach>
							    </table>
							  </div>
						  </div>  
						  
						  <div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="education">教育经历</h3>
							  </div>
							  <div class="panel-body">
							    <table class="table table-bordered table-hover"  >
							    	<tr>
							    		<th>From</td>
							    		<th>To</th>
							    		<th>University</th>
							    		<th>Department</th>
							    		<th>Major</th>
							    		<th>Degree</th>
							    		<th>Rank</th>
							    	</tr>
							    	<c:forEach items="${user.userEducation}" var="item">
							    		<td>${item.fromDate}</td>
							    		<td>${item.toDate}</td>
							    		<td>${item.university}</td>
							    		<td>${item.depart}</td>
							    		<td>${item.major}</td>
							    		<td>${item.degree}</td>
							    		<td>>${item.totalRank}%</td>
							    	</c:forEach>
							    </table>
							  </div>
						  </div>   
						  
						  
						  <div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="education">教育经历</h3>
							  </div>
							  <div class="panel-body">
							    <table class="table table-bordered table-hover"  >
							    	<tr>
							    		<th>From</td>
							    		<th>To</th>
							    		<th>University</th>
							    		<th>Department</th>
							    		<th>Major</th>
							    		<th>Degree</th>
							    		<th>Rank</th>
							    	</tr>
							    	<c:forEach items="${user.userEducation}" var="item">
							    		<td>${item.fromDate}</td>
							    		<td>${item.toDate}</td>
							    		<td>${item.university}</td>
							    		<td>${item.depart}</td>
							    		<td>${item.major}</td>
							    		<td>${item.degree}</td>
							    		<td>>${item.totalRank}%</td>
							    	</c:forEach>
							    </table>
							  </div>
						  </div>   
						  
						  
						  <div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="education">教育经历</h3>
							  </div>
							  <div class="panel-body">
							    <table class="table table-bordered table-hover"  >
							    	<tr>
							    		<th>From</td>
							    		<th>To</th>
							    		<th>University</th>
							    		<th>Department</th>
							    		<th>Major</th>
							    		<th>Degree</th>
							    		<th>Rank</th>
							    	</tr>
							    	<c:forEach items="${user.userEducation}" var="item">
							    		<td>${item.fromDate}</td>
							    		<td>${item.toDate}</td>
							    		<td>${item.university}</td>
							    		<td>${item.depart}</td>
							    		<td>${item.major}</td>
							    		<td>${item.degree}</td>
							    		<td>>${item.totalRank}%</td>
							    	</c:forEach>
							    </table>
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
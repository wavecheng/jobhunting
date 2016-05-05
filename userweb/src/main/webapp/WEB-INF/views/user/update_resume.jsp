﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<% pageContext.setAttribute("newLineChar", "\n"); %>


<jsp:include page="../header.jsp" /> 

            <section class="margin-bottom margin-top">
            <div class="container ">
                <div class="cont_title">
                    <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg"></div>
                    <div class="cont_title_txt_c">我的个人信息</div>
                    <div class="cont_title_txt_e ">MY RESUME</div>
                    <a href="update_resume" class="btn btn-success pull-right">修改我的简历信息</a>
                </div>

                <div class="row">
                	<div class="col-md-4">
						<div class="list-group text-right ">
						  <a href="#basic" class="list-group-item  ">Personal Information</a>
						  <a href="#language" class="list-group-item ">Language Skill</a>
						  <a href="#education" class="list-group-item ">Education</a>						  
						  <a href="#project" class="list-group-item ">Projects</a>
						  <a href="#work" class="list-group-item ">Work History</a>
						</div>
                	</div>
                	<div class="col-md-8">
                		<div class="panel panel-default">
							  <div class="panel-heading">Personal Information<a id="basic"></a></div>
							  <div class="panel-body">
							     <table class="table table-hover"  >
								    <tr><td class="col-xs-3 text-right strong strong">Name in Chinese:</td><td class="text-left">${user.name}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Name in English:</td><td class="text-left">${user.nameEng}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Gender:</td><td class="text-left">${user.gender}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Mobile:</td><td class="text-left">${user.mobile}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Email:</td><td class="text-left">${user.email}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Personal ID:</td><td class="text-left">${user.idNo}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Date of Birth:</td><td class="text-left">${user.birthDate}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Married:</td><td class="text-left">${user.married}</td></tr>								    
								    <tr><td class="col-xs-3 text-right strong strong">Place of Origin City:</td>
								    	<td class="text-left">${user.birthProvince} ${user.birthCity}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong strong">Place of Current City:</td>
								    	<td class="text-left">${user.currentProvince} ${user.currentCity}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong strong">City to Take Exam:</td>
								    	<td class="text-left">${user.citytoExam}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong strong">University:</td><td class="text-left">${user.universityName}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Highest Degree:</td><td class="text-left">${user.degree}</td></tr>
								    <tr><td class="col-xs-3 text-right strong strong">Department:</td><td class="text-left">${user.depart}</td></tr>
								    <tr><td class="col-xs-3 text-right strong">Major:</td><td class="text-left">${user.major}</td></tr>
								 </table>
							  </div>
							</div>

                		<div class="panel panel-default">
							  <div class="panel-heading">Language Skill<a id="language"></a></div>
							  <div class="panel-body">
							     <table class="table table-hover"  >								    
								    <tr>
								    	<td class="col-xs-3 text-right strong strong">English Level:</td>
								    	<td class="text-left">${user.engLevel} (Score:${user.engHighestScore})</td>
								    	<td class="col-xs-3 text-right strong">Oral English Level:</td>
								    	<td class="text-left">${user.oral}</td>								    	
								    </tr>
								    <tr><td class="col-xs-3 text-right strong">TOEFL:</td>
								    	<td class="text-left">${user.toefl}</td>
								        <td class="col-xs-3 text-right strong strong">TOEIC:</td>
								    	<td class="text-left">${user.toeic}</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong">GRE:</td>
								    	<td class="text-left">${user.gre}</td>
								        <td class="col-xs-3 text-right strong">GMAT:</td>
								    	<td class="text-left">${user.gmat}</td>
								    </tr>
								    <tr>
								    	<td class="col-xs-3 text-right strong">Second Language:</td>
								    	<td class="text-left">${user.secLanguage}</td>
								    	<td class="col-xs-3 text-right strong">Language Level:</td>
								    	<td class="text-left">${user.secondLangLevel}</td>								    	
								    </tr>
								 </table>
							  </div>
							</div>
														
							<div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="education">Education</h3>
							  </div>
							  <div class="panel-body">
							    <table class="table table-bordered table-hover"  >
							    	<tr>
							    		<th>From</th>
							    		<th>To</th>
							    		<th>University</th>
							    		<th>Department</th>
							    		<th>Major</th>
							    		<th>Degree</th>
							    		<th>Rank</th>
							    	</tr>
							    	<c:forEach items="${user.userEducation}" var="item">
							    	  <tr>
							    		<td>${item.fromDate}</td>
							    		<td>${item.toDate}</td>
							    		<td>${item.university}</td>
							    		<td>${item.depart}</td>
							    		<td>${item.major}</td>
							    		<td>${item.degree}</td>
							    		<td>>${item.totalRank}%</td>
							    		</tr>
							    	</c:forEach>
							    </table>
							  </div>
						  </div>  
						  
						  <div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="project">Projects</h3>
							  </div>
							  <div class="panel-body">
							  <c:forEach items="${user.userProject}" var="item">
							    <table class="table displayUnit"  >
							    	<tr>
							    	  <td class="col-xs-3 text-right strong">Date Span:<td class="text-left">${item.fromDate} -- ${item.toDate}</td>
							    	</tr>
							    	<tr> 
							    	  <td class="col-xs-3 text-right strong">Name:</td><td class="text-left">${item.name}</td>
							    	</tr>
							    	<tr>
							    		<td class="col-xs-3 text-right strong">Description:</td>
							    		<td class="text-left">${fn:replace(item.description, newLineChar, "<br/>")}</td>
							    	</tr>
							    	<tr>
							    		<td class="col-xs-3 text-right strong">Duty and Role:</td>
							    		<td class="text-left">${fn:replace(item.duty, newLineChar, "<br/>")}</td>
							    	</tr>
							    </table>
							    <hr class="dotted" />
							    </c:forEach>
							  </div>
						  </div>   

						  
						  <div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="work">Work History</h3>
							  </div>
							  <div class="panel-body">
							  <c:forEach items="${user.userWork}" var="item">
							    <table class="table displayUnit"  >
							    	<tr>
							    	  <td class="col-xs-3 text-right strong">Date Span:<td class="text-left">${item.fromDate} -- ${item.toDate}
							    	  </td>
							    	</tr>
							    	<tr>
							    	  <td class="col-xs-3 text-right strong">Company:<td class="text-left">
							    	  	<strong>${item.company}</strong>  [${item.companyType}]
							    	  </td>
							    	</tr>
							    	<tr> 
							    	  <td class="col-xs-3 text-right strong">Position:</td><td class="text-left">${item.position}</td>
							    	</tr>
							    	<tr>
							    		<td class="col-xs-3 text-right strong">Work Description:</td>
							    		<td class="text-left">${fn:replace(item.description, newLineChar, "<br/>")}</td>
							    	</tr>
							    </table>
							    <hr class="dotted" />
							    </c:forEach>
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
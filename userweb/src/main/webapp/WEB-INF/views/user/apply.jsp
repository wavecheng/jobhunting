<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp" /> 

            <section class="margin-bottom margin-top">
                <div class="container">
                    <c:if test="${success==true}">
	                   <div class="alert alert-success text-center" role="alert">
	                        <h4><strong>Operation succeeded! </strong></h4>
	                    </div>
                    </c:if>
                    <c:if test="${success==false}">
	                   <div class="alert alert-error text-center" role="alert">
	                        <h4><strong>Operation failed! </strong></h4>
	                    </div>
                    </c:if>
                    <div class="cont_title">
                        <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg"></div>
                        <div class="cont_title_txt_c">我的申请</div>
                        <div class="cont_title_txt_e">MY APPLICATIONS</div>
                    </div>

                    <table class="table table-bordered table-hover" id="cam-application-list">
                        <thead>
                            <tr>
                                <th>申请职位</th>
                                <th>地点</th>
                                <th>申请时间</th>
                                <th>当前状态</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach  var="item" items="${applies}"> 
                            <tr>
                                <td><span data-toggle="tooltip" data-placement="right" title="${item.job.description}">${item.job.title}</span></td>
                                <td>${item.job.workLocation}</td>
                                <td>${item.applyTime}</td>
                                <td><span class="badge label-success">${item.status}</span></td>
                                <td>
                                <c:choose>
                                	<c:when test="${item.status=='Applying'}">
                                		<button class="btn btn-primary" data-toggle="modal" data-target="#myApplyModal" data-id="${item.id}"> Cancel</button>
                                	</c:when>
                                	<c:when test="${item.status=='Exam'}">
                                		<span class="badge label-success">笔试</span> <br/>
                                		${item.remark}
                                	</c:when>
                                	<c:when test="${item.status=='Passed'}">
                                		<span class="badge label-success">通过</span> <br/>
                                		${item.remark}
                                	</c:when>
                                	<c:when test="${item.status=='FirstInterview'}">
                                		<span class="badge label-success">面试</span> <br/>
                                		${item.remark}
                                	</c:when>
                                	<c:when test="${item.status=='Reject'}">
                                		<span class="badge label-danger">Rejected</span> <br/>
                                		非常遗憾您未能通过本职位的要求，感谢参与
                                	</c:when>
                                </c:choose>
                                </td>
                            </tr>
                            </c:forEach> 
                            <tr>
                                <td>Senior Software Development Engineer</td>
                                <td>Nanjing</td>
                                <td>2016-01-16 14:21:03</td>
                                <td><span class="badge label-danger">拒绝</span></td>
                                <td>感谢您的参与！</td>
                            </tr>
                            <tr>
                                <td>Software Test Engineer</td>
                                <td>Nanjing</td>
                                <td>2016-01-16 17:20:00</td>
                                <td><span class="badge label-primary">审核中</span></td>
                                <td>请耐心等待后续通知</td>
                            </tr>
                            <tr>
                                <td>Escalation Development Engineer</td>
                                <td>Nanjing</td>
                                <td>2016-01-16 17:20:00</td>
                                <td><span class="badge label-success">面试</span></td>
                                <td>时间：2016-01-30 14:00 <br /> 地点：九龙湖国际企业总部园C3</td>
                            </tr>
                            <tr>
                                <td>Technical Support Engineer</td>
                                <td>Nanjing</td>
                                <td>2016-01-16 17:20:00</td>
                                <td><span class="badge label-success">笔试</span></td>
                                <td>时间：2016-01-30 14:00 <br /> 地点：东南大学九龙湖校区逸夫馆3201</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </section>

			<%@ include file="../footer.jsp" %>
        </div>
    </div> <!-- sb-site -->

<!-- Modal -->
<div class="modal fade" id="myApplyModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Confirm Operation</h4>
      </div>
      <div class="modal-body">
        Are you sure you want to Cancel it?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <a type="button" class="btn btn-primary" id="cancelLink">OK</a>
      </div>
    </div>
  </div>
</div>

	<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
</body>
</html>
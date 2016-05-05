<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:include page="../header.jsp" /> 

            <section class="margin-bottom margin-top">
                <div class="container">
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
                                <td>${item.job.title}</td>
                                <td>${item.job.workLocation}</td>
                                <td>${item.applyTime}</td>
                                <td><span class="badge label-default">${item.status}</span></td>
                                <td><button class="btn btn-primary">${item.remark}</button></td>
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
 
    <script src="${pageContext.request.contextPath}/js/vendors.js"></script>
</body>
</html>
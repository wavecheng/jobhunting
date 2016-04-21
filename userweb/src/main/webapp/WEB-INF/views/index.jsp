<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" /> 
           
            <div style="height:300px; background-image:url('${pageContext.request.contextPath}/resources/img/hiring1.jpg'); background-size:cover;">
                <div style="margin-left:21%; width:330px; text-align:center; color:#fff;position:relative;font-size:40px; top:30%; line-height:60px;">
                    <p style="font-size:48px; "> Citrix Careers </p>
                    <p>Make it happen.</p>
                </div>
            </div>
            <section class="margin-bottom margin-top">
                <div class="container">
                    <div class="cont_title">
                        <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg" /></div>
                        <div class="cont_title_txt_c">招聘职位</div>
                        <div class="cont_title_txt_e">JOB RECRUITMENT</div>
                    </div>
                    <div class="row">
                        <div class="col-md-6">
                        <c:forEach var="job" items="${jobs}"  >
                        	${job.title}
                        </c:forEach>
                                <div class="panel panel-default">
                                    <div class="panel-heading">                                       
                                        <div class="panel-heading-link">                                              
                                            <a data-toggle="collapse" data-parent="#accordion" href="#job-1"  class="collapsed">
                                                <h4>Software Development Engineer</h4>
                                             <span class="h4" title="work location:Nanjing "><i class="glyphicon glyphicon-map-marker"></i> Nanjing </span>
                                            </a>
                                        </div>
                                    </div>                                       
                                    <div id="job-1" class="panel-collapse collapse " >
                                        <div class="panel-body">
                                            <em>Open to：</em>
                                            <p><i class="fa fa-university"></i> Students <i class="fa fa-users"></i> Social</p>
                                            <em>Position Summary：</em>
                                            <p>The Software Development Engineer is an entry level engineer who develops, tests, troubleshoots and maintains software components for existing or new products. The role works within a team of software engineers on problems of limited scope and complexity which are structured to develop knowledge and experience; receives general guidance and direction on work that may span multiple disciplines of software engineering; and follows established practices and procedures to achieve overall program performance, schedule and quality standards.</p>
                                            <em>Qualifications and Requirements:</em>
                                            <ul class="list-unstyled pl10">
                                                <li><i class="fa fa-check-square"></i> Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                                <li><i class="fa fa-check-square"></i>  Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                                <li><i class="fa fa-check-square"></i>  Demonstrated understanding of Computer Science fundamentals (e.g., algorithms, data structures);</li>
                                                <li><i class="fa fa-check-square"></i>  Proficiency in a programming language(s) (e.g., C, C++, C#, Java or Python) </li>
                                                <li><i class="fa fa-check-square"></i> Proven capability for finding solutions to algorithm and programming problems, developing solutions, and &nbsp;&nbsp;&nbsp;&nbsp;finding defects in software.</li>
                                            </ul>
                                            <p>
                                                <button class="btn btn-primary">Apply</button>
                                            </p>
                                        </div>
                                    </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-heading-link">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#job-2" aria-expanded="true" class="collapsed">
                                            <h4>Software Test Engineer</h4>
                                            <span class="h4" title="work location:Nanjing "><i class="glyphicon glyphicon-map-marker"></i> Nanjing </span>
                                        </a>
                                    </div>
                                </div>
                                <div id="job-2" class="panel-collapse collapse " aria-expanded="true">
                                    <div class="panel-body">
                                        <em>Open to：</em>
                                        <p><i class="fa fa-university"></i> Students </p>
                                        <em>Position Summary：</em>
                                        <p>The Software Test Engineer is an entry level engineer who designs, develops, executes and maintains software test plans and test automation frameworks. The software Test Engineer is responsible for utilizing test technologies to automate test environment construction, performance tests, scalability and load tests, functional and regression tests, and is responsible for facilitating and/or performing the creation and execution of automated tests across a diverse set of software.</p>
                                        <em>Qualifications and Requirements:</em>
                                        <ul class="list-unstyled pl10">
                                            <li><i class="fa fa-check-square"></i> Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Good knowledge of Windows and/or Linux OS</li>
                                            <li><i class="fa fa-check-square"></i>  Good understanding of networking, web based software/protocols, and database concepts</li>
                                            <li><i class="fa fa-check-square"></i> Knowledge of one or more object oriented languages (e.g., C++, C# or Java), and one or more scripting     languages (e.g., Unix shell, Python, PERL, or JavaScript);</li>
                                            <li><i class="fa fa-check-square"></i> Knowledge of OOAD principles and methodologies (e.g., UML)</li>
                                        </ul>
                                        <p>
                                            <button class="btn btn-primary">Apply</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-heading-link">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#job-3" aria-expanded="true" class="collapsed">
                                            <h4>Software Development Engineer</h4>
                                            <span class="h4" title="work location:Nanjing "><i class="glyphicon glyphicon-map-marker"></i> Nanjing </span>
                                        </a>
                                    </div>
                                </div>
                                <div id="job-3" class="panel-collapse collapse " aria-expanded="true">
                                    <div class="panel-body">
                                        <em>Open to：</em>
                                        <p><i class="fa fa-users"></i> Social</p>
                                        <em>Position Summary：</em>
                                        <p>The Software Development Engineer is an entry level engineer who develops, tests, troubleshoots and maintains software components for existing or new products. The role works within a team of software engineers on problems of limited scope and complexity which are structured to develop knowledge and experience; receives general guidance and direction on work that may span multiple disciplines of software engineering; and follows established practices and procedures to achieve overall program performance, schedule and quality standards.</p>
                                        <em>Qualifications and Requirements:</em>
                                        <ul class="list-unstyled pl10">
                                            <li><i class="fa fa-check-square"></i> Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Demonstrated understanding of Computer Science fundamentals (e.g., algorithms, data structures);</li>
                                            <li><i class="fa fa-check-square"></i>  Proficiency in a programming language(s) (e.g., C, C++, C#, Java or Python) </li>
                                            <li><i class="fa fa-check-square"></i> Proven capability for finding solutions to algorithm and programming problems, developing solutions, and &nbsp;&nbsp;&nbsp;&nbsp;finding defects in software.</li>
                                        </ul>
                                        <p>
                                            <button class="btn btn-primary">Apply</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-heading-link">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#job-4" aria-expanded="true" class="collapsed">
                                            <h4>Software Development Engineer</h4>
                                            <span class="h4" title="work location:Nanjing "><i class="glyphicon glyphicon-map-marker"></i> Nanjing </span>
                                        </a>
                                    </div>
                                </div>
                                <div id="job-4" class="panel-collapse  collapse" aria-expanded="true">
                                    <div class="panel-body">
                                        <em>Open to：</em>
                                        <p><i class="fa fa-university"></i> Students <i class="fa fa-users"></i> Social</p>
                                        <em>Position Summary：</em>
                                        <p>The Software Development Engineer is an entry level engineer who develops, tests, troubleshoots and maintains software components for existing or new products. The role works within a team of software engineers on problems of limited scope and complexity which are structured to develop knowledge and experience; receives general guidance and direction on work that may span multiple disciplines of software engineering; and follows established practices and procedures to achieve overall program performance, schedule and quality standards.</p>
                                        <em>Qualifications and Requirements:</em>
                                        <ul class="list-unstyled pl10">
                                            <li><i class="fa fa-check-square"></i> Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Demonstrated understanding of Computer Science fundamentals (e.g., algorithms, data structures);</li>
                                            <li><i class="fa fa-check-square"></i>  Proficiency in a programming language(s) (e.g., C, C++, C#, Java or Python) </li>
                                            <li><i class="fa fa-check-square"></i> Proven capability for finding solutions to algorithm and programming problems, developing solutions, and &nbsp;&nbsp;&nbsp;&nbsp;finding defects in software.</li>
                                        </ul>
                                        <p>
                                            <button class="btn btn-primary">Apply</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="panel-heading-link">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#job-5" aria-expanded="true" class="collapsed">
                                            <h4>Software Development Engineer</h4>
                                            <span class="h4" title="work location:Nanjing "><i class="glyphicon glyphicon-map-marker"></i> Nanjing </span>
                                        </a>
                                    </div>
                                </div>
                                <div id="job-5" class="panel-collapse collapse" aria-expanded="true">
                                    <div class="panel-body">
                                        <em>Open to：</em>
                                        <p><i class="fa fa-university"></i> Students <i class="fa fa-users"></i> Social</p>
                                        <em>Position Summary：</em>
                                        <p>The Software Development Engineer is an entry level engineer who develops, tests, troubleshoots and maintains software components for existing or new products. The role works within a team of software engineers on problems of limited scope and complexity which are structured to develop knowledge and experience; receives general guidance and direction on work that may span multiple disciplines of software engineering; and follows established practices and procedures to achieve overall program performance, schedule and quality standards.</p>
                                        <em>Qualifications and Requirements:</em>
                                        <ul class="list-unstyled pl10">
                                            <li><i class="fa fa-check-square"></i> Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Bachelor's degree or equivalent in computer science, electrical engineering, or related field; equivalent &nbsp;&nbsp;&nbsp;&nbsp;experience may be substituted for formal education</li>
                                            <li><i class="fa fa-check-square"></i>  Demonstrated understanding of Computer Science fundamentals (e.g., algorithms, data structures);</li>
                                            <li><i class="fa fa-check-square"></i>  Proficiency in a programming language(s) (e.g., C, C++, C#, Java or Python) </li>
                                            <li><i class="fa fa-check-square"></i> Proven capability for finding solutions to algorithm and programming problems, developing solutions, and &nbsp;&nbsp;&nbsp;&nbsp;finding defects in software.</li>
                                        </ul>
                                        <p>
                                            <button class="btn btn-primary">Apply</button>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                     
                    </div>
                </div>
            </section>
            <section class="section-lines">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="cont_title">
                                <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg" /></div>
                                <div class="cont_title_txt_c">招聘活动</div>
                                <div class="cont_title_txt_e">RECRUITMENT ACTIVITIES</div>
                            </div>
                            <div class="pl10 pb10">
                                <p>2016年思杰有更多的研发与技术支持岗位面向全国的毕业生进行招聘。丰富多彩的互动宣讲，精心准备的现场大奖，期待您的关注与光临!</p>
                                <p style="text-decoration:underline;">参加宣讲会的同学可以优先获得笔试资格哦！</p>
                                <p><strong style="color:#464646; margin-top:10px; ">校园宣讲会行程：</strong></p>
                                <table cellspacing="0" cellpadding="0" border="1"  class="tab" style="text-align:center;border-color:#81be3c;border:1px solid #81be3c;">
                                        <tbody>
                                            <tr height="40" bgcolor="#81be3c" style="color:#FFF;">
                                                <td width="115" >城市</td>
                                                <td >学校</td>
                                                <td >时间</td>
                                                <td >地点</td>
                                            </tr>
                                            <tr>
                                                <td rowspan="3" >南京</td>
                                                <td >南京大学</td>
                                                <td >9月16日 18:30-20:30</td>
                                                <td >南园教学楼219（鼓楼校区）</td>
                                            </tr>
                                            <tr>
                                                <td >南京邮电大学</td>
                                                <td >9月17日 18:30-20:30</td>
                                                <td >仙林校区第二教学楼309</td>
                                            </tr>
                                            <tr>
                                                <td >东南大学</td>
                                                <td >9月28日 18:30-20:30</td>
                                                <td >教六304（九龙湖校区）</td>
                                            </tr>
                                            <tr>
                                                <td rowspan="2" >武汉</td>
                                                <td >武汉大学</td>
                                                <td >9月21日 15:00-17:00</td>
                                                <td >卓越厅</td>
                                            </tr>
                                            <tr>
                                                <td >华中科技大学</td>
                                                <td >9月22日 18:30-20:30</td>
                                                <td >A座603</td>
                                            </tr>
                                            <tr>
                                                <td >成都</td>
                                                <td >成都电子科技大学</td>
                                                <td >9月24日 19:30-21:30</td>
                                                <td >清水河校区品学楼A102</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                <p></p>
                                <p><strong style="color:#464646; margin-top:30px;">招聘笔试安排：</strong></p>
                                <table cellspacing="0" border="1" cellpadding="0"  style="text-align:center;border-color:#81be3c;border:1px solid #81be3c;">
                                        <tbody>
                                            <tr height="40" bgcolor="#81be3c" style="color:#FFF;">
                                                <td width="115" >城市</td>
                                                <td >学校</td>
                                                <td >时间</td>
                                                <td >地点</td>
                                            </tr>
                                            <tr>
                                                <td >南京</td>
                                                <td >南京大学</td>
                                                <td >10月10日 18:30-20:30</td>
                                                <td >鼓楼校区教学楼222</td>
                                            </tr>
                                            <tr>
                                                <td >武汉</td>
                                                <td >华中科技大学</td>
                                                <td >10月10日 18:30-20:30</td>
                                                <td >本部西12S303</td>
                                            </tr>
                                            <tr>
                                                <td >成都</td>
                                                <td >成都电子科技大学</td>
                                                <td >10月10日 18:30-20:30</td>
                                                <td >品学楼A204</td>
                                            </tr>
                                        </tbody>
                                    </table>
                            </div>   
                        </div>
                        <div class="col-md-6">
                            <div class="cont_title">
                                <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg" /></div>
                                <div class="cont_title_txt_c">招聘流程</div>
                                <div class="cont_title_txt_e">RECRUITMENT PROCEDURE</div>
                            </div>
                            <img src="${pageContext.request.contextPath}/resources/img/zplc.jpg" alt="" class="img-responsive" />
                        </div>
                    </div>
                </div>
            </section>
            <section class="margin-bottom margin-top">
                <div class="container">
                    <div class="cont_title">
                        <div class="cont_title_icon"><img src="${pageContext.request.contextPath}/resources/img/cont_title_icon.jpg" /></div>
                        <div class="cont_title_txt_c">常见问题</div>
                        <div class="cont_title_txt_e">FAQ</div>
                    </div>
                    <div class="cont_txt">

                        <strong> Q：思杰2016校园招聘将去哪些学校做宣讲？</strong><br>
                        A：思杰2016校园招聘在9月1日正式启动，线下宣讲会在筹备中，请及时关注各大BBS和论坛的更新。今年我们会以互动的方式让大家了解思杰，更有终极大奖等待您。同时我们还有精彩的在线宣讲视频与大家分享。最新的招聘行程请留意思杰2016校园招聘网站上的相关信息。<br><br>

                        <strong> Q：思杰2016年校园招聘大概在什么时候开始？</strong><br>
                        A：校园宣讲和相关的笔试、面试流程会在9月15日至10月31日陆续进行。同时，思杰2016校园招聘网站于9月1日全面启用，同学们可以登录并注册简历，了解具体行程安排、招聘岗位和应聘流程，并申请自己感兴趣的岗位。<br><br>

                        <strong> Q：校园招聘的具体流程是怎样的？</strong><br>        A：大家可以参考思杰2016校园招聘网站，具体流程：在思杰2016校园招聘网站注册简历，预约笔试场次，接下来我们会邀请笔试合格者接受我们的面试，从中我们会确定理想的人选并发放正式录用通知，同时我们会选择相当数量的备份候选人邮件通知，一旦我们有剩余或者新增职位，备份候选人可递补录用。总体的笔试和面试的流程及时间安排，可以查询思杰2016校园招聘网站页面上的相关信息。<br><br>

                        <strong> Q：招聘岗位具体的工作地点在哪里？</strong><br>
                        A：随着思杰公司的快速发展，今年校招的工作岗位主要在南京研发中心，具体岗位的会在面试的时候详细沟通。<br><br>

                        <strong> Q：思杰一定只录用校园宣讲所覆盖的高校或者地区的学生吗？</strong><br>
                        A：只要您是优秀的人才，并符合我们的用人标准，我们都非常欢迎您加入思杰大家庭。<br><br>

                        <strong> Q：公司对员工的语言要求是什么？</strong><br>
                        A：我们希望我们的员工具备流畅的中英文口头沟通与书面表达能力。但是不同的岗位要求程度不同。<br><br>

                        <strong> Q：公司本次的招聘岗位有哪些？有专业限制吗？</strong><br>
                        A：详细的岗位类别和工作地点于9月1日开始在思杰2016校园招聘网站上发布。同学们可以在上面了解具体的职位描述及要求。只要你的兴趣和能力与职位要求相符合，都可以在网上申请应聘相关工作岗位。<br><br>

                        <strong> Q：如果在申请的过程中被拒，是否会有相关通知，大概多长时间能够收到通知？</strong><br>
                        A：我们会在笔试后的一周内通知面试。对于未能通过笔试的同学，我们会发邮件知会到每一位同学（如果未预约笔试，则不会收到邮件通知）；如有遗漏，也请大家多多谅解。<br><br>

                        <strong> Q：2016校园招聘宣讲会现场是否接受简历申请？</strong><br>         A：为了保证学生的简历信息能够被完整地录入到我们的人才信息系统中，现场不接受简历。对于在宣讲会之前未来得及在集结号上注册简历的学生，我们仍然建议学生在宣讲会后，尽快登录到集结号上注册简历，以保证我们可以将其纳入到简历筛选的过程中。<br><br>

                        <strong> Q：公司有针对新员工的培训项目吗？</strong><br>         A：思杰公司十分重视员工的培训与发展。目前，公司已经建立了一套完善的新员工入职培训项目。根据部门和岗位的不同，培训的内容会有些差异。刚加入公司的新员工除了需要接受统一的入职培训课程外，公司还会为每位新加入的员工配备导师，以便在工作过程中获得更有针对性的辅导。<br><br>

                        <strong> Q：思杰对应聘者的在校成绩有什么要求？</strong><br>         A：首先，思杰在具体的甄选标准上对在校成绩没有硬性要求。但是，本着择优录用的原则，我们认为学生的在校成绩也是衡量人才能力的标准之一，但是我们更注重实际的技术能力和创新思维。<br><br>
                    </div>
                </div>
            </section>
			<%@ include file="footer.jsp" %>
        </div>
    </div> <!-- sb-site -->
</body>
</html>
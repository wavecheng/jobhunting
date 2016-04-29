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
                <div class="row" style="margin:0 auto; clear:both;">
                    <form id="movieForm" method="post">
                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-8">
                                    <label class="control-label">Movie title</label>
                                    <input type="text" class="form-control" name="title" />
                                </div>

                                <div class="col-xs-4 selectContainer">
                                    <label class="control-label">Genre</label>
                                    <select class="form-control" name="genre">
                                        <option value="">Choose a genre</option>
                                        <option value="action">Action</option>
                                        <option value="comedy">Comedy</option>
                                        <option value="horror">Horror</option>
                                        <option value="romance">Romance</option>
                                    </select>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-4">
                                    <label class="control-label">Director</label>
                                    <input type="text" class="form-control" name="director" />
                                </div>

                                <div class="col-xs-4">
                                    <label class="control-label">Writer</label>
                                    <input type="text" class="form-control" name="writer" />
                                </div>

                                <div class="col-xs-4">
                                    <label class="control-label">Producer</label>
                                    <input type="text" class="form-control" name="producer" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="row">
                                <div class="col-xs-6">
                                    <label class="control-label">Website</label>
                                    <input type="text" class="form-control" name="website" />
                                </div>

                                <div class="col-xs-6">
                                    <label class="control-label">Youtube trailer</label>
                                    <input type="text" class="form-control" name="trailer" />
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Review</label>
                            <textarea class="form-control" name="review" rows="8"></textarea>
                        </div>

                        <div class="form-group">
                            <label class="control-label">Rating</label>
                            <div>
                                <label class="radio-inline">
                                    <input type="radio" name="rating" value="terrible" /> Terrible
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rating" value="watchable" /> Watchable
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="rating" value="best" /> Best ever
                                </label>
                            </div>
                        </div>

                        <button type="submit" class="btn btn-default">Validate</button>
                    </form>

                    <script>
$(document).ready(function() {
    $('#movieForm').formValidation({
        framework: 'bootstrap',
        icon: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            title: {
                row: '.col-xs-8',
                validators: {
                    notEmpty: {
                        message: 'The title is required'
                    },
                    stringLength: {
                        max: 200,
                        message: 'The title must be less than 200 characters long'
                    }
                }
            },
            genre: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The genre is required'
                    }
                }
            },
            director: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The director name is required'
                    },
                    stringLength: {
                        max: 80,
                        message: 'The director name must be less than 80 characters long'
                    }
                }
            },
            writer: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The writer name is required'
                    },
                    stringLength: {
                        max: 80,
                        message: 'The writer name must be less than 80 characters long'
                    }
                }
            },
            producer: {
                row: '.col-xs-4',
                validators: {
                    notEmpty: {
                        message: 'The producer name is required'
                    },
                    stringLength: {
                        max: 80,
                        message: 'The producer name must be less than 80 characters long'
                    }
                }
            },
            website: {
                row: '.col-xs-6',
                validators: {
                    notEmpty: {
                        message: 'The website address is required'
                    },
                    uri: {
                        message: 'The website address is not valid'
                    }
                }
            },
            trailer: {
                row: '.col-xs-6',
                validators: {
                    notEmpty: {
                        message: 'The trailer link is required'
                    },
                    uri: {
                        message: 'The trailer link is not valid'
                    }
                }
            },
            review: {
                // The group will be set as default (.form-group)
                validators: {
                    stringLength: {
                        max: 500,
                        message: 'The review must be less than 500 characters long'
                    }
                }
            },
            rating: {
                // The group will be set as default (.form-group)
                validators: {
                    notEmpty: {
                        message: 'The rating is required'
                    }
                }
            }
        }
    });
});
                    </script>

                </div>
                <div class="row">
                    <h3 class="title">教育经历<span class="btnSH"></span></h3>
                    <div class="formDiv">
                        <div class="tableWrap clearfix">
                            <table class="t1">
                                <thead>
                                <th width="20%">时间</th>
                                <th width="20%">学校</th>
                                <th width="20%">专业</th>
                                <th width="20%">学位</th>
                                <th width="20%"></th>
                                </thead>
                                <tr>
                                    <td>
                                        2004-09到2008-07
                                    </td>
                                    <td>
                                        华中科技大学
                                    </td>
                                    <td>
                                        软件工程
                                    </td>
                                    <td>
                                        本科
                                    </td>
                                    <td>
                                        <a href="javascript:;">[ 编辑 ]</a>
                                        <!--<a href="javascript:;">[ 删除 ]</a>-->
                                    </td>
                                </tr>
                            </table>
                            <input id="addEDU" class="btn pull-right" type="submit" value="添加教育经历">
                        </div>
                        <form id="formEDU" style="display: none" class="form-horizontal" method="post" action="" novalidate="novalidate">
                            <div class="control-group">
                                <label class="control-label">时间</label>
                                <div class="controls">
                                    <input type="text" id="eduStartTime" name="startTime" readonly="readonly" data-validate data-required="true" /> 到
                                    <input type="text" id="eduEndTime" name="endTime" readonly="readonly" data-validate data-required="true" />
                                    <div class="msg-wrapper" style="display: none;">
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">学校</label>
                                <div class="controls">
                                    <select name="collegeCity" id="collegeCity" required="" data-type="select">
                                        <option value="">请选择</option>
                                    </select>
                                    <select name="college" id="college" required="" data-type="select">
                                        <option value="">请选择</option>
                                    </select>
                                    <div class="msg-wrapper" style="display: none;"></div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">专业</label>
                                <div class="controls">
                                    <select name="majorCategory" id="majorCategory" required="" data-type="select">
                                        <option value="">请选择</option>
                                    </select>
                                    <select name="major" id="major" required="" data-type="select">
                                        <option value="">请选择</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">学位</label>
                                <div class="controls">
                                    <select name="degree" required="" data-type="select">
                                        <option value="">请选择</option>
                                        <option value="1">N/A</option>
                                        <option value="1">Bachelor</option>
                                        <option value="2">Master</option>
                                        <option value="2">MBA</option>
                                        <option value="2">Doctor</option>
                                    </select>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <h3 class="title">工作经验<span class="btnSH"></span></h3>
                    <div class="formDiv">
                        <div class="tableWrap">
                            <table class="t1">
                                <thead>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                </thead>
                                <tr>
                                    <td>
                                        2004-09到2008-07
                                    </td>
                                    <td>
                                        华中科技大学
                                    </td>
                                    <td>
                                        软件工程
                                    </td>
                                    <td>
                                        本科
                                    </td>
                                    <td>
                                        <a href="javascript:;">[ 编辑 ]</a>
                                        <a href="javascript:;">[ 删除 ]</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4"></td>
                                    <td><a id="addWork" href="javascript:;">[ 添加 ]</a></td>
                                </tr>
                            </table>
                        </div>
                        <form id="formWork" class="form-horizontal" method="post" action="" novalidate="novalidate">
                            <div class="control-group">
                                <label class="control-label">时间</label>
                                <div class="controls">
                                    <input type="text" id="workStartTime" name="startTime" readonly="readonly" data-validate data-required="true" /> 到
                                    <input type="text" id="workEndTime" name="endTime" readonly="readonly" data-validate data-required="true" />
                                    <div class="msg-wrapper" style="display: none;">
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <input class="btn" type="submit" value="添加">
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row">
                    <h3 class="title">项目经验<span class="btnSH"></span></h3>
                    <div class="formDiv">
                        <div class="tableWrap">
                            <table class="t1">
                                <thead>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                <th width="20%">时间</th>
                                </thead>
                                <tr>
                                    <td>
                                        2004-09到2008-07
                                    </td>
                                    <td>
                                        华中科技大学
                                    </td>
                                    <td>
                                        软件工程
                                    </td>
                                    <td>
                                        本科
                                    </td>
                                    <td>
                                        <a href="javascript:;">[ 编辑 ]</a>
                                        <a href="javascript:;">[ 删除 ]</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4"></td>
                                    <td><a id="addProj" href="javascript:;">[ 添加 ]</a></td>
                                </tr>
                            </table>
                        </div>
                        <form id="formProj" class="form-horizontal" method="post" action="" novalidate="novalidate">
                            <div class="control-group">
                                <label class="control-label">时间</label>
                                <div class="controls">
                                    <input type="text" id="projStartTime" name="startTime" readonly="readonly" data-validate data-required="true" /> 到
                                    <input type="text" id="projEndTime" name="endTime" readonly="readonly" data-validate data-required="true" />
                                    <div class="msg-wrapper" style="display: none;">
                                    </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <input class="btn" type="submit" value="添加">
                            </div>
                        </form>
                    </div>
                    </li>
                    </ul>
                </div>

            </div>
            </section>

		
		<%@ include file="../footer.jsp" %>
        </div>
    </div> 
</body>
</html>
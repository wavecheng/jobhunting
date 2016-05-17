<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                    <div class="cont_title_txt_c">修改我的个人简历</div>
                    <div class="cont_title_txt_e ">MY RESUME</div>
                </div>
		
                <div class="row">
                	<div class="col-md-12">
                		<div class="panel panel-default">
							  <div class="panel-heading">Personal Information
							  	<div class="pull-right"><a href="resume" class="btn btn-success ">查看简历</a></div>
							  </div>
							  <div class="panel-body">
							     <table class="table table-hover"  >
								    <tr><td class="col-xs-3 text-right strong ">Name in Chinese:</td>
								    	<td class="text-left required"><input type="text" data-bind="value:name" class="" required="required" /></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Name in English:</td>
								    	<td class="text-left"><input type="text" data-bind="value:nameEng" class="" required="required" /></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Gender:</td>
								    	<td class="text-left">
								    	<div class="btn-group" role="group" aria-label="Choose your gender">
										  <input type="radio"  name="genderGroup" data-bind="checked:gender" value="Male" />Male  
										  <input type="radio"  name="genderGroup" data-bind="checked:gender" value="Female" />Female 
										</div>
										</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Mobile:</td>
								    <td class="text-left"><input type="text" data-bind="value:mobile" class="" required="required" /></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Email:</td>
								    <td class="text-left"><input type="email" data-bind="value:email" class="" required="required" /></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Personal ID:</td>
								    <td class="text-left"><input type="text" data-bind="value:idNo" class="" required="required" /></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Date of Birth:</td>
								    <td class="text-left">
								    	<input type="text" data-bind="value:birthDate" class="" required="required" id="birthDate" />
								    </td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Married:</td>
								    <td class="text-left">								    	
								    <div class="btn-group" role="group" aria-label="Marriage status">
										  <input type="radio" name="marryGroup"  data-bind="checked:married" value="true" />Yes  
										  <input type="radio" name="marryGroup"  data-bind="checked:married" value="false" />No 
										</div></td>
								    </tr>								    
								    <tr><td class="col-xs-3 text-right strong ">Place of Origin City:</td>								    
								    	<td class="text-left"><select data-bind="options: provinceAndCities, optionsText: 'name',
                                           optionsValue:'name', value:birthProvince"></select>
                                           <span data-bind="with: currentBirthProvince">
                                           <select data-bind="options: cities, optionsText: 'name',
                                           optionsValue:'name', value:$parent.birthCity"></select></span>
                                           </td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Place of Current City:</td>
								    	<td class="text-left"><select data-bind="options: provinceAndCities, optionsText: 'name',
                                           optionsValue:'name', value:currentProvince"></select>
                                           <span data-bind="with: currentLiveProvince">
                                           <select data-bind="options: cities, optionsText: 'name',
                                           optionsValue:'name', value:$parent.currentCity"></select></span>
                                           </td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">City to Take Exam:</td>
								    	<td class="text-left"><select data-bind="options: examCityList, optionsText: 'name',
                                           optionsValue:'name', value:citytoExam"></select>
                                         </td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">University:</td>
								    	<td class="text-left">
								    		<input type="text" id="university" data-provide="typeahead" autocomplete="off" data-bind="value:universityName">
								    	</td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong ">Highest Degree:</td>
								    	<td class="text-left">
								    	<select data-bind="options: degreeList, value:degree"></select></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong">Major:</td>
								    	<td class="text-left">
								    		<input type="text" id="major" data-provide="typeahead" autocomplete="off" data-bind="value:major">
								    	</td>
								    </tr>
								 </table>
							  </div>
							  <div class="panel-heading">Language Skill<a id="language"></a></div>
							  <div class="panel-body">								 
							     <table class="table table-hover"  >								    
								    <tr>
								    	<td class="col-xs-3 text-right strong ">English Level&Score:</td>
								    	<td class="text-left"><select data-bind="options: englishLevelList, value:engLevel"></select><input type="number" data-bind="value:engHighestScore" class="" required="required" /></td>
								    	<td class="col-xs-3 text-right strong">Oral English Level:</td>
								    	<td class="text-left"><select data-bind="options: skillLevelList, value:oral"></select></td>								    	
								    </tr>
								    <tr><td class="col-xs-3 text-right strong">TOEFL:</td>
								    	<td class="text-left"><input type="number" data-bind="value:toefl" class=""  /></td>
								        <td class="col-xs-3 text-right strong ">TOEIC:</td>
								    	<td class="text-left"><input type="number" data-bind="value:toeic" class=""  /></td>
								    </tr>
								    <tr><td class="col-xs-3 text-right strong">GRE:</td>
								    	<td class="text-left"><input type="number" data-bind="value:gre" class=""  /></td>
								        <td class="col-xs-3 text-right strong">GMAT:</td>
								    	<td class="text-left"><input type="number" data-bind="value:gmat" class=""  /></td>
								    </tr>
								    <tr>
								    	<td class="col-xs-3 text-right strong">Second Language:</td>
								    	<td class="text-left"><select data-bind="options: secondLangList, value:secLanguage"></select></td>
								    	<td class="col-xs-3 text-right strong">Language Level:</td>
								    	<td class="text-left"><input type="text" data-bind="value:secondLangLevel" class=""  /></td>								    	
								    </tr>
								 </table>
								 <div class="alert  alert-success text-center hide" role="alert" data-bind="css:{ hide:msg() == '' } ">
									  <span data-bind="text:msg"></span>
								  </div>
								 <button class="btn btn-primary pull-right" data-bind="click:saveBasicInfo" >更新基本信息</button>								 
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
		<script src="${pageContext.request.contextPath}/resources/js/knockout-3.4.0.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/knockout.mapping-latest.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/const_data.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap3-typeahead.min.js"></script>
		<script>
			$("#university").typeahead({items:10,source:universityList});
			$("#major").typeahead({items:10,source:majorList});
			
			var mapping = {
			    'married': {
			        create: function(options) {
			            return options.data == true ? "true" : "false";
			        }
			    }
			}
			var viewModel = ko.mapping.fromJS(${user_json}, mapping);
			
			var ProvinceAndCitiesViewModel =  function(data){
				var viewModel = ko.mapping.fromJS(data);
				return viewModel;
			}			
			
			viewModel.provinceAndCities = new ProvinceAndCitiesViewModel(ProvinceAndCities);
			viewModel.currentBirthProvince = function(){
				for(var i=0;i<viewModel.provinceAndCities().length;i++){
					if(viewModel.birthProvince() == viewModel.provinceAndCities()[i].name())
						return viewModel.provinceAndCities()[i];
				}
				return viewModel.provinceAndCities()[0];
			}

			viewModel.currentLiveProvince = function(){
				for(var i=0;i<viewModel.provinceAndCities().length;i++){
					if(viewModel.currentProvince() == viewModel.provinceAndCities()[i].name())
						return viewModel.provinceAndCities()[i];
				}
				return viewModel.provinceAndCities()[0];
			}
			
			//exam city list
			viewModel.examCityList = ko.observableArray(${examCityList});
			viewModel.degreeList = ko.observableArray(['College','Undergraduate','Master','MBA','Doctor','Other']);
			viewModel.englishLevelList = ko.observableArray(['CET4','CET6','TEM4','TEM8','N/A']);
			viewModel.skillLevelList = ko.observableArray(['Average','Good','Very Good','Excellent']);
			viewModel.secondLangList = ko.observableArray(['无','日语','法语','德语','韩语','俄语','阿拉伯语','意大利语','西班牙语','葡萄牙语','其他']);
			
			viewModel.msg = ko.observable("");
			
			viewModel.saveBasicInfo = function(){			
				viewModel.msg("");				
				var data = {
					name: viewModel.name(),
					nameEng: viewModel.nameEng(),
					birthProvince:viewModel.birthProvince(),
					birthCity:viewModel.birthCity(),
					birthDate:viewModel.birthDate(),
					gender: viewModel.gender(),
					mobile:viewModel.mobile(),
					email:viewModel.email(),
					idNo:viewModel.idNo(),
					married:viewModel.married,
					currentProvince:viewModel.currentProvince(),
					currentCity:viewModel.currentCity(),
					citytoExam:viewModel.citytoExam(),
					universityName:viewModel.universityName(),
					degree:viewModel.degree(),
					major:viewModel.major(),
					engLevel:viewModel.engLevel(),
					engHighestScore:viewModel.engHighestScore(),
					oral:viewModel.oral(),
					toefl:viewModel.toefl(),
					toeic:viewModel.toeic(),
					gre:viewModel.gre(),
					gmat:viewModel.gmat(),
					secLanguage:viewModel.secLanguage(),
					secondLangLevel:viewModel.secondLangLevel(),
				}
				
				$.ajax({url:"save_basic",
					type:"POST",
					data:JSON.stringify(data), 
					dataType: "json",
					contentType: "application/json; charset=utf-8",
					complete: function(result){
						viewModel.msg("Update completed!")
				    }
				});
			}
			
			ko.applyBindings(viewModel);
			
			$('#birthDate').datetimepicker({
				  format: 'yyyy-mm-dd',
				  minView: 2,
				  autoclose: 1,
				  bootcssVer:3,
			    });
			
			
		</script>
        </div>
    </div> 
</body>
</html>
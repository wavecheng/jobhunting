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
                    <div class="cont_title_txt_c">修改我的个人简历</div>
                    <div class="cont_title_txt_e ">MY RESUME</div>
                </div>
		
                <div class="row">
                	<div class="col-md-12">
                		<div class="panel panel-default">
							  <div class="panel-heading">Personal Information
<!-- 							  	<div class="pull-right"><a href="resume" class="btn btn-success ">查看简历</a></div> -->
							  </div>
							  <div class="panel-body">
							  	<form class="form-horizontal" action="#" data-toggle="validator" role="form">
							  	  <div class="row">
							  	  	<div class="col-sm-6">
										  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">Name in Chinese:<span class="required"></span></label>
										    <div class="col-sm-8">
										      <input type="text" class="form-control" data-bind="value:name" placeholder="name in Chinese" required="required" data-error="Chinese name is required" >
										      <div class="help-block with-errors"></div>
										    </div>
										   </div>
										   <div class="form-group">
										    <label for="" class="col-sm-4 control-label">Name in English:<span class="required"></span></label>
										    <div class="col-sm-8">
										      <input type="text" class="form-control" data-bind="value:nameEng" placeholder="name in English or Pinyin" required="required" data-error=" English name is required" >
										      <div class="help-block with-errors"></div>
										    </div>
										  </div>
										  <div class="form-group">
										    <label for="email" class="col-sm-4 control-label">Email:<span class="required"></span></label>
										    <div class="col-sm-8">
										      <input type="email" class="form-control" data-bind="value:email" placeholder="Email" required="required" data-error="Email is invalid" >
										      <div class="help-block with-errors"></div>	
										    </div>
										  </div>
										  <div class="form-group"> 
										    <label for="" class="col-sm-4 control-label">ID card No:<span class="required"></span></label>
										    <div class="col-sm-8">
										      <input type="text" class="form-control" pattern="^[xX\d]{18}$"  data-bind="value:idNo" placeholder="National ID card No" required="required" data-error="ID card No is invalid" >
										      <div class="help-block with-errors"></div>
										    </div>
										  </div>
										  <div class="form-group"> 
										    <label for="" class="col-sm-4 control-label">Place of Origin City:</label>
										    <div class="col-sm-4">
										      <select class="form-control" data-bind="options: provinceAndCities, optionsText: 'name',
		                                           optionsValue:'name', value:birthProvince"></select>
		                                    </div>
		                                    <div class="col-sm-4">
		                                    	<span data-bind="with: currentBirthProvince">
		                                           <select  class="form-control"  data-bind="options: cities, optionsText: 'name',
		                                           optionsValue:'name', value:$parent.birthCity"></select></span>
		                                    </div>		                                           
										  </div>
										  <div class="form-group"> 
										    <label for="" class="col-sm-4 control-label">Place of Current City:</label>
										    <div class="col-sm-4">
										      <select class="form-control" data-bind="options: provinceAndCities, optionsText: 'name',
		                                           optionsValue:'name', value:currentProvince"></select>
		                                    </div>
		                                    <div class="col-sm-4">
		                                    	<span data-bind="with: currentLiveProvince">
		                                           <select  class="form-control"  data-bind="options: cities, optionsText: 'name',
		                                           optionsValue:'name', value:$parent.currentCity"></select></span>
		                                    </div>
		                                    <div class="help-block with-errors"></div>       
										  </div>
										  <div class="form-group">
									  	  		<label for="" class="col-sm-4 control-label">Major:<span class="required"></span></label>
											    <div class="col-sm-8">
											      <input type="text" class="form-control"  id="major" data-provide="typeahead" autocomplete="off" data-bind="value:major"
											        placeholder="input major name" required="required" data-error="major number is invalid" >
											      <div class="help-block with-errors"></div>
											    </div>
									  	  </div>									  	  								  	  	
							  	  	</div>
							  	  	<div class="col-sm-6">
										  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">Gender:</label>
										    <div class="col-sm-8">
										    	<label class="radio-inline ">
												  <input type="radio" name="genderGroup" data-bind="checked:gender" value="Male" />Male 
												</label>
												<label class="radio-inline">
												  <input type="radio" name="genderGroup" data-bind="checked:gender" value="Female" />Female 
												</label>
												<div class="help-block with-errors"></div>
										    </div>							  	  	
									  	  </div>
									  	  <div class="form-group">
									  	  		<label for="" class="col-sm-4 control-label">Mobile:<span class="required"></span></label>
											    <div class="col-sm-8">
											      <input type="text" class="form-control" pattern="^[\d\s]{1,15}$"   data-bind="value:mobile"  placeholder="mobile phone number" required="required" data-error="phone number is invalid" >
											      <div class="help-block with-errors"></div>
											    </div>
									  	  </div>
									  	  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">Date of Birth:<span class="required"></span></label>
										    <div class="col-sm-8">
										      <input type="text" class="form-control date" pattern="^\d{4}-\d{2}-\d{2}$"   data-bind="value:birthDate" placeholder="birth date" required="required" data-error="date is invalid" >
										      <div class="help-block with-errors"></div>
										    </div>
										  </div>
										  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">Married:</label>
										    <div class="col-sm-8">
										    	<label class="radio-inline">
												  <input type="radio"  name="marryGroup"  data-bind="checked:married" value="true" />Yes  
												</label>
												<label class="radio-inline">
												  <input type="radio" name="marryGroup"  data-bind="checked:married" value="false" />No 
												</label>
												<div class="help-block with-errors"></div>
										    </div>							  	  	
									  	  </div>
									  	  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">City to Take Exam:<span class="required"></span></label>
										    <div class="col-sm-8"  >
										      <select class=" form-control" data-bind="options: examCityList, optionsText: 'name',
                                           				optionsValue:'name', value:citytoExam"></select>
                                           		<div class="help-block with-errors"></div>
										    </div>
										  </div>
										  <div class="form-group">
									  	  		<label for="" class="col-sm-4 control-label">University:<span class="required"></span></label>
											    <div class="col-sm-8">
											      <input type="text" class="form-control" type="text" id="university" data-provide="typeahead" autocomplete="off" data-bind="value:universityName"
											        placeholder="input university name" required="required" data-error="university number is invalid" >
											      <div class="help-block with-errors"></div>
											    </div>
									  	  </div>
										  <div class="form-group">
									  	  		<label for="" class="col-sm-4 control-label">Highest Degree:<span class="required"></span></label>
											    <div class="col-sm-8">
											      <select class=" form-control"data-bind="options: degreeList, value:degree"></select>
                                           		<div class="help-block with-errors"></div>
											    </div>
									  	  </div>
							  	  </div>
								</div>							
							  	  <div class="row">
							  	  	<div class="col-sm-6">
										  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">English Level & Score:</label>
										    <div class="col-sm-4">
										      <select class="form-control" data-bind="options: englishLevelList, value:engLevel"></select>
		                                    </div>
		                                    <div class="col-sm-4">
		                                    	<input type="number" class="form-control" pattern="^[\d]{1-3}$"  data-bind="value:engHighestScore"  required="required" data-error="score is invalid" >
		                                    </div>
		                                    <div class="help-block with-errors"></div>
										   </div>
										   <div class="form-group">
										    <label for="" class="col-sm-4 control-label">TOEFL:</label>
										    <div class="col-sm-8">
										      <input type="number" class="form-control" data-bind="value:toefl" placeholder="TOEFL score if you have"   data-error="TOEFL is invalid" >
										      <div class="help-block with-errors"></div>
										    </div>
										  </div>
										  <div class="form-group">
										    <label for="email" class="col-sm-4 control-label">GRE:</label>
										    <div class="col-sm-8">
										      <input type="number" class="form-control" data-bind="value:gre" placeholder="GRE score if you have"   data-error="GRE is invalid" >
										      <div class="help-block with-errors"></div>	
										    </div>
										  </div>
										  <div class="form-group"> 
										    <label for="" class="col-sm-4 control-label">Second Language:</label>
										    <div class="col-sm-8">
										       <select class="form-control" data-bind="options: secondLangList, value:secLanguage"></select>
										       <div class="help-block with-errors"></div>
										    </div>
										  </div>									  	  								  	  	
							  	  	</div>
							  	  	<div class="col-sm-6">
										  <div class="form-group">
										    <label for="" class="col-sm-4 control-label">Oral English Level:</label>
										    <div class="col-sm-8">
										      <select class="form-control" data-bind="options: skillLevelList, value:oral"></select>
		                                    </div>
		                                    <div class="help-block with-errors"></div>
										   </div>
										   <div class="form-group">
										    <label for="" class="col-sm-4 control-label">TOEIC:</label>
										    <div class="col-sm-8">
										      <input type="number" class="form-control" data-bind="value:toeic" placeholder="TOEIC score if you have"   data-error="TOEIC is invalid" >
										      <div class="help-block with-errors"></div>
										    </div>
										  </div>
										  <div class="form-group">
										    <label for="email" class="col-sm-4 control-label">GMAT:</label>
										    <div class="col-sm-8">
										      <input type="number" class="form-control" data-bind="value:gmat" placeholder="GMAT score if you have"   data-error="GMAT is invalid" >
										      <div class="help-block with-errors"></div>	
										    </div>
										  </div>
										  <div class="form-group"> 
										    <label for="" class="col-sm-4 control-label">Language Level:</label>
										    <div class="col-sm-8">
										      <input type="text" class="form-control"  data-bind="value:secondLangLevel" placeholder="level description if applicable"   >
										      <div class="help-block with-errors"></div>
										    </div>
										  </div>
									</div>	  							
								  <div class="form-group">
								    <div class="col-sm-offset-2 col-sm-10">
								      <button class="btn btn-success" data-bind="click:saveBasicInfo" >更新基本信息</button>							      
								    </div>
								  </div>								
								</form>
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
							    		<th>Major</th>
							    		<th>Degree</th>
							    		<th>Rank</th>
							    		<th class="text-right"><a data-bind="click:addUserEducation" class="btn btn-primary"><i class="fa fa-plus"></i>Add</a></th>
							    	</tr>
							    	<!-- ko foreach:userEducation -->
							    	<tr>
							    		<td><span data-bind="text:fromDate"></span></td>
							    		<td><span data-bind="text:toDate"></span></td>
							    		<td><span data-bind="text:university"></span></td>
							    		<td><span data-bind="text:major"></span></td>
							    		<td><span data-bind="text:degree"></span></td>
							    		<td>><span data-bind="text:totalRank"></span>%</td>
							    		<td width="100px">
							    			<a data-bind="click:$parent.editUserEducation" class="btn btn-primary"><i class="fa fa-edit"></i></a>
							    			<a data-bind="click:$parent.deleteUserEducation" class="btn btn-danger"><i class="fa fa-remove"></i></a>
							    		</td>
							    	</tr>
							    	<!-- /ko  -->	
							    </table>
							  </div>
						  </div>  
						  
						  <div class="panel panel-default">
							  <div class="panel-heading">
							    <h3 class="panel-title" id="project">Projects History</h3>							    
							  </div>
							  <div class="panel-body">
							  <a data-bind="click:addUserEducation" class="btn btn-primary pull-right"><i class="fa fa-plus"></i>Add</a>
							  <!-- ko foreach:userProject -->
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
							  <!-- /ko  -->	
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

<script type="text/html" id="add-education-template">
<div class="modal fade" id="add-education-template" tabindex="-1" role="dialog" aria-labelledby="add-education-template">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Add education item</h4>
      </div>
      <div class="modal-body">
		 <form class="form-horizontal" action="" method="post" data-toggle="validator" role="form">
		  <div class="form-group">
		    <label for="" class="col-sm-4 control-label">From Date</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control date"  placeholder="begin date"  data-bind="value:fromDate" required="required" >
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="" class="col-sm-4 control-label">To Date</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control date"  placeholder="end date"  data-bind="value:toDate" >
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="" class="col-sm-4 control-label">University</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control university"  placeholder="university"  data-bind="value:university" required="required" >
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="" class="col-sm-4 control-label">Major</label>
		    <div class="col-sm-7">
		      <input type="text" class="form-control major"  placeholder="major"  data-bind="value:major" required="required" >
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="" class="col-sm-4 control-label">Degree</label>
		    <div class="col-sm-7">
		      	<select class="form-control"  data-bind="options: degreeList, value:degree"></select>
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="" class="col-sm-4 control-label">Total Rank</label>
		    <div class="col-sm-7">
				<select class="form-control"  data-bind="options: rankList, optionsText: 'name',optionsValue:'value', value:totalRank"></select>
		    </div>
		  </div>
		  </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" data-bind="click:save,enable:enableSave">OK</button>
      </div>
    </div>
  </div>
</div>
</script>
        <%@ include file="../footer.jsp" %>
		<script src="${pageContext.request.contextPath}/resources/js/knockout-3.4.0.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/knockout.mapping-latest.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap-datetimepicker.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/app.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/const_data.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap3-typeahead.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap-knockout-modal.js"></script>
		<script>
		
			toastr.options = {
				  "closeButton": true,
				  "newestOnTop": true,
				  "positionClass": "toast-top-center",
			};
			
			$("#university").typeahead({items:6,source:universityList,showHintOnFocus:true});
			$("#major").typeahead({items:6,source:majorList,showHintOnFocus:true});
			
			var mapping = {
			    'married': {
			        create: function(options) {
			            return options.data == true ? "true" : "false";
			        }
			    }
			}
			var viewModel = ko.mapping.fromJS(${user_json}, mapping);
			
			//省份和城市
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
			
			viewModel.saveBasicInfo = function(){					
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
					complete: function(){
						toastr.success("update success!");
				    }
				});
				
			}

			//education related operations
			var UserEducationModalVM = function (pageViewModel,item) {
			    var viewModel = this;
			    viewModel.id = ko.observable(0);
			    viewModel.fromDate = ko.observable("");
			    viewModel.toDate = ko.observable("");
			    viewModel.university = ko.observable("");	
			    viewModel.major = ko.observable("");	
			    viewModel.degree = ko.observable("");
			    viewModel.degreeList = pageViewModel.degreeList;
			    viewModel.rankList = [{"name":">5%","value":5},{"name":">10%","value":10},{"name":">20%","value":20},
			                          {"name":">30%","value":30},{"name":">50%","value":50}];
			    viewModel.totalRank = ko.observable(10);
			    
			    if(item){
			    	viewModel.id(item.id());
			    	viewModel.fromDate(item.fromDate());
				    viewModel.toDate(item.toDate());
				    viewModel.university(item.university());
				    viewModel.major(item.major());
				    viewModel.degree(item.degree());
				    viewModel.totalRank(item.totalRank());
			    }
			    
			    viewModel.enableSave = ko.pureComputed(function(){
			    	return viewModel.fromDate().length > 0 && viewModel.university().length>0 && viewModel.major().length>0;
			    });
			    
			    viewModel.save = function(){
			    	var jsonData = ko.toJSON(viewModel);
					$.ajax({url:"save_education", type:"POST", data:jsonData, dataType: "json",
						contentType: "application/json; charset=utf-8",
						success: function(data){
							toastr.success("save success!");
							pageViewModel.OnUserEducationUpdate(data);
							viewModel.modal.close();
					    }
					});		    	
			    }			    
			}

			viewModel.upsertUserEducation = function(item){
				var modalViewModel = new UserEducationModalVM(viewModel,item);
		        modalViewModel.template = 'add-education-template';
		        showModal({
		            viewModel: modalViewModel,
		            context: viewModel,
		        });		        		    
				$('.date').each(function(){
					$(this).datetimepicker({ format: 'yyyy-mm-dd', minView: 2, autoclose: 1, bootcssVer:3, });
				});					
				$(".university").typeahead({items:6,source:universityList,showHintOnFocus:true});
				$(".major").typeahead({items:6,source:majorList,showHintOnFocus:true});				
			}
			
			viewModel.addUserEducation = function(){
				viewModel.upsertUserEducation();
			}
			viewModel.editUserEducation = function(item){
				viewModel.upsertUserEducation(item);
			}

			viewModel.deleteUserEducation = function(item){
				if(confirm("delete current education?")){
					$.ajax({url:"delete_education", type:"POST", data:ko.toJSON(item), dataType: "json", contentType: "application/json; charset=utf-8",
						success: function(data){
							toastr.success("save success!", "",{positionClass: "toast-top-center"});
							viewModel.OnUserEducationUpdate(data);
					    }
					});	
				}
			}
			viewModel.OnUserEducationUpdate = function(data){
				ko.mapping.fromJS(data, {}, viewModel.userEducation);
			}

			ko.applyBindings(viewModel);
			
			$('.date').each(function(){
				$(this).datetimepicker({ format: 'yyyy-mm-dd', minView: 2, autoclose: 1, bootcssVer:3, });
			});	
			
		</script>
        </div>
    </div> 
    
</body>
</html>
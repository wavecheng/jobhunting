$(document).ready(function(){
	$('#myApplyModal').on('show.bs.modal', function (event) {
		  var button = $(event.relatedTarget);
		  var id = button.data('id');
		  $('#cancelLink').attr('href','cancel/' + id);
	});
	
	$("#email").on('blur',function(){
		var email = $(this).val();
		if(email){
		  $.get("register/check_email",{"email":email},function(data){
			if(data == "1"){
		  		$("#email ~ .help-block").html("<label>Email has been used</label>").css("color","red");	
			}
		  });
		}
	})	
	
	toastr.options = {
		  "closeButton": true,
		  "newestOnTop": true,
		  "positionClass": "toast-top-center",
	};

	$( document ).ajaxError(function(event, request, settings) {
		if(request.status != 200){
			toastr.error("Please check data integrity", "Can't complete your request!",{positionClass: "toast-top-center"});
		}
	});
	
});

function nl2br(str){
    return str.replace(/(\r\n|\n\r|\r|\n)/g, "<br>");
}

function loadData(user_json, examCityList){

	$("#university").typeahead({items:6,source:universityList,showHintOnFocus:true});
	$("#major").typeahead({items:6,source:majorList,showHintOnFocus:true});
	
	var mapping = {
	    'married': {
	        create: function(options) {
	            return options.data == true ? "true" : "false";
	        }
	    }
	}
	var viewModel = ko.mapping.fromJS(user_json, mapping);
	
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
	
	viewModel.enableSave = ko.computed(function(){
		return viewModel.name().length > 0  && 
		   viewModel.nameEng() && viewModel.nameEng().length > 0 &&
		   viewModel.birthDate() && viewModel.birthDate().length > 0 &&  
		   viewModel.mobile() && viewModel.mobile().length > 0 &&
		   viewModel.major() && viewModel.major().length > 0 &&
		   viewModel.universityName() && viewModel.universityName().length > 0 &&
		   viewModel.idNo() && viewModel.idNo().length > 0;
	});
	
	//exam city list
	viewModel.examCityList = ko.observableArray(examCityList);
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

	//project 
	var UserProjectModalVM = function (pageViewModel,item) {
	    var viewModel = this;
	    viewModel.id = ko.observable(0);
	    viewModel.fromDate = ko.observable("");
	    viewModel.toDate = ko.observable("");
	    viewModel.name = ko.observable("");	
	    viewModel.description = ko.observable("");	
	    viewModel.duty = ko.observable("");		    
	    if(item){
	    	viewModel.id(item.id());
	    	viewModel.fromDate(item.fromDate());
		    viewModel.toDate(item.toDate());
		    viewModel.name(item.name());
		    viewModel.description(item.description());
		    viewModel.duty(item.duty());
	    }
	    
	    viewModel.enableSave = ko.pureComputed(function(){
	    	return viewModel.fromDate().length > 0 && viewModel.name().length>0 && viewModel.description().length>0;
	    });
	    
	    viewModel.save = function(){
	    	var jsonData = ko.toJSON(viewModel);
			$.ajax({url:"save_project", type:"POST", data:jsonData, dataType: "json",
				contentType: "application/json; charset=utf-8",
				success: function(data){
					toastr.success("save success!");
					pageViewModel.OnUserProjectUpdate(data);
					viewModel.modal.close();
			    }
			});		    	
	    }			    
	}
	viewModel.upsertUserProject = function(item){
		var modalViewModel = new UserProjectModalVM(viewModel,item);
        modalViewModel.template = 'add-project-template';
        showModal({
            viewModel: modalViewModel,
            context: viewModel,
        });		        		    
		$('.date').each(function(){
			$(this).datetimepicker({ format: 'yyyy-mm-dd', minView: 2, autoclose: 1, bootcssVer:3, });
		});								
	}
	
	viewModel.addUserProject = function(){
		viewModel.upsertUserProject();
	}
	viewModel.editUserProject = function(item){
		viewModel.upsertUserProject(item);
	}

	viewModel.deleteUserProject = function(item){
		if(confirm("delete current item?")){
			$.ajax({url:"delete_project", type:"POST", data:ko.toJSON(item), dataType: "json", contentType: "application/json; charset=utf-8",
				success: function(data){
					toastr.success("save success!", "",{positionClass: "toast-top-center"});
					viewModel.OnUserProjectUpdate(data);
			    }
			});	
		}
	}
	viewModel.OnUserProjectUpdate = function(data){
		ko.mapping.fromJS(data, {}, viewModel.userProject);
	}

	//work 
	var UserWorkModalVM = function (pageViewModel,item) {
	    var viewModel = this;
	    viewModel.id = ko.observable(0);
	    viewModel.fromDate = ko.observable("");
	    viewModel.toDate = ko.observable("");
	    viewModel.company = ko.observable("");	
	    viewModel.description = ko.observable("");	
	    viewModel.position = ko.observable("");		    
	    if(item){
	    	viewModel.id(item.id());
	    	viewModel.fromDate(item.fromDate());
		    viewModel.toDate(item.toDate());
		    viewModel.company(item.company());
		    viewModel.description(item.description());
		    viewModel.position(item.position());
	    }
	    
	    viewModel.enableSave = ko.pureComputed(function(){
	    	return viewModel.fromDate().length > 0 && viewModel.company().length>0 && viewModel.description().length>0;
	    });
	    
	    viewModel.save = function(){
	    	var jsonData = ko.toJSON(viewModel);
			$.ajax({url:"save_work", type:"POST", data:jsonData, dataType: "json",
				contentType: "application/json; charset=utf-8",
				success: function(data){
					toastr.success("save success!");
					pageViewModel.OnUserWorkUpdate(data);
					viewModel.modal.close();
			    }
			});		    	
	    }			    
	}
	viewModel.upsertUserWork = function(item){
		var modalViewModel = new UserWorkModalVM(viewModel,item);
        modalViewModel.template = 'add-work-template';
        showModal({
            viewModel: modalViewModel,
            context: viewModel,
        });		        		    
		$('.date').each(function(){
			$(this).datetimepicker({ format: 'yyyy-mm-dd', minView: 2, autoclose: 1, bootcssVer:3, });
		});								
	}
	
	viewModel.addUserWork = function(){
		viewModel.upsertUserWork();
	}
	viewModel.editUserWork = function(item){
		viewModel.upsertUserWork(item);
	}

	viewModel.deleteUserWork = function(item){
		if(confirm("delete current item?")){
			$.ajax({url:"delete_work", type:"POST", data:ko.toJSON(item), dataType: "json", contentType: "application/json; charset=utf-8",
				success: function(data){
					toastr.success("save success!", "",{positionClass: "toast-top-center"});
					viewModel.OnUserWorkUpdate(data);
			    }
			});	
		}
	}
	viewModel.OnUserWorkUpdate = function(data){
		ko.mapping.fromJS(data, {}, viewModel.userWork);
	}
	
	ko.applyBindings(viewModel);
	
	$('.date').each(function(){
		$(this).datetimepicker({ format: 'yyyy-mm-dd', minView: 2, autoclose: 1, bootcssVer:3, });
	});	
	
}

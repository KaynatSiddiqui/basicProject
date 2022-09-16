<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>


<!-- Main Content -->
		<div class="page-wrapper">
            <div class="container-fluid">
				
				<!-- Title -->
				<div class="row heading-bg">
				</div>
				<!-- /Title -->
				
				<!-- Row -->
				<div class="row">
					<div class="col-sm-12">
						<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-4 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Characteristics</span><span class="main_heading_theme_color"> Edit</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Category </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="category" data-style="form-control btn-default btn-outline" onchange="getstandardsbtcat(this.value)" disabled>
															<!-- <option>--- Select ---</option>
															<option>Category 1</option>
															<option>Category 2</option> -->
														</select>
													</div>
												</div>	
											</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Standard
													Name </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
												<select class="selectpicker"
													data-style="form-control btn-default btn-outline"
													id="standard" onchange="getSelectedexams(this.value);" disabled>
													<!-- <option>--- Select ---</option>
															<option>10th Class</option>
															<option>9th Class</option> -->
												</select>
											</div>
										</div>
									</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Exam Type</label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<select class="selectpicker" id="examtype" data-style="form-control btn-default btn-outline" disabled>
															<!-- <option>--- Select ---</option>
															<option>Exam Type 1</option>
															<option>Exam Type 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Difficulty Level</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-7 col-md-7 col-sm-7 col-xs-12">
														<div class="radio radio-info display_intial">
															<div class="col-sm-3">
																<input type="text" id="difficultlevel1" name="difficultlevel1" class="form-control" placeholder="Enter Difficulty Level Name">
															</div>
															<div class="col-sm-3">
																<input type="text" id="difficultlevel2" name="difficultlevel2" class="form-control" placeholder="Enter Difficulty Level Name">
															</div>
															<div class="col-sm-3">
																<input type="text" id="difficultlevel3" name="difficultlevel3" class="form-control" placeholder="Enter Difficulty Level Name">
															</div>
														</div>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Parameter 1</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="text" id="parameter1" name="parameter1" class="form-control" placeholder="Enter Parameter 1">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 2</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="text" id="parameter2" name="parameter2" class="form-control" placeholder="Enter Parameter 2">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
														
															<label class="control-label" for="checkbox3">Parameter 3</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter3" name="parameter3" class="form-control" placeholder="Enter Parameter 3">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
													
															<label class="control-label" for="checkbox3">Parameter 4</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter4" name="parameter4" class="form-control" placeholder="Enter Parameter 4">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div >
															
															<label class="control-label" for="checkbox3">Parameter 5</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter5" name="parameter5" class="form-control" placeholder="Enter Parameter 5">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
														
															<label class="control-label" for="checkbox3">Parameter 6</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter6" name="parameter6" class="form-control" placeholder="Enter Parameter 6">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 7</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter7" name="parameter7" class="form-control" placeholder="Enter Parameter 7">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
														
															<label class="control-label" for="checkbox3">Parameter 8</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter8" name="parameter8" class="form-control" placeholder="Enter Parameter 8">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
															
															<label class="control-label" for="checkbox3">Parameter 9</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter9" name="parameter9" class="form-control" placeholder="Enter Parameter 9">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
														
															<label class="control-label" for="checkbox3">Parameter 10</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter10" name="parameter10" class="form-control" placeholder="Enter Parameter 10">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
														
															<label class="control-label" for="checkbox3">Parameter 11</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter11" name="parameter11" class="form-control" placeholder="Enter Parameter 12">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<div>
														
															<label class="control-label" for="checkbox3">Parameter 12</label>
														</div>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
														<input type="email" id="parameter12" name="parameter12" class="form-control" placeholder="Enter Parameter 12">
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Previous year Questions </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
														<div class="radio radio-info display_intial">
															<div class="col-sm-6">
																<input type="text" id="prevyear" name="prevyear" class="form-control" placeholder="Enter ">
															</div>
															
															<div class="col-sm-5">
																<select class="selectpicker yearsdrp" id="previousyear1" multiple data-style="form-control btn-default btn-outline">
																	
																</select>
															</div>
														</div>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10">
														<label class="control-label" for="example-email">Previous Year other Competitive Exams </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
														<div class="radio radio-info display_intial">
															<div class="col-sm-5">
																<input type="text" id="prevyearother" name="prevyearother" class="form-control"  placeholder="Enter">
															</div>
															
															<div class="col-sm-5">
																<select class="selectpicker yearsdrp " id="previousyear2" name="previousyear2"  multiple data-style="form-control btn-default btn-outline">
															
																</select>
															</div>
														</div>
													</div>
												</div>	
											</div>
											
											<!-- 	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
											            <div class="col-sm-12">
																<a  id="addfileds" style="float:right;cursor: pointer;" ><i class="fa fa-plus-circle fa-3x green"></i></a>
														</div>
												<div class="row form-group" id="divwrapper">
												      
												
												
												
												</div>	
											</div> -->
										</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-5">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/creation/characteristics.jsp" class="btn  btn-info">Back</a>
													<a href="#" onclick="updatecharacterstics()" class="btn  btn-primary">Save</a>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
						</div>
					</div>
				</div>
				<!-- /Row -->
		</div>
		<input type="hidden" class="getdropdownvalue">
	<input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	
	<!-- /Main Content -->
	                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
<script>
$("#charcselect").addClass('active-page');
function addsMoreFields(x,morePower,callback){
	
	var wrapper = $("#divwrapper"); 
    
	if(morePower){
		var len = parseInt(morePower);
		for(var i=0;i<len;i++){
			var $select = $('<select/>', {
				'id':'selet'+i,
		       	'name':"previousyear2",
		  	        'class':"selectpicker yearsdrp",
		  	        'multiple':'',
		  	        'data-style':"form-control btn-default btn-outline"
		      	});


		       $(wrapper).append('<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Previous Year other Competitive Exams </label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-8 col-md-8 col-sm-8 col-xs-12" style="padding-bottom:15px"><div class="radio radio-info display_intial"><div class="col-sm-6"><input type="text" name="prevyearother" class="form-control"  id="inp'+i+'"  placeholder="Enter"/></div><div class="col-sm-5" id="seclt'+i+'"> </div></div></div>');
		       
		       
		       var yearid = $("#previousyear2 option");

			$(yearid).each(function(){
			
				var optval = $(this).val();
				var opttext = $(this).text();
				
				$select.append('<option value="' + optval + '">' +opttext  + '</option>');
			});

		       
		 	$select.appendTo("#seclt"+i).selectpicker('refresh');
		 	
		}
		
		if(callback){
			callback();
		}
	} else{
		var $select = $('<select/>', {
			'id':'selet'+x,
	       	'name':"previousyear2",
	  	        'class':"selectpicker yearsdrp",
	  	        'multiple':'',
	  	        'data-style':"form-control btn-default btn-outline"
	      	});


	       $(wrapper).append('<div class="col-lg-3 col-md-3 col-sm-3 col-xs-10"><label class="control-label" for="example-email">Previous Year other Competitive Exams </label></div><div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div><div class="col-lg-8 col-md-8 col-sm-8 col-xs-12" style="padding-bottom:15px"><div class="radio radio-info display_intial"><div class="col-sm-6"><input type="text" name="prevyearother" class="form-control"  id="inp'+x+'"  placeholder="Enter"/></div><div class="col-sm-5" id="seclt'+x+'"> </div></div></div>');
	       
	       
	       var yearid = $("#previousyear2 option");

		$(yearid).each(function(){
		
			var optval = $(this).val();
			var opttext = $(this).text();
			
			$select.append('<option value="' + optval + '">' +opttext  + '</option>');
		});

	       
	 	$select.appendTo("#seclt"+x).selectpicker('refresh');
	}
	
}


$(document).ready(function() {
	
	
		var charid = getParameterByName('id');
		
		var csdata;
		
		
		var max_fields = 5; 
	    var add_button = $("#addfileds"); 
	    var x = 0; 
	    $(add_button).click(function(e){ 
	        e.preventDefault();
	        if(x < max_fields){   
	        	
	        	addsMoreFields(x);
	            x++;
	        } else{
	        	alert("Maximum Limit reached for adding new fields!!");
	        }
	    });
		    
		
		if(charid!=='' && charid !== null) {
			// questionId is not null 
			getCategoriesByName();
			
			getCharactersticsDataById(charid,function(CharactersticsData){
				
				csdata = CharactersticsData;
				
				getAllYearsForDropDown(csdata.categoryId,csdata.examTypeId,csdata.standardId, function(){
					
					var appenddata="";
					$.ajax({
						type: "GET",
						  dataType: "json",
						  contentType: 'application/json', 
						  url: base_url+'rest/examtype/v1/getexamTypes',
						  beforeSend: function() {
					        $("#loading").show();
					     },
						  success: function(data){
							  $("#loading").hide();
							  for(var i=0; i < data.length; i++){
									var examType = data[i].examType;
									
									appenddata += '<option value="'+data[i].id+'">'
											+examType+'</option>';
							  }
							  
							 	jQuery("#examtype").empty("");
								jQuery("#examtype").append('<option value="--- Select ---">--- Select ---</option>');
								jQuery("#examtype").append(appenddata);
								
							   $("#category").val(csdata.categoryId);
                               // $("#standard").val(csdata.standardId);
                               $("#standard").append('<option value="'+csdata.standardId+'">'+csdata.standard+'</option>');
								$("#examtype").val(csdata.examTypeId);
								
								
								
								var diffi = csdata.difficultyLevel;
					  	    	diffi = diffi.split(",");
					  	    	
					  	    	for(var di=0;di<diffi.length;di++){
					  	    		
					  	    		$("#difficultlevel"+(di+1)).val(diffi[di]);
					  	    		
					  	    	}
					  	    	
					  	    	var paramary = csdata.parameters;
					  	    	paramary = paramary.split(",");
								  
								  for(var j=0; j < paramary.length; j++){
									  $("#parameter"+(j+1)).val(paramary[j]);
								  }
					  	    	
					  	    	
								//previousyear1
								  var pyear1 = csdata.previousExams;
								  if(pyear1!== "" && pyear1 !== null && pyear1 !== undefined ){
									  //pyear1 = pyear1.split(',');
									  /* $("#previousyear1").val(pyear1); */
									  $("#prevyear").val(pyear1); 
								  }

								  
								  
								  var fieldstoadd;
								  
								  //previousyear2
								  var pyear2 = csdata.competativeExams;
								  if(pyear2!== "" && pyear2 !== null && pyear2 !== undefined ){
									  //pyear2 = pyear2.split(',');
									  
									  /* $("#previousyear2").val(pyear2); */
									  $("#prevyearother").val(pyear2);
									  
									  fieldstoadd = pyear2.length-1;
								  }
								  
								  
								  
								  //previousyear3
								 var  prevyearrvalue=[]; 
								  var pyear3 = csdata.previousYearQuestionsId;
								  if(pyear3!== "" && pyear3 !== null && pyear3 !== undefined ){
									  //pyear3 = pyear3.split(',');
									  for (var l=0; l < pyear3.length; l++){
										  var yearid =pyear3[l].id;
										 prevyearrvalue.push(yearid);
									  }
									 }
								  $("#previousyear1").val(prevyearrvalue);
								  
								 //previousyear4
								  var  prevotheryearrvalue=[]; 
								   var pyear4 = csdata.previousYearOthersCompetitativeExamsId;
								  if(pyear4!== "" && pyear4 !== null && pyear4!== undefined){
									  
									  for (var k=0; k < pyear4.length; k++){
										  var compeyearid =pyear4[k].id;
										  prevotheryearrvalue.push(compeyearid);
									  }
									  
									 
									  
									  //$(".getdropdownvalue").val(pyear4);
								  } 
								  $("#previousyear2").val(prevotheryearrvalue); 
							/* 	if(fieldstoadd !== 0 || fieldstoadd !== "" || fieldstoadd !== null || fieldstoadd !== undefined){
									//first parameter is dummy value when auto adding fields
								   addsMoreFields(8,fieldstoadd, function(){
									  x = fieldstoadd;
									  var flen = fieldstoadd-1;
									  console.log('pyear4 = '+pyear4);
									  for(var ff=0;ff<=flen;ff++){
										  $("#inp"+ff).val(pyear2[ff+1]);
										  var newarr = [];
										  newarr = pyear4[ff+1];
										  console.log("newarr = "+newarr.split(','));
										  $("#selet"+ff).val(newarr.split(','));
										  $('.selectpicker').selectpicker('refresh');
									  }
									  $('.selectpicker').selectpicker('refresh');
								  }); 
								} */
								  
								
								  $('.selectpicker').selectpicker('refresh');
							  
						  },
						  error: function(data) {		
							  $("#loading").hide();
							  alert("Ooops something went wrong");

						  }, 
						  
					});
					
				});

			});
			
			
		} else {
			
		   alert("Characteristic not found!");
			
		}

	});

 </script>
	      
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
#image {
	padding: 10px;
	background: #b10058;
	color: #fff;
}

input[type="file"] {
	display: none;
}
</style>

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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Chapters</span><span class="main_heading_theme_color"> Edit</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-6 col-sm-offset-3">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Category </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedExamType(this.value);" id="category" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Exam Type </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedStandards(this.value);" id="examtype" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Exam Type 1</option>
															<option>Exam Type 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Standard Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedSubject(this.value);" id="standard" disabled>
														<!-- 	<option>--- Select ---</option>
															<option selected>10th Class</option>
															<option>9th Class</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Subject Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedUnit(this.value);"  id="subject" disabled>
														<!-- 	<option>--- Select ---</option>
															<option> selectedScience</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Unit Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedChapter(this.value);" id="unit" disabled>
															<!-- <option>--- Select ---</option>
															<option selected>Unit 1</option>
															<option>Unit 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="chaptername" name="chaptername" class="form-control" placeholder="Enter Chapter Name" >
													</div>
												</div>	
											</div>
												<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Chapters
													Icon</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img1" height="35"
													src="http://via.placeholder.com/150x150"
													class="student_pro_img"> <label id="image">Upload
												   Icon <input type="file" id="chapicon">
												</label>

											</div>
										</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													
													<a href="<%= AppConstants.BASE_URL %>admin/creation/chapters.jsp" class="btn  btn-info">Back</a>
													<a  class="btn  btn-primary" id="chpedit" onclick="editChapters();">Save</a>
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
<input type="hidden" id="creationactive" value="creationside"/>
<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	                <script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
	                <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	       <script >
	       $("#chapterselect").addClass('active-page');
	      $(document).ready(function() {
	    	  
	    	  getCategoriesByName(function(){
	    		  getChaptersById();
	    	  });
	    	 /*	 getExamTypeByName(function(){
	    	 		getStandardsByName(function(){
	    	 			getSubjectsByName(function(){
	    	 				getUnitsByName(function(){
	    	 					getChaptersById();
	    	 				});
	    	 			});
	    	 		});
	    	 	 });

	    	 	
	    	  var chapterName=getParameterByName('name');
	  	    	$("#chaptername").val(chapterName); */
	  	    	
	    	});
	      document.getElementById("chapicon").addEventListener("change", SubFile);
			 function SubFile() {
				  
				  if (this.files && this.files[0]) {
				    
				    var FR= new FileReader();
				    
				    FR.addEventListener("load", function(e) {
				      document.getElementById("img1").src  = e.target.result;
				     // document.getElementById("base59photo").value = e.target.result;
				    }); 
				    
				    FR.readAsDataURL( this.files[0] );
				  }
				  
				}
	      
	      </script>

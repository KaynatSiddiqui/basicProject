<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
#image{
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
														<label class="control-label" for="example-email">Standard Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getsubjectssqb(this.value);" id="standard" >
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
														<label class="control-label" for="example-email">Examtype  </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" multiple data-style="form-control btn-default btn-outline"  id="onlyexamtype" >
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
														<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="sqbgetallunits(this.value); sqbsubparamters(this.value);"  id="subject" >
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
														<select class="selectpicker" data-style="form-control btn-default btn-outline" id="unit" onchange="getchapterssqb(this.value);" >
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>
											
											<!--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Parameters </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker " multiple data-style="form-control btn-default btn-outline" id="sqbparameter"  >
															<option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option>
														</select>
													</div>
												</div>	
											</div>-->
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter Name </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" id="chapter" name="chapter" class="form-control" placeholder="Enter Chapter Name" >
													</div>
												</div>	
											</div>
											
													<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Chapter
													Image Upload </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"> <input type="hidden"
													id="base69photo" value=""> <label id="image">Upload
													Profile image <input type="file" id="chapimage">
												</label>

											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Chapter
													Icon Upload </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img1" height="35"
													src="http://via.placeholder.com/150x150"
													class="student_pro_img"> <input type="hidden"
													id="base59photo" value=""> <label id="image">Upload
												   Icon <input type="file" id="chapicon">
												</label>

											</div>
										</div>
									</div>	
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
														<div class="row form-group">
															<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
																<label class="control-label" for="example-email">Chapter Info</label>
															</div>
															<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
															<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
																<textarea class="textarea_editor form-control" rows="15" id="chapterinfo" placeholder="Enter text ..."></textarea>
															</div>
														</div>	
										   </div>
										  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Student link </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker "  data-style="form-control btn-default btn-outline" id="studlink"  >
															 <option>--- Select ---</option>
															<option value="<%= AppConstants.VISIBLE %>"><%= AppConstants.VISIBLE %></option>
															<option value="<%= AppConstants.INVISIBLE %>"><%= AppConstants.INVISIBLE %></option> 
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Chapter Approach Status </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker "  data-style="form-control btn-default btn-outline" id="chapterstatus"  >
															 <option>--- Select ---</option>
															<option value="true">yes</option>
															<option value="false">no</option> 
														</select>
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Color code </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="text" class="form-control" id="colorcode" placeholder="Enter color code">
													</div>
												</div>	
											</div>
										
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a href="<%= AppConstants.BASE_URL %>admin/subjectwisequestionbank/chapters.jsp" class="btn  btn-info">Back</a>
													<a  class="btn  btn-primary" id="sqbchpedit" onclick="sqbChapterUpdate();" >Save</a>
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
	<input type="hidden" id="creationactive" value="subjectwiseside"/>
		<input type="hidden" id="ulactive" value="subjectwisebank_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
	</div>
	<!-- /Main Content -->
	                <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	                <script src="<%=request.getContextPath()%>/assets/js/subjectquestionbank.js"></script>
	                <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	                 <script src="<%=request.getContextPath()%>/assets/js/ckeditor.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	     <script>
	     
	     $("#sbchapter").addClass('active-page');
	     $(document).ready(function() {
	    	 /*  subchapAllSqbParamaters();
	    	 getExamTypeByName();
	    	 getExamTypeByName(function(){
	    		 editsqbChapter();
	    		 
	    	 }); */
	    	 $("#chapterinfo").ckeditor();
	    	 getExamTypeByName('',function(){
	    		 editsqbChapter();
	    	 });
	    	// setTimeout(editsqbChapter, { console.log('4') }, 4000);
 	    });
	     /* setTimeout(function afterTwoSeconds() {
	    	  console.log('2')
	    	}, 2000) */
	     </script>
 <script>
 document.getElementById("chapimage").addEventListener("change", readFile);
	 function readFile() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img").src       = e.target.result;
		      document.getElementById("base69photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
		}
	 
	 document.getElementById("chapicon").addEventListener("change", SubFile);
	 function SubFile() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img1").src  = e.target.result;
		      document.getElementById("base59photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
		}
</script>

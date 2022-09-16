<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<style>
   input[type=radio] {
    border: 0px;
    width: 50%;
    height: 1em;
}

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
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="panel-heading">
						<div class="col-sm-4 pull-left">
							<h6 class="panel-title txt-dark">
								<span class="main_heading_blue">Exam Types</span><span
									class="main_heading_theme_color"> Add</span>
							</h6>
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
												<label class="control-label" for="example-email">Category
												</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select id="category" class="selectpicker"  onchange="getstandardsbtcat(this.value)" data-style="form-control btn-default btn-outline">
													<!--<option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option>-->
												</select>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Standard</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select class="selectpicker" data-style="form-control btn-default btn-outline"
													id="standard">
														
												</select>
											</div>
										</div>
									</div> 
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Exam
													Type </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="examtype" name="examtype"
													class="form-control" placeholder="Enter Exam Type">
											</div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Exam
													Type Details </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="examtypedetails" name="examtype"
													class="form-control" placeholder="Enter Exam Type Details">
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">Enable
													Sections</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<span><input type="radio" name="radio"
													class="checking" id="yes" value="yes"><label
													for="yes">Yes</label> </span> <span><input type="radio"
													name="radio" class="checking" id="No" value="No"><label
													for="No">No</label></span>
												<div id="sections"></div>
											</div>
										</div>
									</div>
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="example-email">ExamType
													Image Upload </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<img id="img" height="150"
													src="http://via.placeholder.com/150x150"
													class="student_profile_img"> <input type="hidden"
													id="base60photo" value=""> <label id="image">Upload
													Profile image <input type="file" id="exaimage">
												</label>

											</div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25">
											<a
												href="<%= AppConstants.BASE_URL %>admin/creation/exam_types.jsp"
												class="btn  btn-info">Back</a> <a href="#" id="exadd" onclick="createExam()"
												class="btn  btn-primary">Add</a>
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
	<%@include file="/jsp/master/footer.jsp"%>

</div>
<!-- /Main Content -->

<input type="hidden" id="examcreatedby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/creation.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script>
$("#examelect").addClass('active-page');
		$(document).ready(function(){
			 getCategoriesByName();
			// getStandardsByName();
			});
		
		</script>
<script>
 document.getElementById("exaimage").addEventListener("change", readFile);
	 function readFile() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img").src  = e.target.result;
		      document.getElementById("base60photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
		}
	 </script>
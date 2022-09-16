<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<!-- Main Content -->
<div class="page-wrapper">
          <div class="container-fluid">
		<!-- Title -->
<div class="row heading-bg">
	<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
		
	</div>
</div>
<!-- /Title -->

<!-- Row -->
<div class="row">
	<div class="col-sm-12">
		<div class="panel panel-default card-view">
			<!--<div class="panel-heading">
		<div class="col-sm-4 pull-left">
			<h6 class="panel-title txt-dark"><span class="main_heading_blue">Title </span><span class="main_heading_theme_color">here</span></h6>
		</div>
		<div class="clearfix"></div>
	</div>-->
	<hr class="light-grey-hr mb-10">
	<div class="row">
		<div class="col-sm-12">
			
		</div>
	</div>
	<hr class="light-grey-hr mt-30 mb-10">
	<div class="row">
		<div class="col-sm-12">
			<form>
				<div class="row">
				<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Categories</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange="getSelectedExamType(this.value)" id="category">
								<!--  <option>--- Select ---</option>
								<option>Mains</option>
								<option>NEET</option>-->
							</select>
						</div>	
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Exam Type</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedStandards(this.value)" id="examtype" disabled>
								<!--  <option>--- Select ---</option>
								<option>Mains</option>
								<option>NEET</option>-->
							</select>
						</div>	
					</div>
					
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Standard</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedSubject(this.value)" id="standard" disabled>
								<!--  <option>--- Select ---</option>
								<option>Mains</option>
								<option>NEET</option>-->
							</select>
						</div>	
					</div>
					
					
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Subject</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedUnit(this.value);" id="subject" disabled>
								<!-- <option>--- Select ---</option>
								<option>Maths</option>
								<option>Physics</option>
								<option>Chemistry</option> -->
							</select>
						</div>	
					</div> 
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Unit</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedChapter(this.value);" id="unit" disabled>
							<!-- 	<option>--- Select ---</option>
								<option>Mains</option>
								<option>NEET</option>-->
							</select>
						</div>	
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Chapter</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" onchange = "getSelectedTopic(this.value);" id="chapter" disabled>
							<!--  	<option>--- Select ---</option>
								<option>Mains</option>
								<option>NEET</option>-->
							</select>
						</div>	
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Topic</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" id="topic" disabled>
								<!--  <option>--- Select ---</option>
								<option>10th</option>
								<option>11th</option>
								<option>12th</option>-->
							</select>
						</div>	
					</div>
					<div class="col-md-2">
						<div class="form-group">
							<label class="control-label mb-5 bold">Type Of Questions</label>
							<select class="selectpicker" data-style="form-control btn-default btn-outline" id="typeofquesname" disabled>
								<!--  <option>--- Select ---</option>
								<option>Layout 1</option>
								<option>Layout 2</option>
								<option>Layout 3</option>-->
							</select>
						</div>	
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="center">
						<a class="btn btn-primary"  onclick="copyToOtherExams()">Edit & Submit</a>
								<a class="btn btn-warning" > Cancel</a>
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
<%@include file="/jsp/master/footer.jsp" %>
</div>
      <!-- /Main Content -->
   <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
     <script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
        
        
        <script>
        $(document).ready(function(){
      	  
      	  var layout = getParameterByName("layout");
      	  
      	  $.ajax({
      		 type:"GET",
      		 dataType: "json",
       		  contentType: 'application/json', 
       		  url:base_url+'rest/dean/getlayoutstocopytootherexam/'+layout,
       		 success: function(data){
       			 $("#typeofquesname").prop('disabled',false);
       			 var append = "";
       			 for(var i=0;i<data.length;i++){
       				var layoutname = data[i].layoutname;
    					//var zoneidis = data.zones[i].id;
    					append += '<option value="'+layoutname+'">'
    							+layoutname+'</option>';
       			 }
       			 
       			 
       			 
       			$("#typeofquesname").empty("");
         			$("#typeofquesname").append('<option value="--- Select ---">--- Select ---</option>');
         			$("#typeofquesname").append(append);
         			
         			$('.selectpicker').selectpicker('refresh');;
       			 
       			 
       			 
       		 },
       		 error: function(){
       			 alert('Layouts not found!');
       		 }
      	  });
      	  
      	  
        });
        
        </script>


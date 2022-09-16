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
									<h6 class="panel-title txt-dark" onclick=""><span class="main_heading_blue">Chapters</span><span class="main_heading_theme_color" onclick=""> Add</span></h6>
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
														<label class="control-label" for="example-email">Test ID </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="number" id="testid" name="testis" class="form-control" placeholder="Enter Testpost Id">
													</div>
													
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">From Student ID </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="number" class="form-control" id="from" placeholder="Enter From id">
													</div>
												</div>	
											</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">To Student ID </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="number" class="form-control" id="to" placeholder="Enter To id">
													</div>
												</div>	
											</div>	
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Percent </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<input type="number" class="form-control" id="percent" placeholder="percentage">
													</div>
												</div>	
											</div>												
								</div>
  </div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													
													<a class="btn  btn-primary"  onclick="runtweak();">Add</a>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<!-- /Row -->
		</div>
	
		<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	</div>
	
	<script>
	function runtweak(){
		var testpostid = $('#testid').val();
		var fromid = $('#from').val();
		var toid = $('#to').val();
		var percentage = $('#percent').val();
		if(testpostid == ""){
			alert('Enter Test post id');
			return false;
		}
		if(fromid == ""){
			alert('Enter From id');
			return false;
		}
		if(toid == ""){
			alert('Enter To id');
			return false;
		}
		if(percentage == ""){
			alert('Enter Percentage id');
			return false;
		}
		
		//var lengthid = toid-fromid;
		for(var i=fromid;i<=toid;i++){
			
			   var student_items  =  {
			"testpostId":testpostid,
			"fromId":i,
			"toId":i,
			"percentage":percentage,
			}
      

	var inputData = JSON.stringify(student_items);
		$.ajax({
		url: base_url+'rest/tweakstudent/writeTweakExam ',
		async:false,
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:inputData,
	    	success: function(data){
	         $('#testid').val('');
	$('#from').val('');
		$('#to').val('');
		$('#percent').val('');
	         	//alert(data.message);
	         		},
	    	error: function(data){
	    		alert(data.responseJSON.errorMessage);
	    	}
	    });
		   }
		
		
	}
	
	</script>
	

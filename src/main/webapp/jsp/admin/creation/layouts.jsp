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
								<div class="col-sm-6 col-xs-12 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Layouts</span></h6>
								</div>
								
								<div class="col-sm-1 col-xs-6 pull-right right">
									<a href="#" class="right inline-block full-screen mr-15">
										<i class="zmdi zmdi-fullscreen theme_color font-24"></i>
									</a>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="panel-wrapper collapse in">
								<div class="panel-body">
									<div class="table-wrap">
										<div class="table-responsive">
										
											<table id="layouts_tbl" class="table display pb-30" >
											<div id="loading">
												<p>Loading...</p></div>
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>layouts</th>
														
													</tr>
												</thead>
												
												<tbody id="layouts">
												
												
													
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
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
	<script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js""></script>
		<script>
		$("#layoselect").addClass('active-page');
	$(document).ready(function(){
		var appenddata;
	  	$.ajax({
	  		type: "GET",
	  		  dataType: "json",
	  		  contentType: 'application/json', 
	  		  url: base_url+'rest/layout/v1/getlayouts',
	  		  success: function(data){
	  	       for(var i=0; i < data.length; i++){
	  			 
	  					 appenddata += "<tr id='sec_row"+data[i].id+"'><td>"+(i+1)+"</td>";    
	  					  appenddata += "<td>"+data[i].layoutname+"</td>"; 
	  				}
	  	     $("#layouts").empty();
			  $("#layouts").append(appenddata);
			  $("#layouts_tbl").DataTable();
	  			
	  		  },
	  		  error: function(data) {		

	  			alert(data.responseJSON.errorMessage);

	  		  }
	  	      	
	  	});
	})
	</script>
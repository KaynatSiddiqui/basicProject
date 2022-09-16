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
						<div class="row">
							<div class="col-sm-12">
								
							</div>
						</div>
						<hr class="light-grey-hr mt-10 mb-10">
						<div class="row">
							<div class="col-sm-12">
								<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="col-sm-4 pull-left">
								<h6 class="panel-title txt-dark"><span class="main_heading_blue">Database</span><span class="main_heading_theme_color"> Chapterwise Count</span></h6>
							</div>
							<div class="clearfix"></div>
						</div>
						<hr class="light-grey-hr mt-30 mb-10">
					</div>
							</div>
						</div>
					</div>
					<div class="panel panel-default card-view">
						<div class="panel-heading">
							<div class="col-sm-4 pull-right right">
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
										<table id="chapterwisecount" class="table ahead_border  display pb-30" >
										 <thead class="th_background">
												<tr>
												<th>S.no</th>
													<th>Chapter Name</th>
													<th>Total</th>
													
													<th>Single correct</th>
													<th>Multi correct</th>
													<th>Integer</th>
													<th>Comprehension</th>
													<th>Multi Comprehension</th>
													<th>Matrix</th>
													
												</tr>
											</thead>
											<tbody id="chapterwise_count">
												
											</tbody >
										</table>
									</div>
								</div>
								<div class="mt-30">
									<a href="<%= AppConstants.BASE_URL %>academic_head/database_count.jsp" class="btn btn-primary pull-center">Back</a>
								<!-- 	<a href="#" class="btn btn-warning pull-right">Download in Excel</a> -->
																<button class="btn btn-download pull-right" type="submit" onclick="fnExcelReport('chapterwisecount')" class="btn btn-warning" id="jquery-word-export">Download in Excel</button>
									
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- /Row -->
		</div>
		<!--<?php echo $footer;?>-->
				<%@include file="/jsp/master/footer.jsp" %>
	
	</div>
	<!-- /Main Content -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	
	 <script>
 $(document).ready(function() {
		
		var subjectc = getParameterByName("id");
	
			var inputData = {
					"subjectId":subjectc,
					"academicheadId":getAHId()
				};
		
			var adappend;
			var chaptercount = JSON.stringify(inputData);
			$.ajax({
				type:"POST",
				  dataType:"json",
				  contentType: 'application/json', 
				  url: base_url+'rest/academichead/v1/getchapterwisecount',
				  data:chaptercount,
				  success: function(data){
					 
					  for(var i=0;i<data.length;i++){
						   adappend += "<tr><td>"+(i+1)+"</td>";  
					 adappend += "<td>"+data[i].chaptername+"</td><td>"+data[i].total+"</td>";    
						
						  adappend += "<td>"+data[i].layout2count+"</td>";
						
						  adappend += "<td>"+data[i].layout4count+"</td>"; 
						
						  adappend += "<td>"+data[i].layout7count+"</td>"; 
						  adappend += "<td>"+data[i].layout8count+"</td>";
						 
						  adappend += "<td>"+data[i].layout11count+"</td>";
						adappend += "<td>"+data[i].layout12count+"</td></tr>";
					  }
					  $("#chapterwise_count").empty();
						$("#chapterwise_count").append(adappend);
						$("#chapterwisecount").DataTable();
				  },
				  error: function (data){
					  alert(data.responseJSON.errorMessage);
				  }
				  
			});
		
		
		
		});
</script>
	
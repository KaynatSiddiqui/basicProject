<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<!-- Main Content -->

<link href="<%=request.getContextPath()%>/assets/css/student/css/designowntest.css" rel="stylesheet">
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
						<div class="col-sm-3" id="getspace">
						 <img src="<%=request.getContextPath()%>/assets/images/students/Attempted.svg" class="img-responsive">
						</div>
						<div class="clearfix"></div>
					</div>
					
					<div class="panel-wrapper collapse in mt-30">
						<div class="panel-body">
							<div class="radio radio-info mb-10">
								<div class="col-sm-2 col-sm-offset-4">
									<input type="radio" name="radio1" id="radio1" value="option1" checked="checked">
									<label for="radio1">
									Full Syllabus
									</label>
								</div>
								<div class="col-sm-2">
									<input type="radio" name="radio2" id="radio2" value="option1">
									<label for="radio2">
									Select Syllabus
									</label>
								</div>
							</div>
							<%-- <div class="row design_box">
								<div class="col-sm-12">
									<div class="button-list center own-design-inline">
									
										<div class="own-design-list-items">
											<img src="<%=request.getContextPath()%>/assets/images/students/tick.png" class="tickimg lumosMinima blockNCenter" width="30" height="30">
											<a href="#" class="own-design-link-item own-design-active">
												<div>
													<img class="subject-image" src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" />
												</div>
												<div class="bold">PHYSICS</div>
											</a>
										</div>
										
										<div class="own-design-list-items">
											<img src="<%=request.getContextPath()%>/assets/images/students/tick.png" class="tickimg knoxMinima blockNCenter" width="30" height="30">
										<a href="#" class="own-design-link-item">
											<div>
												<img class="subject-image" src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" />
											</div>
											<div class="bold">CHEMISTRY</div>
										</a>
										</div>
										
										<div class="own-design-list-items">
											<img src="<%=request.getContextPath()%>/assets/images/students/tick.png" class="tickimg lumosMinima blockNCenter" width="30" height="30">
											<a href="#" class="own-design-link-item own-design-active">
											<div>
												<img class="subject-image" src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" />
											</div>
											<div class="bold">MATHS</div>
										</a>
										</div>
										
										<div class="own-design-list-items">
											<img src="<%=request.getContextPath()%>/assets/images/students/tick.png" class="tickimg lumosMinima blockNCenter" width="30" height="30">
											<a href="#" class="own-design-link-item own-design-active">
												<div>
													
													<img class="subject-image" src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" />
												</div>
												<div class="bold">GK</div>
											</a>
										</div>
										
										<div class="own-design-list-items">
											<img src="<%=request.getContextPath()%>/assets/images/students/tick.png" class="tickimg knoxMinima blockNCenter" width="30" height="30">
											<a href="#" class="own-design-link-item">
												<div>
													<img class="subject-image" src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" />
												</div>
												<div class="bold">ENGLISH</div>
											</a>
										</div>
										
										
										
										
									</div>
								</div>
							< /div> --%>
							         <div class="row" style="margin-bottom:20px;text-align: center;">
											<div class="col-md-12 col-md-offset-3">
										    <ul class="nav nav-tabs" id="settabs" role="tablist">
												<li class="col-md-2 active"><a href="#physics"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" width="50px" height="50px"><p class="heit">Physics</p></a></li>
												<li class="col-md-2"><a href="#chemistry"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/chemistry.png" width="50px" height="50px"><p class="heit">Chemistry</p></a></li>
												<li class="col-md-2"><a href="#math"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/maths.png" width="50px" height="50px"><p class="heit">Maths</p></a></li>
											</ul>
										</div>
									</div>
									
									
							<div class="row" id="sky1">
								<div class="col-sm-9 col-sm-offset-2">
									<div class=" pull-right">
										<span>No.of Chapters Selected: </span><span class="sky_blue">10</span>
									</div>
								</div>
							</div>
							 <div class="tab-content full-syllabus">
							 <div id="physics" class="tab-pane fade in active">
						      <div class="table-wrap">
								<div class="table-responsive design_mock_test">
									<table id="" class="table design_revision_test_br display pb-30" >
										<thead class="th_background">
											<tr>
											    <th></th>
											    <th></th>
												<th>Chapter Name</th>
												<th>In Test<a data-toggle="tooltip" data-original-title="No.of Times Chapter involved in test"><i class="fa fa-exclamation-circle font-24 sky_blue1"></i></a> </th>
												<th>Viewed Qns.</th>
												<th>Correctly answered Qns.</th>
												<th>Wrongly Answered Qns.</th>
												<th>Unattempted Qns.</th>
												<th>TimeTaken</th>
												<th>Avg.Accuracy %</th>
												<th>Avg.Percentage %</th>
												<th>Avg.Qns./ Hr</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											    <td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox">
														<label for="checkbox3">
														</label>
													</div>
												</td>
												<td>
													<img class="subject_icon" src="<%=request.getContextPath()%>/assets/images/students/owndesign/chemistry.svg" />
												</td>
												<td>Physics full - 1</td>
												<td>10</td>
												<td>400</td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank" class="text-success">200</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-danger">120</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-warning">142</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="sky_blue1">200</a></td>
												<td>80%</td>
												<td>50%</td>
												<td>50</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							  </div>
							</div>
							<div id="chemistry" class="tab-pane fade in">
						      <div class="table-wrap">
								<div class="table-responsive design_mock_test">
									<table id="" class="table design_revision_test_br display pb-30" >
										<thead class="th_background">
											<tr>
											    <th></th>
											    <th></th>
												<th>Chapter Name</th>
												<th>In Test<a data-toggle="tooltip" data-original-title="No.of Times Chapter involved in test"><i class="fa fa-exclamation-circle font-24 sky_blue1"></i></a> </th>
												<th>Viewed Qns.</th>
												<th>Correctly answered Qns.</th>
												<th>Wrongly Answered Qns.</th>
												<th>Unattempted Qns.</th>
												<th>TimeTaken</th>
												<th>Avg.Accuracy %</th>
												<th>Avg.Percentage %</th>
												<th>Avg.Qns./ Hr</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											    <td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox">
														<label for="checkbox3">
														</label>
													</div>
												</td>
												<td>
													<img class="subject_icon" src="<%=request.getContextPath()%>/assets/images/students/owndesign/chemistry.svg" />
												</td>
												<td>chemistry - 1</td>
												<td>10</td>
												<td>400</td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank" class="text-success">200</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-danger">120</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-warning">142</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="sky_blue1">200</a></td>
												<td>80%</td>
												<td>50%</td>
												<td>50</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							  </div>
							</div>
							<div id="math" class="tab-pane fade in">
						      <div class="table-wrap">
								<div class="table-responsive design_mock_test">
									<table id="" class="table design_revision_test_br display pb-30" >
										<thead class="th_background">
											<tr>
											    <th></th>
											    <th></th>
												<th>Chapter Name</th>
												<th>In Test<a data-toggle="tooltip" data-original-title="No.of Times Chapter involved in test"><i class="fa fa-exclamation-circle font-24 sky_blue1"></i></a> </th>
												<th>Viewed Qns.</th>
												<th>Correctly answered Qns.</th>
												<th>Wrongly Answered Qns.</th>
												<th>Unattempted Qns.</th>
												<th>TimeTaken</th>
												<th>Avg.Accuracy %</th>
												<th>Avg.Percentage %</th>
												<th>Avg.Qns./ Hr</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											    <td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox">
														<label for="checkbox3">
														</label>
													</div>
												</td>
												<td>
													<img class="subject_icon" src="<%=request.getContextPath()%>/assets/images/students/owndesign/chemistry.svg" />
												</td>
												<td>Maths - 1</td>
												<td>10</td>
												<td>400</td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank" class="text-success">200</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-danger">120</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-warning">142</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="sky_blue1">200</a></td>
												<td>80%</td>
												<td>50%</td>
												<td>50</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							  </div>
							</div>
						</div><!-- tab -->
						            <div class="row" style="margin-bottom:20px;text-align: center;">
											<div class="col-md-12 col-md-offset-3">
										    <ul class="nav nav-tabs" id="settabsselected" role="tablist">
												<li class="col-md-2 active"><a href="#physicss"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/physics.png" width="50px" height="50px"><p class="heit">Physics</p></a></li>
												<li class="col-md-2"><a href="#chemistrys"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/chemistry.png" width="50px" height="50px"><p class="heit">Chemistry</p></a></li>
												<li class="col-md-2"><a href="#maths"  role="tab" data-toggle="tab"><img src="<%=request.getContextPath()%>/assets/landing/img/wrong&timetaken/maths.png" width="50px" height="50px"><p class="heit">Maths</p></a></li>
											</ul>
										</div>
									</div>
									
									<div class="displaynone">
							<div class="row" id="sky2">
								<div class="col-sm-9 col-sm-offset-2">
									<div class=" pull-right">
										<span>No.of Chapters Selected: </span><span class="sky_blue">10</span>
									</div>
								</div>
							</div>
							 <div class="tab-content select-syllabus">
							 <div id="physicss" class="tab-pane fade in active">
						      <div class="table-wrap">
								<div class="table-responsive design_mock_test">
									<table id="" class="table design_revision_test_br display pb-30" >
										<thead class="th_background">
											<tr>
											    <th></th>
											    <th></th>
												<th>Chapters Name</th>
												<th>In Test<a data-toggle="tooltip" data-original-title="No.of Times Chapter involved in test"><i class="fa fa-exclamation-circle font-24 sky_blue1"></i></a> </th>
												<th>Viewed Qns.</th>
												<th>Correctly answered Qns.</th>
												<th>Wrongly Answered Qns.</th>
												<th>Unattempted Qns.</th>
												<th>TimeTaken</th>
												<th>Avg.Accuracy %</th>
												<th>Avg.Percentage %</th>
												<th>Avg.Qns./ Hr</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											    <td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox">
														<label for="checkbox3">
														</label>
													</div>
												</td>
												<td>
													<img class="subject_icon" src="<%=request.getContextPath()%>/assets/images/students/owndesign/chemistry.svg" />
												</td>
												<td>Physicss full - 1</td>
												<td>10</td>
												<td>400</td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank" class="text-success">200</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-danger">120</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-warning">142</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="sky_blue1">200</a></td>
												<td>80%</td>
												<td>50%</td>
												<td>50</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							  </div>
							</div>
							<div id="chemistrys" class="tab-pane fade in">
						      <div class="table-wrap">
								<div class="table-responsive design_mock_test">
									<table id="" class="table design_revision_test_br display pb-30" >
										<thead class="th_background">
											<tr>
											    <th></th>
											    <th></th>
												<th>Chapters Name</th>
												<th>In Test<a data-toggle="tooltip" data-original-title="No.of Times Chapter involved in test"><i class="fa fa-exclamation-circle font-24 sky_blue1"></i></a> </th>
												<th>Viewed Qns.</th>
												<th>Correctly answered Qns.</th>
												<th>Wrongly Answered Qns.</th>
												<th>Unattempted Qns.</th>
												<th>TimeTaken</th>
												<th>Avg.Accuracy %</th>
												<th>Avg.Percentage %</th>
												<th>Avg.Qns./ Hr</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											    <td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox">
														<label for="checkbox3">
														</label>
													</div>
												</td>
												<td>
													<img class="subject_icon" src="<%=request.getContextPath()%>/assets/images/students/owndesign/chemistry.svg" />
												</td>
												<td>chemistrys - 1</td>
												<td>10</td>
												<td>400</td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank" class="text-success">200</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-danger">120</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-warning">142</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="sky_blue1">200</a></td>
												<td>80%</td>
												<td>50%</td>
												<td>50</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							  </div>
							</div>
							<div id="maths" class="tab-pane fade in">
						      <div class="table-wrap">
								<div class="table-responsive design_mock_test">
									<table id="" class="table design_revision_test_br display pb-30" >
										<thead class="th_background">
											<tr>
											    <th></th>
											    <th></th>
												<th>Chapter Name</th>
												<th>In Test<a data-toggle="tooltip" data-original-title="No.of Times Chapter involved in test"><i class="fa fa-exclamation-circle font-24 sky_blue1"></i></a> </th>
												<th>Viewed Qns.</th>
												<th>Correctly answered Qns.</th>
												<th>Wrongly Answered Qns.</th>
												<th>Unattempted Qns.</th>
												<th>TimeTaken</th>
												<th>Avg.Accuracy %</th>
												<th>Avg.Percentage %</th>
												<th>Avg.Qns./ Hr</th>
											</tr>
										</thead>
										<tbody>
											<tr>
											    <td class="center">
													<div class="checkbox checkbox-success">
														<input id="checkbox3" type="checkbox">
														<label for="checkbox3">
														</label>
													</div>
												</td>
												<td>
													<img class="subject_icon" src="<%=request.getContextPath()%>/assets/images/students/owndesign/chemistry.svg" />
												</td>
												<td>Math - 1</td>
												<td>10</td>
												<td>400</td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank" class="text-success">200</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-danger">120</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="text-warning">142</a></td>
												<td><a href="<?php echo base_url();?>student/practice_zone/view_full_paper" target="_blank"  class="sky_blue1">200</a></td>
												<td>80%</td>
												<td>50%</td>
												<td>50</td>
											</tr>
											
										</tbody>
									</table>
								</div>
							  </div>
							</div>
						</div><!-- tab -->
						</div>
					</div>
					<div class="row mb-30">
						<div class="col-md-7 col-md-offset-3">
							<div class="button-list mt-25">
								<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test.jsp" class="btn  btn-warning">Back</a>
								<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test_parameters.jsp" class="btn  btn-primary">Next</a>
								<a href="<%= AppConstants.BASE_URL %>student/student module/design_own_mock_test.jsp" class="btn  btn-info">Cancel</a>
							</div>
						</div>
					</div>
					
			</div>	
				
			</div>
		</div>
		<!-- /Row -->
	</div>
	<%@include file="/jsp/master/footer.jsp" %>
</div>

<!-- /Main Content -->
<script>
	$(document).ready(function(){
		$("#settabs li, #settabsselected li").each(function(z){
			$(this).first().delay(600 * z).animate({'opacity':'1'},1000);
			
		})
		$("#tab-content .tab-pane").each(function(z){
				$(this).first().delay(1000 * z).animate({'marginLeft':'+=-10px','opacity':'1'},1400);
			})
			
	})
	$(".displaynone").hide();
	$(".select-syllabus, #sky2, #settabsselected").hide();
</script>
<script>
		$("input[name=radio1]").on("click",function(){
			   $(this).attr("checked");
				$("input[name=radio2]").removeAttr("checked");
				$(".select-syllabus, #sky2, #settabsselected").hide();
				$(".full-syllabus, #sky1, #settabs").show();
			}) 
	   $("input[name=radio2]").on("click",function(){
		   $(this).attr("checked");
			$("input[name=radio1]").removeAttr("checked");
			$(".select-syllabus, #sky2, #settabsselected").show();
			$(".full-syllabus, #sky1, #settabs").hide();
			$(".displaynone").show();
		})	
</script>
<script type="text/javascript">
	$('.date-picker').datepicker({
		autoclose: true,
		todayHighlight: true,
	}) 

	/* $(document).ready(function(){
		$(".own-design-list-items").mouseover(function(){
			if(!($(this).hasClass('active_clicked'))){
				var tickimage = $(this).find('.tickimg');
				var linkitem = $(this).find(".own-design-link-item");
				
				$(linkitem).removeClass('own-design-active').addClass('own-design-active');
				$(tickimage).removeClass('knoxMinima lumosMinima').addClass('lumosMinima');
			}
		});
		
		$(".own-design-list-items").mouseout(function(){
			
			if(!($(this).hasClass('active_clicked'))){
				var tickimage = $(this).find('.tickimg');
				var linkitem = $(this).find(".own-design-link-item");
				
				$(linkitem).removeClass('own-design-active');
				$(tickimage).removeClass('knoxMinima lumosMinima').addClass('knoxMinima');
			}
			
		});
		 
		
		$(".own-design-list-items").click(function(){
			
			var tickimage = $(this).find('.tickimg');
			var linkitem = $(this).find(".own-design-link-item");
			
			if(!($(this).hasClass('active_clicked'))){
				$(this).addClass('active_clicked');

				$(linkitem).removeClass('own-design-active').addClass('own-design-active');
				$(tickimage).removeClass('knoxMinima lumosMinima').addClass('lumosMinima');
			} else {
				$(this).removeClass('active_clicked');
				
				$(linkitem).removeClass('own-design-active').addClass('own-design-active');
				$(tickimage).removeClass('knoxMinima lumosMinima').addClass('lumosMinima');
			}
			
		});
	}); */
</script>
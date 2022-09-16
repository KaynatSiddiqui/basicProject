<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

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
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Notifications </span><span class="main_heading_theme_color"> Created</span></h6>
								</div>
								<div class="clearfix"></div>
							</div>
							<hr class="light-grey-hr mb-10">
							<div class="row">
								<div class="col-sm-12">
									<div class="button-list">
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Published</a>
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_created.jsp" class="btn btn-danger">Created</a>
										<a href="<%= AppConstants.BASE_URL %>admin/notifications/notifications_add.jsp" class="btn btn-danger btn-outline fancy-button btn-0">Create New</a>
									</div>
								</div>
							</div>
							<hr class="light-grey-hr mt-30 mb-10">
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
											<table id="createddatable" class="table display pb-30" >
												<thead class="th_background">
													<tr>
														<th>S.No</th>
														<th>Notification Name</th>
														<th>Summery</th>
														<th>Preview</th>
														<th>Select Students</th>
														<th>Publish</th>
														<th>Edit</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody id="createdbody">
													<%-- <tr>
														<td>1</td>
														<td>Live Exam Notification</td>
														<td>This is sample text</td>
														<td><a href="<?php echo base_url();?>admin/notifications/preview" class="btn btn-info">Preview</a></td>
														<td>
															<a type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Select Students</a>
														</td>
														<td><a href="#" class="btn btn-success">Publish</a></td>
														<td><a href="<?php echo base_url();?>admin/notifications/edit" class="btn btn-warning">Edit</a></td>
														<td>
															<a href="#" class="btn btn-danger">Delete</a>
														</td>
													</tr>
													<tr>
														<td>2</td>
														<td>Live Exam Notification</td>
														<td>This is sample text</td>
														<td><a href="<?php echo base_url();?>admin/notifications/preview" class="btn btn-info">Preview</a></td>
														<td>
															<a type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Select Students</a>
														</td>
														<td><a href="#" class="btn btn-success">Publish</a></td>
														<td><a href="<?php echo base_url();?>admin/notifications/edit" class="btn btn-warning">Edit</a></td>
														<td>
															<a href="#" class="btn btn-danger">Delete</a>
														</td>
													</tr>
													<tr>
														<td>3</td>
														<td>Live Exam Notification</td>
														<td>This is sample text</td>
														<td><a href="<?php echo base_url();?>admin/notifications/preview" class="btn btn-info">Preview</a></td>
														<td>
															<a type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Select Students</a>
														</td>
														<td><a href="#" class="btn btn-success">Publish</a></td>
														<td><a href="<?php echo base_url();?>admin/notifications/edit" class="btn btn-warning">Edit</a></td>
														<td>
															<a href="#" class="btn btn-danger">Delete</a>
														</td>
													</tr>
													<tr>
														<td>4</td>
														<td>Live Exam Notification</td>
														<td>This is sample text</td>
														<td><a href="<?php echo base_url();?>admin/notifications/preview" class="btn btn-info">Preview</a></td>
														<td>
															<a type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Select Students</a>
														</td>
														<td><a href="#" class="btn btn-success">Publish</a></td>
														<td><a href="<?php echo base_url();?>admin/notifications/edit" class="btn btn-warning">Edit</a></td>
														<td>
															<a href="#" class="btn btn-danger">Delete</a>
														</td>
													</tr>
													<tr>
														<td>5</td>
														<td>Live Exam Notification</td>
														<td>This is sample text</td>
														<td><a href="<?php echo base_url();?>admin/notifications/preview" class="btn btn-info">Preview</a></td>
														<td>
															<a type="button" class="btn btn-primary " data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Select Students</a>
														</td>
														<td><a href="#" class="btn btn-success">Publish</a></td>
														<td><a href="<?php echo base_url();?>admin/notifications/edit" class="btn btn-warning">Edit</a></td>
														<td>
															<a href="#" class="btn btn-danger">Delete</a>
														</td>
													</tr> --%>
												</tbody>
											</table>
										</div>
									</div>
									<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel1">
										<div class="modal-dialog" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
													<h5 class="modal-title center" id="exampleModalLabel1">Select Students</h5>
												</div>
												<div class="modal-body">
													<form>
														<div class="form-group">
															<label for="recipient-name" class="control-label mb-10">Customer Type:</label>
															<select class="selectpicker" data-style="form-control btn-default btn-outline" id="customertype">
																<option>--- Select ---</option>
																<option><%= AppConstants.ALL %></option>
																<option><%= AppConstants.SUBSCRIPTION%></option>
																<option><%= AppConstants.NOTSUBSCRIBED%></option>
																<!-- <option>All</option>
																<option>Subscription</option>
																<option>Not Subscribed</option> -->
															</select>
														</div>
														<div class="form-group">
															<label for="recipient-name" class="control-label mb-10">Account Type:</label>
															<select class="selectpicker" data-style="form-control btn-default btn-outline" id="accounttype">
																<option>--- Select ---</option>
																<option><%= AppConstants.ALL %></option>
																<option><%= AppConstants.APP %></option>
																<option><%= AppConstants.WEBSITE %></option>
															</select>
														</div>
														<!-- <div class="form-group">
															<label for="recipient-name" class="control-label mb-10">Expiry:</label>
															<input type="text" id="datepicker" name="example-email" class="form-control" />
															<select class="selectpicker" data-style="form-control btn-default btn-outline">
																<option>--- Select ---</option>
																<option>All</option>
																<option>1 Month</option>
																<option>2 Months</option>
																<option>3 Months</option>
															</select>
														</div> -->
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10">Category:</label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="category" onchange="getstandardsbtcat(this.value);">
														<!-- 	<option>--- Select ---</option>
																<option>Engineering</option>
																<option>Medical</option>
																<option>Government Job</option>
																<option>Foundation</option> -->
													</select>
												</div>
                                      <div class="form-group">
													<label for="recipient-name" class="control-label mb-10">Standard:</label>
													<select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="standard" onchange="getSelectedExamtypesById(this, event);">
														<!-- 	<option>--- Select ---</option>
																<option>11th</option>
																<option>12th</option>
																<option>N11 & 12th</option> -->
													</select>
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10">Exam
														Type:</label>
														 <select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="examtypeid" >
														<!-- 	<option>--- Select ---</option>
																<option>All</option>
																<option>Mains</option>
																<option>Bitsat</option> -->
													</select>
												</div>

												

												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10">State:</label>
													<select class="selectpicker" multiple data-style="form-control btn-default btn-outline" onchange="getallSelectedcities(this, event);" id="state">
														<option><%=AppConstants.ALL%></option>
														<!-- <option>--- Select ---</option>
																<option>All</option>
																<option>Andhra Pradesh</option>
																<option>Assam</option>
																<option>Telangana</option> -->
													</select>
												</div>
												<div class="form-group">
													<label for="recipient-name" class="control-label mb-10">City:</label>
													<select class="selectpicker" multiple data-style="form-control btn-default btn-outline" id="city">
														<!-- <option>--- Select ---</option>
																<option>All</option>
																<option>Hyderabad</option>
																<option>Guntur</option>
																<option>Vijayawada</option> -->
															</select>
														</div>
														
													</form>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
													<button type="button" class="btn btn-primary" data-dismiss="modal"  onclick="selectStudents()">Select Students</button>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>	
					</div>
					
				</div>
				<!-- /Row -->
			</div>
			<input type="hidden" id="creationactive" value="notifications"/>
			<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/notifications.js"></script>
	   
<script>
	$(document).ready(function() {
		
		
		var currNotId;
		notificationCreated();
		$("#datepicker").datepicker({
			dateFormat : 'dd-mm-yy'
		});
	});
	      	$(document).on('click','#modalbutton',function(){
	      		//getCatid();
	      		getCategoriesByName();
	      		getstatesall();
	      		currNotId = $(this).data('id');
	      	}); 
	      	
	      
	function getSelectedExamtypesById(element, event) {

		var cattypename = $("#category").val();
		/* var catvalue = cattypename.split("_");
		var catname = catvalue[1]; */
		//var exval = $("#standard").val();

		var standardds = [];

		for (var i = 0; i < element.options.length; i++) {
			if (element.options[i].selected) {
				var examvalue = element.options[i].value;
				//var examname = examvalue[1];
				standardds.push(examvalue);
			}
		}

		var inputData = {
			"categoryId" : cattypename,
			"standardIds" : standardds.map(Number),
		};
		var inputdata = JSON.stringify(inputData);
		var appenddata = "";
		$
				.ajax({
					type : "POST",
					dataType : "json",
					contentType : 'application/json',
					url : base_url
							+ 'rest/admin/geteExamTypesBasedOnMultipleStandards',
					data : inputdata,
					beforeSend : function() {
						$("#loading").show();
					},
					success : function(data) {
						$("#loading").hide();
						for (var i = 0; i < data.length; i++) {
							var standards = data[i].name;
							var standardsid = data[i].id;
							appenddata += '<option value="'+standardsid+'">'
									+ standards + '</option>';

						}

						jQuery("#examtypeid").empty("");
						/* jQuery("#examtypeid")
								.append(
										'<option value="">--- Select ---</option>'); */
						jQuery("#examtypeid").append(appenddata);

						$("#examtypeid").prop("disabled", false);
						$('.selectpicker').selectpicker('refresh');
					},
					error : function(data) {
						$("#loading").hide();
						 alert(data.responseJSON.errorMessage);

					}

				});
	}
	function getstatesall() {
		var appenddata;
		$.ajax({
			type : "GET",
			url : base_url + 'rest/admin/v1/getnotificationstates',
			dataType : "json",
			contentType : 'application/json',

			success : function(data) {
				for (var i = 0; i < data.length; i++) {

					var statename = data[i].name;
					var stateid = data[i].id;
					//var zoneidis = data.zones[i].id;
					appenddata += '<option value="'+stateid+'">' + statename
							+ '</option>';

				}
				$("#state").prop("disabled", false);
				$("#state").empty("");
				$("#state").append(
						'<option value="">--- Select States---</option>');
				$("#state").append(appenddata);

				$('.selectpicker').selectpicker('refresh');

			},
			error : function(data) {

				alert("States not found!");

			}

		});
	}
	function getallSelectedcities(element, event) {

		var appenddata = "";

		var cities = [];

		for (var i = 0; i < element.options.length; i++) {
			if (element.options[i].selected) {
				cities.push(element.options[i].value);
			}
		}

		var inputData = {
			"state" : cities
		};
		var inputdata = JSON.stringify(inputData);
		/*   var exval = val;
		var stateid = [];
		stateid = exval.split(',');
		
		var inputData = {
			"state":stateid
			
		}; */
		$.ajax({
			type : "POST",
			dataType : "json",
			contentType : 'application/json',
			url : base_url + 'rest/admin/v1/getnotificationcities',
			data : inputdata,
			beforeSend : function() {
				$("#loading").show();
			},
			success : function(data) {
				$("#loading").hide();
				for (var i = 0; i < data.length; i++) {
					appenddata += '<option value="'+data[i].id+'" selected>'
							+ data[i].name + '</option>';
				}

				$("#city").empty("");
				$("#city").append('<option value="">--- Select ---</option>');
				$("#city").append(appenddata);

				$('.selectpicker').selectpicker('refresh');
				$("#city").prop("disabled", false);

			},
			error : function(data) {
				$("#loading").hide();
				alert("Cities not found!");

			},

		});

	}
</script>
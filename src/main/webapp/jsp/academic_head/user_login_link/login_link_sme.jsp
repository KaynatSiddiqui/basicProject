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
							<div class="panel-heading">
								<div class="col-sm-3 pull-left">
									<h6 class="panel-title txt-dark"><span class="main_heading_blue">Login </span><span class="main_heading_theme_color">Linking</span></h6>
								</div>
								<div class="col-sm-5 pull-left mb-20">
									<div class="col-md-6">
												<div class="form-group">
													<label class="control-label mb-5 bold">Sme Details <span class="red">*</span></label>
													<select class="selectpicker" data-style="form-control btn-default btn-outline" id="sme">
														
													</select>
												</div>	
											</div>
										<div class="col-md-2">
												<a class="btn btn-primary mt-25" onclick="loginlinkbyid('sme')">Submit</a>	
											</div>	
								</div>
								<div class="col-sm-4 col-xs-6 right">
									<a href="<%= AppConstants.BASE_URL %>academic_head/user_login_link/login_link_sme_assign.jsp" class="btn btn-primary">Assign</a>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="panel panel-default card-view">
							<div class="panel-heading">
							<div class="col-sm-6 right">
							<a class="btn btn-success btn-lg" onclick="fnExcelReport()">Download Excel</a>
							
							</div>
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
											<table id="smelogindatable_1" class="table table-bordered display pb-30" >
												<thead class="th_background">
													<tr>
														<th>Sme</th>
														<th>Photo</th>
														<th>Dean</th>
								<!-- 						<th>Super Dean</th> -->
														<th>Standard</th>
														<th>Subject</th>
											     		<th>Unit</th>														
														<th>Chapter</th>
														<th>Present Status</th>
													</tr>
												</thead>
												<tbody id ="smeloginbody">
													
													
													
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
				<%@include file="/jsp/master/footer.jsp" %>
		</div>
        <!-- /Main Content -->
         <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/assets/js/app.js"></script>
	    <script src="<%=request.getContextPath()%>/assets/js/academichead.js"></script>
	     <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
		<script>
		function fnExcelReport()
		{
		    var tab_text = '<table border="1px" style="font-size:14px">';
		    var textRange; 
		    var j = 0;
		    var tab = document.getElementById('smelogindatable_1'); // id of table
		    var lines = tab.rows.length;
		    var postfix ="data";
		    // the first headline of the table
		    if (lines > 0) {
		        tab_text = tab_text + '<tr bgcolor="#87AFC6">' + tab.rows[0].innerHTML + '</tr>';
		    }

		    // table data lines, loop starting from 1
		    for (j = 1 ; j < lines; j++) {     
		        tab_text = tab_text + "<tr>" + tab.rows[j].innerHTML + "</tr>";
		    }

		    tab_text = tab_text + "</table>";
		    tab_text = tab_text.replace(/<A[^>]*>|<\/A>/g, "");             //remove if u want links in your table
		    tab_text = tab_text.replace(/<img[^>]*>/gi,"");                 // remove if u want images in your table
		    tab_text = tab_text.replace(/<input[^>]*>|<\/input>/gi, "");    // reomves input params
		    // console.log(tab_text); // aktivate so see the result (press F12 in browser)

		    var ua = window.navigator.userAgent;
		    var msie = ua.indexOf("MSIE "); 

		     // if Internet Explorer
		    if (msie > 0 || !!navigator.userAgent.match(/Trident.*rv\:11\./)) {
		        txtArea1.document.open("txt/html","replace");
		        txtArea1.document.write(tab_text);
		        txtArea1.document.close();
		        txtArea1.focus(); 
		        sa = txtArea1.document.execCommand("SaveAs", true, "DataTableExport.xls");
		    }  
		    else // other browser not tested on IE 11
		    	//var a = document.createElement('a');    
		    	sa = window.open('data:application/vnd.ms-excel,' + encodeURIComponent(tab_text));  
		    	sa.download = "export.xls";
		    return (sa);
		}
	$(document).ready(function(){
		getSelectedByAllSme();
		GetAllLoginSme();
	})
	</script>

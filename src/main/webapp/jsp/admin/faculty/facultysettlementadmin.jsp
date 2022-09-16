<%@page import="com.zomant.util.AppConstants"%>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
	
</script>

<div class="page-wrapper">
	<%@include file="/jsp/master/default.jsp"%>

	<div class="container-fluid">


		<div class="row heading-bg"></div>

					<div class="panel panel-default card-view">
							<div class="panel-heading">
								<div class="col-sm-2 pull-left">
									<h6 class="panel-title txt-dark"><span class="creations_heading">Create Settlement</span></h6>
								</div>
							</div>
					</div>

		<div class="row">

			<div class="col-sm-12" style="display: flex; justify-content: center;">

				<div class="my-5" style="margin-top: 15px;">

					<div class="form-group">
								<label for="States">States</label>
								<select name="country" class="form-control" id="States">
								</select>
							</div>
							<div class="form-group">
								<label for="selectsalesman">Sales Person</label>
								<select name="country" class="form-control" id="selectsalesman">
								</select>
							</div>
							<div class="form-group">
								<button class="btn btn-primary btn-block" onclick="createSettlement()">Submit</button>
							</div>
					</div>
		</div>
	</div>
	<div  id="settlecard_card" style="margin-top:30px;display:flex; justify-content:center"></div>
</div>


 
 <input type="hidden" id="creationactive" value="faculty_zone" /> <input
		type="hidden" id="ulactive" value="faculty" />



	<script src="<%=request.getContextPath()%>/assets/js/facultysettlementadmin.js"></script>
 	<script src="https://sdk.amazonaws.com/js/aws-sdk-2.357.0.min.js"></script>


	<%@include file="/jsp/master/footer.jsp"%>
	<input type="hidden" id="createdby" value="${AdminType }" />
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

	<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
</div>
 
 
 <script type="text/javascript" charset="utf8"
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

	<script type"text/javascript">
  function preview_image(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
</script>


<script>
$("#salesmanstudent").addClass('active-page');
	$(document).ready(function() {

		$('#myTable').DataTable();

	});
	

	
	
	var time_stamp="";
	 var bucketName = "doubtsvideos";
	 var bucketRegion = "ap-south-1";
	 var IdentityPoolId = "ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a";
	 //var IdentityPoolId = "ap-south-1:00ad6d2b-fd7b-48d1-812b-196b94449348";
	AWS.config.region = 'ap-south-1'; // Region
	AWS.config.credentials = new AWS.CognitoIdentityCredentials({
	    IdentityPoolId: 'ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a',
	});

	            var s3 = new AWS.S3({
	                apiVersion: '2014-06-30',
	                params: {Bucket: bucketName}
	        });
	            
	        
</script>

 
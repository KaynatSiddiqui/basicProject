<!-- <!DOCTYPE html>
<html lang="en">
<head>
  <title>Dashboard</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
  
  </head>
  

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">
 -->

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

<div class="page-wrapper">
		<div class="container-fluid">
			
			<!-- Title -->
			<div class="row heading-bg">
			</div>
			<div class="row mt-20">

			<div class="col-md-3">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<label class="control-label" for="videotype">Category</label> <select
						class="form-control" name="selValue"
						data-style="form-control btn-default btn-outline" id="categories">
					</select>
				</div>
			</div>
			<div class="col-md-3">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<label class="control-label" for="videotype">Subject</label> <select
						class="form-control" name="selValue"
						data-style="form-control btn-default btn-outline" id="subjectId">
					</select>
				</div>
			</div>
			<div class="col-md-4">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

					<label class="control-label" for="videotype">Video type</label> <select
						class="form-control" name="selValue"
						data-style="form-control btn-default btn-outline" id="videotype">
						<option value="">--- Select ---</option>

						<option value="live now">Live now</option>
						<option value="Doubts Videos">Doubts Videos</option>
						<option value="Tricks & Logics">Tricks & Logics</option>
						<option value="Motivational Videos">Motivational Videos</option>
						<option value="News & Update">News & Update</option>
						<option value="Concepts - in Real world applications">Concepts
							- in Real world applications</option>
						<option value="Methods to Solve">Methods to Solve</option>
						<option value="Crash Course">Crash Course</option>
						<option value="Fit Formulae">Fit Formulae</option>
						<option value="Confusions & Misconceptions">Confusions &
							Misconceptions</option>
					</select>


				</div>


			</div>
			<div class="col-md-2 mt-20">
<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
<button class="btn btn-success" onclick="getall()">submit</button>
</div>
		</div>
			
	<div class="row">

	<div class="col-sm-12 ml-30">
	
	<div class="my-5" style="display:flex; justify-content:end;margin-top:15px;">
	
		<button class="btn btn-primary" onclick="registration()">Add Live video</button>
	</div>
	
	<div class="table-responsive mt-20" >

	 <table id="myTables" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover">
	
		<thead class=" text-center" style="color:white">
			<tr>
				<th>Id</th>
				 <th>Professor Name</th>
				<th>Live Date</th>
				<th>Video Type</th>
				 <th>ActionS</th>  

				
				
					
			</tr>
		</thead>
		<tbody id="tablebody">
		
		</tbody>
	
	</table>
	
	
 </div>
 </div>
   
</div>
</div>
</div>





  
 <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
  
  <script>
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
	    
	} );
  
  </script>
  
  
  
<script src="<%=request.getContextPath()%>/assets/js/zomantlivevideotable.js"></script>

  
	<%@include file="/jsp/master/footer.jsp" %>
		<input type="hidden" id="createdby"  value="${AdminType }" />
		    <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	      <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	     
<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	</div>
    
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
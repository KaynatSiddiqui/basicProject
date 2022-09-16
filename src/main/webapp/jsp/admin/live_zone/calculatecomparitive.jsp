	<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<style>
.heading{
text-align:center;
padding-top:50px;
padding-bottom: 50px;
}
</style>
<!-- Main Content -->
<div class="page-wrapper">
    <div class="container-fluid">

       

        <!-- Row -->
        <div class="row">
         <h2 class="heading"> Calculate Comparitive Analytics </h2>
            <div class="col-sm-12 center">
                <%--   <a id="comparativebtn" href="#"><img src="<%=request.getContextPath()%>/assets/images/students/summary/Comparitive-Analytics white.png" class="img-responsive icon-btn" style="box-shadow: 0 1px 20px lightgray;width: 195px;border-radius: 20px; margin: 0 auto;" alt="logo" ></a> --%>
                   <a id="comparativebtn" class="btn btn-save_next"  >Calculate Comparitive Analytics</a>
                </div>
            </div>
        </div>
        <!-- /Row -->
			<input type="hidden" id="creationactive" value="livezoneside"/>
			<input type="hidden" id="ulactive" value="livezone_dr"/>
			<%@include file="/jsp/master/footer.jsp" %>
			<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
			
			
		</div>
        <!-- /Main Content -->
        
      <script>
      $("#compselect").addClass('active-page');
    	  $("#comparativebtn").click(function(){
    		  $("#comparativebtn").addClass('disablelink').removeClass('activatelink');
    		  $.ajax({
  				url: base_url+'rest/student/v1/calculatecomparativeanalytics',
  				type:"GET",
  				dataType:"json",
  				contentType:'application/json',
  				success:function(data){
  					console.log("sucess funtion");
  	        	alert(data.responseJSON.message);
  		        },
  		error:function(data){
  			alert(data.responseJSON.errorMessage);
  			console.log("error funtion");
  		}
  			});
    	  });
     
      </script>
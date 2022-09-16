<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery/dist/jquery.min.js"></script>
      
      <script>
      $(window).load(function() {
    	  var pathArray = window.location.pathname.split( '/' );
          var segment_4 = pathArray[4];
         
           if(segment_4 == "live_zone_active_full_mocks.jsp"){
        	  
        	   $(".loader").fadeOut();
        	   
          } else{
        	  $(".loader").css("background","url('../../../assets/images/students/spinner2.gif') 50% 50% no-repeat");
        	  $(".loader").fadeOut("slow");
          }
    	    
    	    $("#mainwrap").css("display","block");
    	});
      </script>
      
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
      
      <!-- Slimscroll JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/jquery.slimscroll.js"></script>
      <!-- Bootstrap Core JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
      <!-- Data table JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/dataTables-data.js"></script>
      <!-- Owl JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/owl.carousel/dist/owl.carousel.min.js"></script>
      <!-- Switchery JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/switchery/dist/switchery.min.js"></script>
      <!-- Fancy Dropdown JS -->
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/dropdown-bootstrap-extended.js"></script>
      <!-- Init JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/dist/js/init.js"></script>
      <!-- Progressbar Animation JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/waypoints/lib/jquery.waypoints.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery.counterup/jquery.counterup.min.js"></script>
      <!-- Bootstrap Select JavaScript -->
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/css/vendors/bower_components/jquery-toast-plugin/dist/jquery.toast.min.js"></script>
   <script src="<%=request.getContextPath()%>/assets/ckeditor/ckeditor.js"></script>  
<script src="<%=request.getContextPath()%>/assets/js/testscreenjs/alertify.min.js"></script>
   <!--  <script src="https://cdn.ckeditor.com/4.10.0/full-all/ckeditor.js"></script> -->
   <script src="<%=request.getContextPath()%>/assets/css/dist/js/jquery-ui.js"></script>
       
    
       <script src="<%=request.getContextPath()%>/assets/js/common.js"></script> 
       <script src="<%=request.getContextPath()%>/assets/js/studentlogin.js"></script> 
        <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katex.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/auto-render.min.js"></script>
      <script src="<%=request.getContextPath()%>/assets/ckeditor/katexckeditor/katexrendercode.js"></script>
	
      <script>
	  $(document).ready(function(){
		/*   var exam = getParameterByName('exm');
			var currTabActive =  getParameterByName('testtype');
			if((exam =="" || exam =="undefined" || exam ==null)&&(currTabActive =="" || currTabActive =="undefined" || currTabActive ==null)){
				singlepage('jsp/student/livezone/livezone_activetest.jsp');
			}else{
				singlepage('jsp/student/livezone/livezone_activetest.jsp?&exm='+exam+'&testtype='+currTabActive);
			}
		   */
         var LoginData = getLoginData();
         $("#contactname").html(LoginData.name);
			 
		 
	   }); 
	  
	   function singlepage(urltype,filename){
	 	$.ajax({
	 				url: base_url+urltype,
	 				 type:"GET",
	 				 success: function(data){
	 			    	 $("#urlid").empty();
	 			     $("#urlid").html(data);
	 			   // window.history.pushState(filename,'skygets', filename);
	 			    },
	 				error:function(data){
	 					 window.location = base_url+"jsp/student/livezone/live_zone_active_full_mocks.jsp";
	 				}
	 				
	 			})
	 			
	 		
	 	} 
     </script>
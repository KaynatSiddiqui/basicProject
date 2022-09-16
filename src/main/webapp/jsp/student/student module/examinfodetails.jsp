<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="student" scope="session"  />
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

  <link href="<%=request.getContextPath()%>/assets/css/student/css/examinfodetails.css" rel="stylesheet"> 
   
   
   	<section class="special-area bg-white section_padding_70" id="about">
		<div class="special_description_area mt-100">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-xl-5 ml-xl-auto">
						<div class="special_description_content">
							<h2>What is <span id="examname"></span>?</h2>
							<p id="examdefi"></p>
					
					
						</div>
					</div>
					<div class="col-lg-6">
						<div class="special_description_img" >
						<p id="mainimage"></p>

						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

        <section class="special-area bg-white" id="about">
        <div class="container">
         
			<div class="row">
				<!-- Single Special Area -->
				<div class="col-12 col-md-3">
					<div id='jeemainsmenu'>
					

				
					</div>
				</div>
				<!-- Single Special Area -->

				<div class="col-12 col-md-9" id="infodescrip">
						

				</div>
		</div>
	</div>
	</section>
   
   
   
   
   
   	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/studentlogin.js"></script>
	<script>
 	function showOnlyOneTabDesc(firElem){
 	   $(".fasak").each(function(){
            $(this).hide();
           if($(this).attr('id') == firElem) {
               $(this).show();
           }
       });
    } 
 	
 	$(document).ready(function(){
		 examtypeinfoshowing();
		 getcatstudent();
	 }); 

      
       $('#myTabs li').click(function(){
		    $('li').removeClass("active");
		    $(this).addClass("active");
		});  

	</script>

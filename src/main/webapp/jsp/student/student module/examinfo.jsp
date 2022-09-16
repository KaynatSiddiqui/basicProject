<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

 <c:set var="AdminType" value="student" scope="session"  />
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>

    <%-- <link href="<%=request.getContextPath()%>/assets/landing/css/style.css" rel="stylesheet"> --%>

    
  <style>


.line-shape {
    margin-left: calc(50% - 40px);
}

.line-shape-white, .line-shape {
    width: 80px;
    height: 2px;
    background-color: #fb397d;
    margin-top: 15px;
}

.examboxlinks {
    display: inline-block;
    width: 100%;
    height: 100%;
}


.single-special {
    border: 1px solid #d3d8de;
    padding: 40px;
    min-height: 270px;
    border-radius: 40px 40px 40px 0px;
    -webkit-transition-duration: 800ms;
    -o-transition-duration: 800ms;
    transition-duration: 800ms;
    margin-bottom: 30px;
    background:#fff;
}

.single-icon {
    margin-bottom: 25px;
}

.single-special:hover {
    -webkit-box-shadow: 0 10px 90px rgba(0, 0, 0, 0.08);
    box-shadow: 0 10px 90px rgba(0, 0, 0, 0.08);
}
  
  
  </style>
    
    
    
       <section class="examinfo  section_padding_70 mt-100" id="about">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- Section Heading Area -->
                    <div class="section-heading text-center">
                        <h2 style="font-size:35px">Exam Info</h2>
                        <div class="line-shape"></div>
                    </div>
                </div>
            </div>

            <div class="row mt-30" id="examtypedetails">

                

            </div>
        </div>
        </section>
        
        
        


<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/studentlogin.js"></script>

<script>

$(document).ready(function(){
	gettingexaminfoexams();
})

</script>
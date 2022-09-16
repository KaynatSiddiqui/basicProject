<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<link
	href="<%=request.getContextPath()%>/assets/css/student/css/feedbacks.css"
	rel="stylesheet">
<style>
/* tbody, tfoot, thead, tr, th, td {
	border: 0px !important;
} */

	.containerBox {
  position: relative;
  display: inline-block;
}

.image-box {
  position: absolute;
  display:flex;
  justify-content:flex-end;

  width: 100%;
 
  top: 10px;
  left:-25px;

}

.text-box {
  position: absolute;
  display:flex;
  justify-content:flex-start;

  width: 100%;
 
  bottom: 65px;
  right:-16px;
 
  

}
.rh{
cursor: pointer;
}
#nav a.highlite {
	color: orange;
	border-bottom: 2px solid orange
}
/* tbody, tfoot, thead, tr, th, td {
    /* border: 0px !important; */
} */

.rating {
cursor: pointer;	
}

.video {
	cursor: pointer;
}

.video {
	cursor: pointer;
}


.rating {
  position: relative;
  display: flex;
  justify-content: center;
  flex-direction: row-reverse;
}
.rating input {
  -webkit-appearance: none !important;
     -moz-appearance: none !important;
          appearance: none;
}
.rating label {
  position: relative;
  display: flex;
  flex-direction: column;
  align-items: center;
  height: 128px;
  text-align: center;

  
  cursor: pointer;
  opacity: 0;
}
.rating svg {
  margin-bottom: 12px;
}
.rating span {
  
  font-weight: 600;
  
}

.rating  label {
  width: 120px;
  opacity: 0.3;

}

.rating input:hover + label,
.rating input:checked + label {
  width: 120px;
  opacity: 1;
  filter: grayscale(0);
}
.rating input:hover + label span,
.rating input:checked + label span {
  transform: none;
  opacity: 3;
}
.alertify-message{
line-height: 53px;
}

</style>
<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<input type="hidden" id="studenactive" value="studentfeedback" /> <input
			type="hidden" id="greyactive"
			value="<%=request.getContextPath()%>/assets/images/students/feedback/feedbackwhite.svg" />

		<input type="hidden" id="studentid" value="">
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">
					<div class="panel-heading">
						<div class="col-sm-1 col-xs-6 pull-left left">
							<a href="#" class="right inline-block full-screen mr-15"> <span>
									<img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/Doubtss.svg" id="paddon" width="240px">
							</span>

							</a>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div class="button-list">
								<a
									href="<%=AppConstants.BASE_URL%>student/student module/doubts_post_new.jsp"
									class="feedbacks_heading mr-20 soo"><img
									src="<%=request.getContextPath()%>/assets/images/students/postnew_gray.png"
									id="gb" width="40px">&nbsp;&nbsp;Post Doubt</a> <a
									href="<%=AppConstants.BASE_URL%>student/student module/doubts.jsp"
									class="feedbacks_heading active mr-20 foo"><img
									src="<%=request.getContextPath()%>/assets/images/students/posted_color-brown_svg.svg"
									id="bg" width="40px">&nbsp;&nbsp;Posted</a>

							</div>
						</div>
					</div>
					<div class="panel-wrapper collapse in">
						<div class="panel-body">
							<div class="row mt-30" id="feedback_body">

								<div class="col-sm-12" style="background: #f0f4f5;">
									<div class="container">
										<div class="tab-struct vertical-tab custom-tab-1">
											<div class="row" style="margin-top: 10px" id="top_nav">
												<ul role="tablist" id="nav" class="nav nav-tabs"
													style="min-height: 40px; display: flex; justify-content: center">

												</ul>
											</div>




											<div class="table-responsive">

												<table id="myTable"  data-order='[[ 0, "desc" ]]' class="table table-hover" style="">
													<thead style="background:rgba(33, 33, 33, 0.05);">
														<tr>

															<!-- <th class=" text-center" >Status</th> -->
															<th class=" text-center">Id</th>
															<th class=" text-center">Student Doubt</th>
															<th class=" text-center">Student Doubt Image</th>
															 <th class=" text-center" >Faculty Answer</th> 

															<th class=" text-center">Solution Image</th>
															<th class=" text-center">Solution Video</th>
															<th class=" text-center">Rating</th>

															<th class=" text-center">Status</th>


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
						</div>
					</div>
				</div>
			</div>
		</div>
		 <div class="modal fade" id="showim" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">
            <i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>
          </button>
          <div style="display:flex;">
        <!--   <h6 style="color:#FFA500"><span></span>Hey <span id="studentName" >,</span></h6> -->
          <h6 style="color:#FFA500;" class="text-center">Doubt Image</h6>
          </div>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center" id="imgs">
       
      </div>
    </div>
  </div>
 
 </div>
 
  <div class="modal fade" id="showimg" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">
             <i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>
          </button>
          <div style="display:flex;">
          <!-- 	<h6 style="color:#FFA500"><span></span>Hey <span id="studentNames" >,</span></h6> -->
           <h6 style="color:#FFA500;" class="text-center">Solution Image</h6>
           </div>
    </div>
    
        <div class="modal-body" style="display:flex; justify-content:center">
       
								<div id="imags"></div>
      </div>
    </div>
  </div>
 
 </div>
 
 <div class="modal fade" id="showStudenttext" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">
             <i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>
          </button>
          <div style="display:flex;">
          <!-- 	<h6 style="color:#FFA500"><span></span>Hey <span id="studentNames" >,</span></h6> -->
           <h6 style="color:#FFA500;" class="text-center">Doubt</h6>
           </div>
    </div>
    
        <div class="modal-body" style="">
       
		<div id="doubtText"></div>
      </div>
    </div>
  </div>
 
 </div>
 <div class="modal fade" id="showFaculty" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
		
          <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#FFA500">
             <i class="fa fa-times-circle" style="color:#FFA500" aria-hidden="true"></i>
          </button>
          <div style="display:flex;">
          <!-- 	<h6 style="color:#FFA500"><span></span>Hey <span id="studentNames" >,</span></h6> -->
           <h6 style="color:#FFA500;" class="text-center">Solution</h6>
           </div>
    </div>
    
        <div class="modal-body" style="">
       
		<div id="solutionText"></div>
      </div>
    </div>
  </div>
 
 </div>
 
 
 
		<div id="videorate"></div>
		<div id="rate"></div>
		
	</div>
</div>


<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

<script>
	$(document).ready(function() {

		$('#myTable').DataTable();

	});
</script>

<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<%-- <script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script> --%>

<%-- <script src="<%=request.getContextPath()%>/assets/js/testpost.js"></script> --%>

<%@page import="com.zomant.util.AppConstants"%>
 <%@include file="/jsp/master/default.jsp"%>
     <!-- Main Content -->
     <style>
     .codal {
   z-index: 1;
    display: none;
    padding-top: 10px;
    position: fixed;
    left: 32px;
    top: 81px;
    width: 97%;
    height: 86%;
    overflow: auto;
    background-color: rgb(0,0,0);
    background-color: rgba(0,0,0,0.8);
}

.modalcontent{
margin: auto;
display: block;
    position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}


.modal-hover-opacity {
opacity:1;
filter:alpha(opacity=100);
-webkit-backface-visibility:hidden
}

.modal-hover-opacity:hover {
opacity:0.60;
filter:alpha(opacity=60);
-webkit-backface-visibility:hidden
}


.close {
text-decoration:none;
float:right;
font-size:24px;
font-weight:bold;
color:white;
opacity:1;
}
 tbody, tfoot, thead, tr, th, td{
		border: 1px solid #777;
	}    
     </style>
        <div class="page-wrapper">
            <div class="container-fluid">
                <!-- Title -->
                <div class="row heading-bg"></div>
                <!-- /Title -->
                <!-- Row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="panel panel-default card-view">
                            <div class="panel-heading">
                                <div class="col-sm-4 pull-left">
                                    <h6 class="panel-title txt-dark">					
									<span class="main_heading_blue">Feedbacks </span><span class="main_heading_theme_color"> Preview</span>				
									</h6>
								</div>
                                <div class="clearfix"></div>
                            </div>
                            <hr class="light-grey-hr mb-10">
                            <div class="row">
                                <div class="col-md-8 col-md-offset-2">
                                    <div class="row">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Customer ID</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="customerid"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Customer Name</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="customername"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Parent ID</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="parentid"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Parent Name</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="parentname"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">State</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="statee"> </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">City</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="city"> </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Catagery</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="cate"> </div>
                                            </div>
                                        </div>
                                       <!--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Subscribed Product</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="subscribe"></div>
                                            </div>
                                        </div> -->
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Mail Id</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="mailid"> </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Phone Number</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="mobilenum"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Regarding</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="regarding"></div>
                                            </div>
                                        </div>
                                       <!--  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Product Type</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="producttype"></div>
                                            </div>
                                        </div> -->
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Date</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="date"> </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Photo</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="pic"> </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="row form-group">
                                                <div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
                                                    <label class="control-label pull-right font-16" for="example-email">Feedback</label>
                                                </div>
                                                <div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
                                                <div class="col-lg-8 col-md-8 col-sm-7 col-xs-10" id="feedback"> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="center mb-20"> <a href="<%=AppConstants.BASE_URL%>admin/parentfeedbacks/feedbacks.jsp" class="btn  btn-danger">Back</a> </div>
                                </div>
                            </div>
                        </div>
                    </div>
			<div id="modal01" class="codal" onclick="this.style.display='none'">
				<span class="close">&times;&nbsp;&nbsp;&nbsp;&nbsp;</span>
				<div class="modalcontent">
					<img id="img01" style="height:555px">
				</div>
			</div>
		</div>
               	<input type="hidden" id="creationactive" value="parentfeedback"/>
            </div>
            <%@include file="/jsp/master/footer.jsp"%>
        </div>
        <!-- /Main Content -->
        <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
       <script src="<%=request.getContextPath()%>/assets/js/parent.js"></script>
        <script>
            $(document).ready(function() {
            	var appenddata ="";
                var id = getParameterByName('id');
                $.ajax({
                    url: base_url + 'rest/feedback/v1/getAllstudentsfeedbackbyid/' + id,
                    type: "GET",
                    dataType: "json",
                    contentType: 'application/json',
                    success: function(data) {
                        $("#customerid").html(data.customerId);
                        $("#customername").html(data.customerName);
                        $("#parentid").html(data.parentId);
                        $("#parentname").html(data.parentName);
                        $("#statee").html(data.state);
                        $("#city").html(data.customerCity);
                        $("#cate").html(data.category);
                       // $("#subscribe").html(data[0].subscribe);
                        $("#mailid").html(data.parentEmail);
                        $("#mobilenum").html(data.parentmobile);
                        $("#regarding").html(data.regarding);
                       // $("#producttype").html(data[0].producttype);
                        $("#date").html(data.date);
                        if(data.photo != "" || data.photo != null){
                        	appenddata += "<img src="+data.photo+" class='modal-hover-opacity' width='160px' height='160px' style='border-radius:15px' onclick='onClick(this)'>";
        					/* appenddata += "<img src='http://via.placeholder.com/150x150' width='160px' height='160px' style='border-radius:15px'>"; */
        					$("#pic").html(appenddata);
        				}else{
        				/* appenddata += "<img src="+data[0].photo+" width='160px' height='160px' style='border-radius:15px'>"; */
        				appenddata += "<img src='http://via.placeholder.com/150x150' class='modal-hover-opacity' width='160px' height='160px' style='border-radius:15px' onclick='onClick(this)'>"; 
        		          $("#pic").html(appenddata);
        				
        				}
                        
                        $("#feedback").html(data.feedback);
                    },
                    error: function(data) {
                        alert("NO data Found");
                    }   
                        
                        
                });     
                        
            });         
                        
                        
       </script>                 
        <script>

function onClick(element) {
	  document.getElementById("img01").src = element.src;
	  document.getElementById("modal01").style.display = "block";
	}

</script>
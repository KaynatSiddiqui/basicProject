<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

<style>

	 .notificationactive{
background-color: #b2cc37;
}
	 
.card {
	background: #fff;
	border-radius: 2px;
	display: inline-block;
	height: 80px;
	width:650px;
	margin: 1rem;
	border-radius:15px;
	padding:7px 15px;
	position: relative;
	opacity:0.8;
	color:black;
}

.card-1 {
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	transition: all 0.3s cubic-bezier(.25, .8, .25, 1);
}

.card-1:hover {
	box-shadow: 0 14px 28px rgba(0, 0, 0, 0.25), 0 10px 10px
		rgba(0, 0, 0, 0.22);
		opacity:1.0;
}

.with-nav-tabs.panel-primary .nav-tabs > li > a,
.with-nav-tabs.panel-primary .nav-tabs > li > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li > a:focus {
    color: #fff;
    font-weight:bold;
}
.with-nav-tabs.panel-primary .nav-tabs > .open > a,
.with-nav-tabs.panel-primary .nav-tabs > .open > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > .open > a:focus,
.with-nav-tabs.panel-primary .nav-tabs > li > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li > a:focus {
	    color: #fff;
    background: #b2cc37;
   box-shadow: 0 5px 6px olive;
	border-color: transparent;
	transform: scale(1.1);
}
.with-nav-tabs.panel-primary .nav-tabs > li.active > a,
.with-nav-tabs.panel-primary .nav-tabs > li.active > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.active > a:focus {
	color: #fff;
	background-color: #b2cc37;
	border-color: #428bca;
	border-bottom-color: transparent;
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu {
    background-color: #428bca;
    border-color: #3071a9;
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a {
    color: #fff;   
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
    background-color: #3071a9;
}
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a,
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
    background-color: #4a9fe9;
}

#testname{
 margin-top:15px;
 white-space:nowrap;

}


.headset{
    color: white;
    padding: 7px;
    border-bottom: 2px solid white;
    }
    
    .sssr{
    text-transform:uppercase;
    }
    
      .selct{
       position: relative;
    top: -5px;
    right: -22px;
}

.notif{

    width: 170px;
   height: 40px;
}

 .panel-heading {
         border-color: transparent !important;
         margin-top: 15px !important;
 }
     .foo .last_image{display:none}
.foo:hover img:first-child{display:none}
.foo:focus img:first-child{display:none}
.foo:hover .last_image{display:inline-block;
    position: relative;
    left: 11px;
    top: 4px;
        width: 30px;
}
.foo:focus .last_image{display:inline-block;width: 40px;position: relative !important;
    top: 5px !important;
    left: 12px !important;
        width: 30px;}
.panel{
	    border: 1px solid transparent !important;
}
 .nav-tabs > li > a {
 padding: 7px 20px;
  border-radius: 10px !important;
    background: #999;
}
 .nav-tabs > li {
             margin-right: 48px !important;
    border-radius: 12px; }
    

.nav-tabs > li > a{padding:0;}
#Tab1_1 .img-1{
    border-radius: 25px;
    position: relative;
       top: 5px;
    left: 10px;
}
#Tab2_2 .img-2{
    border-radius: 25px;
    position: relative;
        top: 5px;
    left: 12px;
}
#myTabs_8 .marleft{margin-left: 20px;}
.txt-dark span img{        box-shadow: 1px 3px 6px 1px #777;
    border-radius: 10px;}
    #myTabs_8{margin-top: -31px;}
	
@media (max-width: 768px) {
    #myTabs_8{
       margin-top:0px;
     }
 }
</style>


<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->
	<input type="hidden" id="studenactive" value="studentnotify"/>
				<input type="hidden" id="greyactive" value="<%=request.getContextPath()%>/assets/images/students/notifications/Notificationwhite.svg"/>
			
		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel with-nav-tabs panel-primary" style="background: #f0f4f5;">
					<div class="panel-heading mb-10">
						<div class="col-sm-4 pull-left">
							<h6 class="panel-title txt-dark">
								<span><img src="<%=request.getContextPath()%>/assets/images/students/notificatoins_header.svg" width="240px"> </span>
							</h6>
						</div>
						<div class="clearfix"></div>
					</div>
					<hr class="light-grey-hr mb-10">
					<div class="row">
						<div class="col-sm-12">
							<div class="container">
								<ul role="tablist" class="nav nav-tabs" id="myTabs_8">
									<li  role="presentation" class="marleft active"><a
										aria-expanded="true" data-toggle="tab" class="notif foo" role="tab" id="Tab1_1"
										href="#Tab_1"><img src="<%=request.getContextPath()%>/assets/images/students/Application_(Reverse_white)_SVG.svg" class="img-1"  width="30px" style="border-radius:25px" ><img src="<%=request.getContextPath()%>/assets/images/students/Application_color.png" class="last_image active" width="40px" style="border-radius:25px" ><span class="selct"><%= AppConstants.APPLICATION %></span></a></li>
									<li role="presentation" ><a id="Tab2_2"
										data-toggle="tab" class="notif foo" role="tab" href="#Tab_2"
										aria-expanded="false"><img src="<%=request.getContextPath()%>/assets/images/students/promotional_(Transparant_white)_SVG.svg"  class="img-2"  width="30px" style="border-radius:25px" ><img src="<%=request.getContextPath()%>/assets/images/students/promotional_PNG_color.png" class="last_image" width="40px" style="border-radius:25px" ><span class="selct"><%= AppConstants.PROMOTIONAL %></span></a></li>
								</ul>
							</div>
						</div>
					</div>
					<hr class="light-grey-hr mt-30 mb-10">
					<div class="tab-content" id="myTabContent_1">
						<div id="Tab_1" class="tab-pane fade active in" role="tabpanel">
							<div class="row" id="appli">
							
									
									
								</div>
							</div>
							
							<div id="Tab_2" class="tab-pane fade active in" role="tabpanel">
							<div class="row" id="promo">
												
							</div>
						</div>
						</div>
					
					
				</div>
			</div>
		</div>
		<!-- /Row -->
	</div>
	<%@include file="/jsp/master/footer.jsp"%>
</div>
<!-- /Main Content -->

<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/student.js"></script>
<script>

$(document).ready(function(){
	$("#Tab1_1").click();
});

$('a[data-toggle="tab"] ').on('click', function(e) {
	var LoginData = getLoginData();
	 var studentid = LoginData.studentid;
	var applicant = "";
	var promotion = "";
	var current_tab = $(e.target).text();

$.ajax({
url: base_url+'rest/student/v1/getnotifications/'+studentid+'/'+current_tab,
type:"GET",
dataType:"json",
contentType :'application/json',
success:function(data){
for(var i=0;i<data.length;i++){
	if(current_tab == "Application"){
applicant += 	'<div class="col-sm-8 col-sm-offset-3">'+
'<a href="notifications_view.jsp?id='+data[i].id+'" onclick="notificationstatus('+data[i].id+');" >'+
'<div class="card card-1">'+
'<div class="row ">'+
	'<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">'+
		'<p class="font-18 text-center" id="testname">'+data[i].notificationName+'</p>'+
	'</div>'+
	'<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">'+
		'<p class="text-center" id="fullmock">'+data[i].updatedDate+'</p>'+
		'<p class="text-center" id="fullmock"><i class="fa fa-angle-right fa-2x" aria-hidden="true" style="float: right"></i></p>'+
	'</div>'+
'</div>'+
'</div>'+
'</a>'+
'</div>'
}
else if(current_tab  == "Promotional"){
		promotion += '<div class="col-sm-8 col-sm-offset-3">'+
		 '<a href="notifications_view.jsp?id='+data[i].id+'" onclick="notificationstatus('+data[i].id+');">'+
		'<div class="card card-1">'+
		'<div class="row ">'+
			'<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6 pull-left">'+
				'<p class="font-18 text-center" id="testname">'+data[i].notificationName+'</p>'+
			'</div>'+
			'<div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">'+
				'<p class="text-center" id="fullmock">'+data[i].updatedDate+'</p>'+
				'<p class="text-center" id="fullmock"><i class="fa fa-angle-right fa-2x" aria-hidden="true" style="float: right"></i></p>'+
			'</div>'+
		'</div>'+
	'</div>'+
	'</a>'+
	'</div>'	
	}
}

$("#appli").empty("");
$("#appli").append(applicant);

$("#promo").empty("");
$("#promo").append(promotion);

},
error:function(data){
	 alert(data.responseJSON.errorMessage);
}

});
})

function notificationstatus(val){
	var LoginData = getLoginData();
	 var studentid = LoginData.studentid;
	var inputData = {
			"studentId" : studentid,
			"notificationId" : val
		};
		var inputdata = JSON.stringify(inputData);
	
	$.ajax({
		type : "POST",
		dataType : "json",
		contentType : 'application/json',
		url : base_url + 'rest/student/v1/saveNotificationSeeAlert',
		data : inputdata,
		beforeSend : function() {
			$("#loading").show();
		},
		success : function(data) {
			//alert(data.message);

		},
		error : function(data) {
		
			alert(data.responseJSON.errorMessage);

		},

	});
	
}

</script>
<script type="text/javascript">
	 var page = $("#studenactive").val();
	   $("#"+page).addClass('notificationactive');
	   $("#notificationtext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#notificationgrey").attr("src",icon); 
	</script>
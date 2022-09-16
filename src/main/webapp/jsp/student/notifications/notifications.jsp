<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>

 <link href="<%=request.getContextPath()%>/assets/css/student/css/notifications.css" rel="stylesheet">



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
								<span><img src="<%=request.getContextPath()%>/assets/images/students/sidetitlecards/notificatoins_header.svg" width="240px"> </span>
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
	 <input type="hidden" id="creationactive" value="usefulside"/>
			<input type="hidden" id="ulactive" value="useful"/>
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
		if(data[i].notificationSeen == false){
			var color= "card";
		}else{
			var color= "cardseen";
		}
applicant += 	'<div class="col-sm-5">'+

'<div class="'+color+' card-1">'+
'<div class="row ">';
if(data[i].notificationSeen == false){
	applicant +='<a href="notifications_view.jsp?id='+data[i].id+'" onclick="notificationstatus('+data[i].id+');" >' 	
}else{
	applicant += '<a href="notifications_view.jsp?id='+data[i].id+'" >'
}

applicant += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">'+
	    '<p class="" id="fullmock" style="float:right;">'+data[i].updatedDate+'</p>'+ 
		
	'</div>'+
	'<div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">'+
	    '<p class="font-18" id="testname">'+data[i].notificationName+'</p>'+
		'</div>'+
		'</a>'+
		'<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">'
		if(data[i].notificationSeen == true){
			applicant += '<a href="#" class="" id="notifdelete" data-id="'+data[i].id+'_Application"><i class="fa fa-trash fa-2x" aria-hidden="true" style="float: right"></i></a>'
		}else{
			applicant +=  '';
		}
		applicant += '</div>'+
'</div>'+
'</div>'+
'</div>'
}
else if(current_tab  == "Promotional"){
	if(data[i].notificationSeen == false){
		var color= "card";
	}else{
		var color= "cardseen";
	}
		promotion += '<div class="col-sm-5">'+
		
		'<div class="'+color+' card-1">'+
		'<div class="row ">';
		if(data[i].notificationSeen == false){
			promotion += '<a href="notifications_view.jsp?id='+data[i].id+'" onclick="notificationstatus('+data[i].id+');">';	
		}else{
			promotion += '<a href="notifications_view.jsp?id='+data[i].id+'">';
		}
		
		promotion += '<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">'+
			    '<p class="" id="fullmock" style="float:right;">'+data[i].updatedDate+'</p>'+ 
			'</div>'+
			'<div class="col-lg-11 col-md-11 col-sm-11 col-xs-11">'+
			    '<p class="font-18" id="testname">'+data[i].notificationName+'</p>'+
			'</div>'+
			'</a>'+
			'<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">'
			if(data[i].notificationSeen == true){
				promotion += '<a href="#" class="" id="notifdelete" data-id="'+data[i].id+'_Promotional"><i class="fa fa-trash fa-2x" aria-hidden="true" style="float: right"></i></a>'
			}else{
				promotion += '';
			}
			promotion += '</div>'+
		'</div>'+
	'</div>'+
	
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
$(document).on("click", "a[id^=notifdelete]", function() {
	 var LoginData = getLoginData();
	 var studentid = LoginData.studentid;
	var idtab = $(this).attr('data-id');
	var id = idtab.split("_");
	var notiId = id[0];
 	var con = confirm("Are you Sure to delete?");
 	var pon = confirm("Really are you Sure?");
 	var inputData ={
			"notificationId":notiId,
			"studentId":studentid
	}
	  if(con == true){
		  if(pon == true){
	
	var outputData = JSON.stringify(inputData);
		$.ajax({
 	  type: "POST",
	  dataType: "json",
	  contentType: 'application/json', 
	  data:outputData,
	  url: base_url+'rest/student/deletestudentnotification',
	  
	  success: function(data){	  
		  if(data.status){
 		alert(data.message);
 		if(id[1] == "Promotional"){
 			$("#Tab2_2").click();
 		}else{
 			$("#Tab1_1").click();
 		}
		  }
		  },
	    
	  error: function(data){
	   		alert(data.responseJSON.errorMessage);
	   	}

});
	  }
		  }
 	});


</script>
<script type="text/javascript">
	 var page = $("#studenactive").val();
	   $("#"+page).addClass('notificationactive');
	   $("#notificationtext").css('color','white');
	   var icon = $("#greyactive").val();
	   $("#notificationgrey").attr("src",icon); 
	</script>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Select Category, ExamType and Standard &centerdot; Skyget</title>
  
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
   <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/catselectfiles/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/catselectfiles/bootstrap-select.min.css">
	<style>
		/*custom font*/
@import url(https://fonts.googleapis.com/css?family=Montserrat);

/*basic reset*/
* {margin: 0; padding: 0;}

html {
	height: 100%;
	/*Image only BG fallback*/
	
	/*background = gradient + image pattern combo*/
	/* background: 
		linear-gradient(rgba(196, 102, 0, 0.6), rgba(155, 89, 182, 0.6));
		 */
/* background-image: linear-gradient(to right top, #ff0099, #f30cb0, #e224c8, #c939df, #a64bf4); */
background-image: linear-gradient(to right bottom, #5d57ea, #6e53e7, #7d50e3, #8a4bdf, #9647db);
}

body {
	font-family: montserrat, arial, verdana;
}
/*form styles*/
#msform {
	width: 800px;
	margin: 50px auto;
	text-align: center;
	position: relative;
	z-index: 1;
}
#msform fieldset {
	background: white;
	border: 0 none;
	border-radius: 3px;
	box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
	padding: 20px 30px;
	box-sizing: border-box;
	width: 80%;
	margin: 0 10%;
	
	/*stacking fieldsets above each other*/
	position: relative;
}
/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
	display: none;
}
/*inputs*/
#msform input, #msform textarea {
	padding: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	margin-bottom: 10px;
	width: 100%;
	box-sizing: border-box;
	font-family: montserrat;
	color: #2C3E50;
	font-size: 13px;
}
/*buttons*/
#msform .action-button {
	width: 100px;
	background: #27AE60;
	font-weight: bold;
	color: white;
	border: 0 none;
	border-radius: 1px;
	cursor: pointer;
	padding: 10px 5px;
	margin: 10px 5px;
}
#msform .action-button:hover, #msform .action-button:focus {
	box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
}
/*headings*/
.fs-title {
	font-size: 15px;
	text-transform: uppercase;
	color: #2C3E50;
	margin-bottom: 10px;
}
.fs-subtitle {
	font-weight: normal;
	font-size: 13px;
	color: #00d0ff;
	margin-bottom: 20px;
}
/*progressbar*/
#progressbar {
	margin: 30px 0;
	overflow: hidden;
	/*CSS counters to number the steps*/
	counter-reset: step;
}
#progressbar li {
	list-style-type: none;
	color: white;
	text-transform: uppercase;
	font-size: 16px;
	width: 33.33%;
	float: left;
	position: relative;
}
#progressbar li:before {
	content: counter(step);
	counter-increment: step;
	width: 30px;
	line-height: 30px;
	display: block;
	font-size: 16px;
	color: #333;
	background: white;
	border-radius: 3px;
	margin: 0 auto 5px auto;
}
/*progressbar connectors*/
#progressbar li:after {
	content: '';
	width: 100%;
	height: 2px;
	background: white;
	position: absolute;
	left: -50%;
	top: 15px;
	z-index: -1; /*put it behind the numbers*/
}
#progressbar li:first-child:after {
	/*connector not needed before the first step*/
	content: none; 
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before,  #progressbar li.active:after{
	background: #27AE60;
	color: white;
}
.row{
	width: 100%;
	display: inline-block;
	padding-bottom: 10px;
}
.box-2{
	position: relative;
    min-height: 1px;
	width: 50%;
	display: inline-block;
}
.box-3{
	position: relative;
    min-height: 1px;
	width: 33.33%;
	display: inline-block;
}
.catsel,.exsel,.stdsel{
	padding: 20px;
}	
.catsel:hover,.exsel:hover,.stdsel:hover{
	cursor: pointer;
	border: 2px solid #00d0ff;
}	
.imgActive{
	border: 2px solid #00d0ff;
}
.imgp{
	min-height: 200px;
}

.headlogo {

    width: auto;
    height: 70px;
}
#particles-js {
	width: 100%;
	height: 100%;
	background-size: cover;
	background-position: 50% 50%;
	position: fixed;
	top: 0px;
	z-index: 0;
}

.rightCats{
	position: absolute;
    right: 15px;
    top: 13px;
    cursor: pointer;
}

.leftCats{
    position: absolute;
    left: 15px;
    top: 13px;
    cursor: pointer;
}

.lumosMinima{
	visibility: visible;
}

.knoxMinima{
	visibility: hidden;
}

.blockNCenter{
	display: block;
    margin: 0 auto;
}
	</style>
	<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
</head>

<body style="background:transparent">
<input type="hidden" name="selectedcategory" id="selectedcategory">
<input type="hidden" name="selectedexamtype" id="selectedexamtype">
<input type="hidden" name="selectedstandard" id="selectedstandard">

<input type="hidden" name="selectedcategoryid" id="selectedcategoryid">
<input type="hidden" name="selectedexamtypeid" id="selectedexamtypeid" value="">
<input type="hidden" name="selectedstandardid" id="selectedstandardid">

  <!-- multistep form -->
<form id="msform">

	<div>
		<!--<img class="headlogo" src="<%=request.getContextPath()%>/assets/landing/img/logo.svg" >-->
		<img class="headlogo" src="<%=request.getContextPath()%>/assets/landing/img/bg-img/Skygetlogowithslogan.svg">
	</div>
  <!-- progressbar -->
  <ul id="progressbar">
    <li class="active">Category</li>
    <li>Standard</li>
    <li>ExamType</li>
  </ul>


  <fieldset id="f1">
    <h3 class="fs-subtitle">Select a Category</h3>
    <div class="rightCats closeBtnSelect"><img src="<%=request.getContextPath()%>/assets/images/images/Close.svg" class="closeBtnSelectImg" width="20" height="20"></div>
   	<div class="row" id="catemedi">
   		<p>Loading...</p>
   	</div>
  </fieldset>
  
  <fieldset id="f2"> 
   <div class="leftCats backBtnSelect" id="stdprev" onclick="previous(this,'#f1')"><img src="<%=request.getContextPath()%>/assets/images/images/backarrow.svg" class="backBtnSelectImg" width="20" height="20"></div>
    <h3 class="fs-subtitle">Select Standard</h3>
    <div class="rightCats closeBtnSelect"><img src="<%=request.getContextPath()%>/assets/images/images/Close.svg" class="closeBtnSelectImg" width="20" height="20"></div>
	<div class="row" id="standards">
   		<p>Loading...</p>
   	</div>
  </fieldset>
  
  <fieldset id="f3">
   <div class="leftCats backBtnSelect" id="examprev" onclick="previous(this,'#f2')"><img src="<%=request.getContextPath()%>/assets/images/images/backarrow.svg" class="backBtnSelectImg" width="20" height="20"></div>
    <h3 class="fs-subtitle">Select ExamType</h3>
    <div class="rightCats closeBtnSelect"><img src="<%=request.getContextPath()%>/assets/images/images/Close.svg" class="closeBtnSelectImg" width="20" height="20"></div>
   <div class="row" id="examtype">
   		<p>Loading...</p>
   	</div>
   	
    <input type="button" name="next" class="next action-button" value="Next" id="examnext" />
  </fieldset>
  
</form>

  <button type="button" style="display:none" class="btn btn-info btn-lg pose" data-toggle="modal" data-target="#myModal">Open Modal</button>


 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h5 style="text-align: center;font-size: 16px;font-weight: bold;">Fill the below details</h5>
          <h6 style="color:blue;font-size: 15px;font-weight: bold;text-align: center;">To Predict your future college</h6>
        </div>
        <div class="modal-body">
         <div class="row">
								<div class="col-sm-12">
									<form>
										<div class="row">
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">State </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="state" onchange="getallSelectedcities(this, event);" data-style="form-control btn-default btn-outline">
															<!-- <option>--- Select ---</option>
															<option>Mains</option>
															<option>NEET</option> -->
														</select>
													</div>
												</div>	
											</div>
												<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">City </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="city"  data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>10th Class</option>
															<option>9th Class</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label"  for="example-email">Standard </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="standard" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Exam Type 1</option>
															<option>Exam Type 2</option> -->
														</select>
													</div>
												</div>	
											</div>
											
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Quota </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="quota" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Science</option>
															<option>Social</option> -->
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Gender </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="gender" onchange="" data-style="form-control btn-default btn-outline" >
															<option>--- Select ---</option>
															<option value="Male">Male</option>
															<option value="Female">Female</option>
														</select>
													</div>
												</div>	
											</div>
											<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
												<div class="row form-group" style="display:flex">
													<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
														<label class="control-label" for="example-email">Branch </label>
													</div>
													<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
													<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
														<select class="selectpicker" id="branch" data-style="form-control btn-default btn-outline" >
															<!-- <option>--- Select ---</option>
															<option>Chapter 1</option>
															<option>Chapter 2</option> -->
														</select>
													</div>
												</div>	
											</div>
										</div>
										<div class="row">
											<div class="col-md-6 col-md-offset-4">
												<div class="button-list mt-25">
													<a  onclick="submitCatMenu()" class="btn  btn-primary">Submit</a>	
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
        </div>

      </div>
      
    </div>
  </div>

<div id="particles-js"></div>


	<script type="text/javascript">
$.getScript("https://cdnjs.cloudflare.com/ajax/libs/particles.js/2.0.0/particles.min.js", function(){
    particlesJS('particles-js',
      {
        "particles": {
          "number": {
            "value": 80,
            "density": {
              "enable": true,
              "value_area": 800
            }
          },
          "color": {
            "value": "#ffffff"
          },
          "shape": {
            "type": "circle",
            "stroke": {
              "width": 0,
              "color": "#000000"
            },
            "polygon": {
              "nb_sides": 5
            },
            "image": {
              "width": 100,
              "height": 100
            }
          },
          "opacity": {
            "value": 0.5,
            "random": false,
            "anim": {
              "enable": false,
              "speed": 1,
              "opacity_min": 0.1,
              "sync": false
            }
          },
          "size": {
            "value": 5,
            "random": true,
            "anim": {
              "enable": false,
              "speed": 40,
              "size_min": 0.1,
              "sync": false
            }
          },
          "line_linked": {
            "enable": true,
            "distance": 150,
            "color": "#ffffff",
            "opacity": 0.4,
            "width": 1
          },
          "move": {
            "enable": true,
            "speed": 6,
            "direction": "none",
            "random": false,
            "straight": false,
            "out_mode": "out",
            "attract": {
              "enable": false,
              "rotateX": 600,
              "rotateY": 1200
            }
          }
        },
        "interactivity": {
          "detect_on": "canvas",
          "events": {
            "onhover": {
              "enable": true,
              "mode": "repulse"
            },
            "onclick": {
              "enable": true,
              "mode": "push"
            },
            "resize": true
          },
          "modes": {
            "grab": {
              "distance": 400,
              "line_linked": {
                "opacity": 1
              }
            },
            "bubble": {
              "distance": 400,
              "size": 40,
              "duration": 2,
              "opacity": 8,
              "speed": 3
            },
            "repulse": {
              "distance": 200
            },
            "push": {
              "particles_nb": 4
            },
            "remove": {
              "particles_nb": 2
            }
          }
        },
        "retina_detect": true,
        "config_demo": {
          "hide_card": false,
          "background_color": "#b61924",
          "background_image": "",
          "background_position": "50% 50%",
          "background_repeat": "no-repeat",
          "background_size": "cover"
        }
      }
    );

});

</script>
        <script src="<%=request.getContextPath()%>/assets/css/catselectfiles/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/css/catselectfiles/bootstrap.min.js"></script>
	 <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js'></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
<script src='<%=request.getContextPath()%>/assets/css/catselectfiles/bootstrap-select.min.js'></script>
    <script>
    $(document).ready(function(){
    	getAllStandardsAfterRegister();
    	getquotas();
    	
    })
    	function getbranches(catidbranch){
    		var appenddata = "";
    		//var LoginData = getLoginData();
    		//var catid = LoginData.categoryId;
    		//var catid = regstrCat;
    		var inputData = {
    				"categoryId":catidbranch
    		}
    		var outputData = JSON.stringify(inputData);
    		$.ajax({
    			url:base_url+'rest/student/getCollegePredictionBranchess',
    			type:"POST",
    			dataType:"json",
    			contentType:'application/json',
    			data:outputData,
    			success:function(data){
    				console.log("Success");
    				for(var i = 0;i<data.length;i++){
    					var name = data[i].branchName;
    					appenddata += "<option value="+name+">"+name+"</option>"
    				}

    				$("#branch").append('<option value="">---Select---</option>');
    				$("#branch").append(appenddata);
    				$(".selectpicker").selectpicker('refresh');
    			},
    			error:function(data){
    				alert(data.responeJSON.errorMessage);
    			}
    		})
    		
    	}
//jQuery time
var current_fs, next_fs, previous_fs; //fieldsets
var left, opacity, scale; //fieldset properties which we will animate
var animating; //flag to prevent quick multi-click glitches

function next(elem,val){
	if(animating) return false;
	animating = true;
	
	
	current_fs = $(elem).closest('fieldset');
	
	next_fs = $(val);
	
	//activate next step on progressbar using the index of next_fs
	$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
	
	//show the next fieldset
	next_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale current_fs down to 80%
			scale = 1 - (1 - now) * 0.2;
			//2. bring next_fs from the right(50%)
			left = (now * 50)+"%";
			//3. increase opacity of next_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({
        'transform': 'scale('+scale+')',
        'position': 'absolute'
      });
			next_fs.css({'left': left, 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
}

function previous(elem,val){
	if(animating) return false;
	animating = true;
	
	current_fs = $(elem).closest('fieldset');
	previous_fs = $(val);
	
	//de-activate current step on progressbar
	$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
	
	//show the previous fieldset
	previous_fs.show(); 
	//hide the current fieldset with style
	current_fs.animate({opacity: 0}, {
		step: function(now, mx) {
			//as the opacity of current_fs reduces to 0 - stored in "now"
			//1. scale previous_fs from 80% to 100%
			scale = 0.8 + (1 - now) * 0.2;
			//2. take current_fs to the right(50%) - from 0%
			left = ((1-now) * 50)+"%";
			//3. increase opacity of previous_fs to 1 as it moves in
			opacity = 1 - now;
			current_fs.css({'left': left});
			previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
		}, 
		duration: 800, 
		complete: function(){
			current_fs.hide();
			animating = false;
		}, 
		//this comes from the custom easing plugin
		easing: 'easeInOutBack'
	});
}

function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}
function setStudentCookie(cname, cvalue, exdays) {
	   var d = new Date();
	   d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
	   var expires = "expires=" + d.toUTCString();
	   document.cookie = cname + "=" + cvalue + "; " + expires+ "; path=/";
	}

function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1);
        if (c.indexOf(name) == 0)
            return c.substring(name.length, c.length);
    }
    return "";
}
function setStudentCookie(cname, cvalue, exdays) {
	   var d = new Date();
	   d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
	   var expires = "expires=" + d.toUTCString();
	   document.cookie = cname + "=" + cvalue + "; " + expires+"; path=/";
	}
	
 function getLoginData(){
	var loginData = JSON.parse(atob(getCookie("LoginData")));
	
	if(loginData !== "" || loginData !== null){
		return loginData;
	} else {
		return "";
	}
	
} 
$(".submit").click(function(){
	return false;
})

function getcatedetails(callback) {

	var appenddata = "";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/category/v1/getcategories',
		  beforeSend: function(){
			  
		        $("#catemedi").html('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">');
		      },
		  success: function(data){
              var catids = [];
			 for(var i=0;i<data.length;i++){
	    		    var catid = data[i].id;
	    		    catids.push(catid);
					var category = data[i].categoryname;
					var categoryId = data[i].id;
					var category_image = data[i].categoryimage;
					
	
					
						var cat_image = "";
					 if(category_image == "" || category_image == null ){
						 cat_image += "https://via.placeholder.com/150x150";
					  }
					  else{
						  cat_image += category_image;
					  }

	       appenddata +=  
			  '<div class="box-2">'+
			  '<p id="cat_'+categoryId+'" class="catimg imgp"><span><img src="'+base_url +'/assets/images/students/tick.png" class="cattick blockNCenter knoxMinima" width="30" height="30" /><img src='+cat_image+' class="catsel catnext" data-name="'+category+'" data-id="'+catid+'" width="120px" style="border-radius:15px"></span><p class="colrcod">'+category+'</p></p>'+
			  '</div>'
			 }
			 
			 
	        jQuery("#catemedi").empty("");
			jQuery("#catemedi").html(appenddata);
			
			
			var cat = studentData.category; 
			var cattid = studentData.categoryid;
			 $(".catimg").removeClass('imgActive');
			 
			 $("#cat_"+cattid+" span img:first-child").removeClass('knoxMinima').addClass('lumosMinima');
			 $("#cat_"+cattid+" span img:last-child").addClass('imgActive'); 
			 
			 
			 var pushcatid = [];
			 for(var ik=0;ik<catids.length;ik++){
				 if(catids.indexOf(cattid)!==-1){
					 pushcatid.push(cattid);
					 break;
				 }
			 }
			 
			 var dumc = pushcatid;
			 $("#selectedcategory").val(cat); 
			 $("#selectedcategoryid").val(dumc[0]);
			 
			
			if(callback){
				callback();
			}

		  },
		  error: function(data) {		
			  
			  alert("Categories not found!");

		  }
	      	
	});
}

function getStandardDetails(){
	
	var appenddata="";
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getstandards/'+$("#selectedcategoryid").val(),
		  beforeSend: function() {
		
			  
			  jQuery("#standards").empty("");
			  jQuery("#standards").html('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">'); 
			  
	     },
		  success: function(data){
			  
			  var stdids = [];
			  for(var i=0; i < data.length; i++){
					var std = data[i].name;
					var std_for_id = std.replace("+", "plus");
					var stdid = data[i].id;
					stdids.push(stdid);
					var std_image = data[i].image;
					
	
					
					 var s_image = "";
					 if(std_image == "" || std_image == null ){
						 s_image += "https://via.placeholder.com/150x150";
					  }
					  else{
						  s_image += std_image;
					  }

	       appenddata +=  
			  '<div class="box-3">'+
			  '<p id="std_'+stdid+'" class="stdimg imgp"><span><img src="'+base_url +'/assets/images/students/tick.png" class="stdtick blockNCenter knoxMinima" width="30" height="30" /><img src='+s_image+' class="stdsel examnext" data-name="'+std+'" data-id="'+stdid+'" width="120px"  style="border-radius:15px"></span><p class="colrcod">'+std+'</p></p>'+
			  '</div>'
			  }
			  
			  	jQuery("#standards").empty("");
				
				jQuery("#standards").html(appenddata);
				
				
			    var stdn = studentData.standardName; 
			    stdn = stdn.replace("+", "plus");
				var stdi = studentData.standardId;
				$(".stdimg").removeClass('imgActive');
				
				$("#std_"+stdi+" span img:first-child").removeClass('knoxMinima').addClass('lumosMinima'); 
				$("#std_"+stdi+" span img:last-child").addClass('imgActive'); 
				 
				  $("#selectedstandard").val(stdn); 
				 
				 var pushstdid = [];
				 for(var ik=0;ik<stdids.length;ik++){
					 if(stdids.indexOf(stdi)!==-1){
						 pushstdid.push(stdi);
						 break;
					 }
				 }
				 var dums = pushstdid;
				 $("#selectedstandardid").val(dums[0]);

		  },
		  error: function(data) {
			
			  jQuery("#standards").empty("");
			  alert("Standard not found!");

		  }
	});
}


function getExamTypeDetails(){
	
	var catid = $("#selectedcategoryid").val();
	var stdid = $("#selectedstandardid").val();
	
	/* var exarr = [];
	exarr = exval.split(','); */
	
	
	var inputData = {
		"categoryId":catid,
		"standardId":stdid
	};
	
	inputData = JSON.stringify(inputData);
	var appenddata="";
	$.ajax({
		type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/question/v1/getexamtypes',
		  data: inputData,
		  beforeSend: function() {
			  	
			
			  jQuery("#examtype").empty("");
			  jQuery("#examtype").html('<img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100">');
	     },
		  success: function(data){
			  
			  var exids = [];
			  for(var i=0; i < data.length; i++){
				  
					var examType = data[i].examtype;
					
					var examid = data[i].id;
					exids.push(examid);
					var exam_image = data[i].image;
					
					var ex_image = "";
					
				    if(exam_image == "" || exam_image == null ){
					  ex_image += "https://via.placeholder.com/150x150";
				    } else{
					  ex_image += exam_image;
				    }
					 
					 

			       appenddata +=  
					  '<div class="box-3">'+
					  '<p id="exam_'+examid+'" class="eximg imgp"><span><img src="'+base_url +'/assets/images/students/tick.png" class="exmtick blockNCenter knoxMinima" width="30" height="30" /><img src='+ex_image+' class="exsel" data-name="'+examType+'" data-id="'+examid+'" width="120px" style="border-radius:15px"></span><p class="colrcod">'+examType+'</p></p>'+
					  '</div>'
			  }
			  
			  
			  	jQuery("#examtype").empty("");
				
				jQuery("#examtype").html(appenddata);
				
				
				var extt = studentData.examTypeNames;
				var exidd = studentData.examTypeIds;
				
				if(exidd.length > 0){
					
					exidd.sort(function(a, b){return a-b});
					$(".eximg").removeClass('imgActive');
					
					
					 for(var i=0;i<exidd.length;i++){
						$("#exam_"+exidd[i]+" span img:first-child").removeClass('knoxMinima').addClass('lumosMinima');
						$("#exam_"+exidd[i]+" span img:last-child").addClass('imgActive');
					 } 
					 
					 $("#selectedexamtype").val(extt.join(',')); 
					 
					 var pushexid = [];
					 for(var ik=0;ik<exids.length;ik++){
						 if(exids.indexOf(exidd[ik]) !== -1){
							 pushexid.push(exidd[ik]);
						 }
					 }
					 
					 $('.eximg').each(function(i, obj) {
					    if($(obj).find('img').hasClass("imgActive")){
					    	$("#examnext").show();
					    	return false;
					    }
					});
					 
					$("#selectedexamtypeid").val(pushexid.join(','));
				}
				
				
		  },
		  error: function(data) {	
			 
			  jQuery("#examtype").empty("");
			  alert("ExamTypes not found!");
			 
		  }
	});
	
}

$("#examnext").click(function(){
	
	//var stuId = parseInt(sessionStorage.getItem('stdid'));
	var LoginData = getLoginData();
	var stuId = LoginData.studentid;
	var catsid = parseInt($("#selectedcategoryid").val());
	
	var checkselected = $("#selectedexamtypeid").val();
	
	var standatids = parseInt($("#selectedstandardid").val());
	
	var aext = checkselected.split(',');
	for(var i=0;i<aext.length;i++){
		aext[i] = parseInt(aext[i]);
	}
   var studentcategory =	{
		"studentid":stuId,
		"examTypeids":aext,
		"standardids":standatids,
		"category":catsid
	}

   var studentstri = JSON.stringify(studentcategory);
	$.ajax({
		  type: "POST",
		  dataType: "json",
		  contentType: 'application/json', 
		  url: base_url+'rest/student/v1/saveStudentExamTypes',
		  data: studentstri,
		  success:function(data){
			 
			//alert(data.message);
			
			var loginData = JSON.parse(atob(getCookie("LoginData")));
			var catidbranch = loginData['categoryId'] = catsid;
			loginData['categoryName'] = $("#selectedcategory").val();
			
			setStudentCookie("LoginData",btoa(JSON.stringify(loginData)),2);
			 var referrer = getParameterByName('ref');
			if(referrer !== "" && referrer !==null&& referrer !== undefined){
				 alert("Updated Successfully.");
				if(referrer == "std"){
					/* window.location = base_url +"jsp/student/livezone/live_zone_active_full_mocks.jsp"; */
					window.location = base_url + "jsp/student/student module/profile.jsp";
				}else if(referrer == "prof"){
					window.location = base_url +"jsp/student/student module/profile.jsp";	
				}else{
					
					/* window.location = base_url +"jsp/student/livezone/live_zone_active_full_mocks.jsp"; */
					window.location = base_url + "jsp/student/student module/profile.jsp";
				}
				
				
			} else{
				getstumenu();
			
				
			}
			 getbranches(catidbranch);
		 },
		 error:function(){
			 alert("Failed to change category");
		 }
	});
});

var studentData = {};
function studentDetails(callback){
	
	var LoginData = getLoginData();
	var studid = LoginData.studentid;
	
	$.ajax({
		url: base_url+'rest/student/v1/getstudentdetails/'+studid,
		type:"GET",
		dataType:"json",
		contentType:'application/json',
		success:function(data){
			studentData["category"] = data[0].category;
			studentData["categoryid"] = data[0].categoryid;
			studentData["examTypeIds"] = data[0].examTypeIds;
			studentData["examTypeNames"] = data[0].examTypeNames;
			studentData["standardName"] = data[0].standardName;
			studentData["standardId"] = data[0].standardId;
			
			
			if(callback){
				callback();
			}
		},
		error:function(data){
			alert("student details not founds");
		}
	});
	
}


$(document).ready(function(){
	    $("#examnext").hide();
		
		studentDetails(function(){
			getcatedetails();
		});
		
		
		 $(".closeBtnSelect").click(function(){
			/*  window.location = base_url+ 'jsp/student/livezone/live_zone_active_full_mocks.jsp'; */
			 window.location = base_url + "jsp/student/student module/profile.jsp";
		 });
		 
		 
		 $(document).on('click', '.catsel',function () {
		   
			$(".cattick").removeClass('knoxMinima lumosMinima').addClass('knoxMinima');
		    $(".catsel").removeClass("imgActive");
			
			var $prev = $(this).prev();
			$prev.removeClass('knoxMinima').addClass('lumosMinima');
			 
		    $(this).addClass("imgActive");
		    var catval =	$(this).data("name");
		    var catid =	$(this).data("id");
		  	$("#selectedcategory").val(catval);
		  	$("#selectedcategoryid").val(catid);
		  	
		  	next(this,"#f2");
		  	getStandardDetails();
		  	
		  });
		 
		 $(document).on('click', '.stdsel',function () {
			 
			 $(".stdtick").removeClass('knoxMinima lumosMinima').addClass('knoxMinima');
			 $(".stdsel").removeClass("imgActive");
			 
			 var $prev = $(this).prev();
			 $prev.removeClass('knoxMinima').addClass('lumosMinima');
			 
			 $(this).addClass("imgActive");
			 var stdval = $(this).data("name");
			 var stdid = $(this).data("id");
			  	
			 $("#selectedstandard").val(stdval);
			 $("#selectedstandardid").val(stdid);
			 
			 next(this,"#f3");
			 getExamTypeDetails();
			  	
		});
		 
		 $(document).on('click', '.exsel',function () {
			 
			 $("#examnext").show();

			 var exval = $(this).data("name");
			 var exid = $(this).data("id")+"";
			  	
			 var exidval = $("#selectedexamtypeid").val();
			 var exname = $("#selectedexamtype").val();
			 var arrval = [];
			 var arrname = [];
			 if(exidval !== "" && exidval !== null && exidval !== undefined){
				 arrval = exidval.split(',');
			 }
			 
			 if(exname !== "" && exname !== null && exname !== undefined){
				 arrname = exname.split(',');
			 }
			 
			 var elem = $(this);
			 if(elem.hasClass("imgActive")){
				 arrval.splice(arrval.indexOf(exid), 1);
				 arrname.splice(arrval.indexOf(exval), 1);
				 var $prev = $(this).prev();
				 $prev.removeClass('lumosMinima').addClass('knoxMinima');
			 } else{
				 var $prev = $(this).prev();
				 $prev.removeClass('knoxMinima').addClass('lumosMinima');
				 arrval.push(exid);
				 arrname.push(exval);
			 }
			 
			 
			 $(this).toggleClass("imgActive");
			 
			 if(arrval.length>0){
				 $("#examnext").show();
			 } else{
				 $("#examnext").hide();
			 }
			 
			 var j = arrval.join(',');
			 var n = arrname.join(',');
			 $("#selectedexamtype").val(n);
			 $("#selectedexamtypeid").val(j);
			  	
		});
		 
		
		
	});
	
	
	function getstumenu(){
		
		$(".pose").click();
		
		$(".selectpicker").selectpicker();
		
		getstatesall();
		$('#myModal').modal({backdrop: 'static', keyboard: false}) 
		  
	}
	
	
	function submitCatMenu(){
		
	var stateid = $("#state").val();
    	
    	var cityid = $("#city").val();
    	
    	var standard = $("#standard").val();
    	
    	var quota = $("#quota").val();
    	
    	var gender = $("#gender").val();
    	
    	//var branch = $("#branch").val();
    	var branch = $("#branch option:selected").text();
		var LoginData = getLoginData();
		var studid = LoginData.studentid;
		
		
var catsubmite	= {
			"stateId":stateid,
			"cityId":cityid,
			"standard":standard,
			"quota":quota,
			"gender":gender,
			"branch":branch,
			"studentId":studid
		}
		
		var strcatsubmite = JSON.stringify(catsubmite);
    		
		$.ajax({
			url: base_url+'rest/student/register2',
			type:"POST",
			async: false,
			dataType:"json",
			contentType:'application/json',
			data:strcatsubmite,
			success:function(data){

				 alert("Congratulations!,You have Registered Successfully.");
				 sessionStorage.setItem("stdquota", quota);
				 if( navigator.userAgent.match(/Android/i)
|| navigator.userAgent.match(/webOS/i)
|| navigator.userAgent.match(/iPhone/i)
|| navigator.userAgent.match(/iPad/i)
|| navigator.userAgent.match(/iPod/i)
|| navigator.userAgent.match(/BlackBerry/i)
|| navigator.userAgent.match(/Windows Phone/i)
){
window.location = base_url +"jsp/student/student module/applinks.jsp";
return true;

}else{
	var usertype = "student"
				 validateuser(usertype);
				/*  window.location = base_url +"jsp/student/livezone/live_zone_active_full_mocks.jsp"; */
				window.location = base_url + "jsp/student/student module/studenthome.jsp";
				sessionStorage.setItem("stdquota", quota);
}
			
		      },
			error:function(data){
					alert("Submitting the details failed");
			}
		})	
		
		
	}
	
	
	
	function validateuser(usertype)
	{

	$.ajax({
	type: "GET",
	async: false,
	url: base_url+"jsp/master/setstudentsession.jsp?usertype="+usertype,
	 success: function(data){
	 

	 },
	 error: function(data) {	


	 }
	 
	});

	}
	</script>




</body>

</html>

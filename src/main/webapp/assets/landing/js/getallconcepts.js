	
function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

var type="";
var physicsappenddata="";

$(document).ready(function() {
	
	type=getParameterByName("allconcepts");
	
	$("#type").html(type);

	
if(type =="NCERT"){
	
var chapid = getParameterByName("chapid");
var subid = getParameterByName("subid");
	
	
$.ajax({
	 url : base_url+"rest/homepagevideos/Type/ncert/"+chapid+"/"+subid,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  //data: output,
	  success:function(data){
		
		if(data.length ==0){
			
			alertify. alert("No NCERT details");
			
			}
			else{
		
		for(var c =0; c<data.length;c++){
			
			var concepts=data[c].concepts;
		
		physicsappenddata +='<div class="panel panel-default ">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 text-center" style="padding:30px;"><h5>' +concepts.value +'</h5>'+
'</div>'+
            	'</div>'+
            
   			'</div>';
		}
		}
		$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(physicsappenddata);
		rendereelemntforkatext();
		
		},
		
		 error:function(data){
    	  alert(data.errorMessage);
      }
	 

		});
		}
		
		
		
 else if(type =="Formulas"){
	
	
	
	var chapid = getParameterByName("chapid");
	var subid = getParameterByName("subid");
	
	
	
	
	
$.ajax({
	 url : base_url+"rest/homepagevideos/Type/formulas/"+chapid+"/"+subid,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  //data: output,
	  success:function(data){
		if(data.length ==0){
			
			alertify. alert("No  FORMULAS details");
			
			}
			else{
	
		
		for(var c =0; c<data.length;c++){
			
			var formula=data[c].formulae;
		
		physicsappenddata +='<div class="panel panel-default ">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 text-center" style="padding:30px;"><h5>' +formula.value +'</h5>'+
'</div>'+
            	'</div>'+
            
   			'</div>';
		}
		}
			$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(physicsappenddata);
		rendereelemntforkatext();
		
		},
		
		 error:function(data){
    	  alert(data.errorMessage);
      }
	 

		});
		}
		
		
else if(type =="Concepts"){
	
	
	var chapid = getParameterByName("chapid");
	var subid = getParameterByName("subid");
	
	
	
	
$.ajax({
	 url : base_url+"rest/homepagevideos/Type/concepts/"+chapid+"/"+subid,
	  
	  type:"GET",
	  dataType:"json",
	  contentType:'application/json',
	  //data: output,
	  success:function(data){
		
		if(data.length ==0){
			
			alertify. alert("Noconcepts CONCEPTS details");
			
			}
			else{
		
		for(var c =0; c<data.length;c++){
			
			var concepts=data[c].concepts;
		
		physicsappenddata +='<div class="panel panel-default ">'+
 			
    			'<div class="panel-body">'+
      			'<div class="col-md-12 text-center" style="padding:30px;"><h5 onclick="physicsData(this)">' +concepts.value+'</h5>'+
'</div>'+
            	'</div>'+
            
   			'</div>';
		}
		}
		
			$("#liveVideoFilte").empty("");
	   
		$('#liveVideoFilte').append(physicsappenddata);
		rendereelemntforkatext();
		
		},
		
		 error:function(data){
    	  alert(data.errorMessage);
      }
	 
	
		
		});
		}
	
 });
			
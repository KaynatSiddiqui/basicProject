var textToSpeech='';

/*$(window).on('load', function() {
        $('#StudentTrackingModal').modal('show');
    });
*/

var LoginData = getLoginData();
	var sName = LoginData.name;
	$("#studentModalLabel").html("Hi "+sName +",");

function showPopmsg(screenmsg){
	var LoginData = getLoginData();
	var sId = LoginData.studentid;
	var sName = LoginData.name;
	$("#studentModalLabel").html("Hi "+sName +",");
	
	var input ={
		  
			"studentId":sId,
		    "module":screenmsg
		
	}

var output =JSON.stringify(input);

$.ajax({
	  url : base_url+"rest/student/StudentTrackingInformation",
	  type:"POST",
	  dataType:"json",
	  contentType:'application/json',
	  data: output,
	  success:function(data){
		
		robolearning(data.layout);
		
		
				// text	
				if(data.textStatus){
				$(".infoMsg").html(data.screenMsg);
				}
				
				//speach
				if(data.audioStatus){
				textToSpeech=data.screenMsg;
				gettext();
				}
		
			/*if(data.layout=="layout-1"){
				// layoutPop
       			 $('#layout_1Tracking').modal('show');
    	
				// text	
				if(data.textStatus){
				$("#infoMsg").html(data.screenMsg);
				}
				
				//speach
				if(data.audioStatus){
				textToSpeech=data.screenMsg;
				gettext();
				}
			}
			else if(data.layout=="layout-2"){
				// layoutPop
				$('#layout_2Tracking').modal('show');
				// text	
				if(data.textStatus){
				$("#infoMsg").html(data.screenMsg);
				}
				
				//speach
				if(data.audioStatus){
				textToSpeech=data.screenMsg;
				gettext();
				}
			}*/
		
				
				
				
				
	/*	alertify. alert(data.message);*/
	
	/*var textTosprch='';
	textTosprch +='<div class="modal fade" id="studentTracking" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">'+
  					'<div class="modal-dialog" role="document">'+
    						'<div class="modal-content">'+
      							'<div class="modal-header">'+
        
        							'<button type="button" class="close" data-dismiss="modal" aria-label="Close">'+
          								'<span aria-hidden="true">&times;</span>'+
          							'</button>'+
									'<h5 class="modal-title" id="studentModalLabel"></h5>'+
								
      							'</div>'+
      						'<div class="modal-body">'+
      							' <div class="" style="display:flex; justify-content:center;align-items:center"><img src="/assets/images/students/ai_Robo.svg" style="width:150px;"></div>'+
       
       								'<h4 style="padding:15px;color:#fd7e14" class="text-center"">'+data.message+'</h4>'+
      /* <input type="button" onclick="gettext();"/>*/
     							/*'</div>'+
      						'<div class="modal-footer" style="display:flex; justify-content:center;" >'+
        							'<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>'+
      						' <!--  <button type="button" class="btn btn-primary">Save changes</button> -->'+
      						'</div>'+
   						 '</div>'+
  						'</div>'+
						'</div>';
	
		$("#infoMsg").empty("");*/
		
		/*gettext();*/
		
		
	/*	gettext();*/
	
	
	/* alert(data.message);*/
	
	
			
	/* console.log(data)*/
	
		 
	  },
	  error:function(data){
		  alert(data.responseJSON.errorMessage);
	  }
	  
	 
});

}

 function robolearning(layout){
	
	if(layout=="layout-1"){
		// layoutPop
       $('#layout_1Tracking').modal('show');
    }
	else if(layout=="layout-2"){
		// layoutPop
		$('#layout_2Tracking').modal('show');
	}
}

function gettext(){
	
	    const url = 'https://texttospeech.googleapis.com/v1beta1/text:synthesize?key=AIzaSyDAINh3uY4nfMT7eK9MlBGPyqpk9fIVY-g'
	    const data = {
	     
		  "audioConfig": {
			"audioEncoding": "MP3",
			"pitch": 0.0,
			"speakingRate": 1.0
		  },
		  "input": {
			/*<!-- "text": "Google Cloud Text-to-Speech enables developers to synthesize natural-sounding speech with 100+ voices, available in multiple languages and variants. It applies DeepMind’s groundbreaking research in WaveNet and Google’s powerful neural networks to deliver the highest fidelity possible. As an easy-to-use API, you can create lifelike interactions with your users, across many applications and devices." -->
		  <!-- }, -->*/
		  "text":textToSpeech,
		  },
		  "voice": {
			"languageCode": "en-IN",
			"name": "en-IN-Wavenet-B"
		  }

	     };
	     const otherparam={
	        headers:{
	           "content-type":"application/json; charset=UTF-8"
	        },
	        body:JSON.stringify(data),
	        method:"POST"
	     };
	    fetch(url,otherparam)
	    .then(data=>{return data.json()})
	    .then(res=>{
	    	/*console.log(res.audioContent);*/ 
		//var file= (atob(res.audioContent));
		
		
		
	   // $("#audioSource").attr("src",res.audioContent);
		var snd = Sound("data:audio/wav;base64," + res.audioContent);
	// $("#audioSource").attr("src",dataa);
	    	
	/*	Audio(res.audioContent+".MP3");*/
	    })
	    .catch(error=>{console.log(error);})
	  }
	var Sound = (function () {
    var df = document.createDocumentFragment();
    return function Sound(src) {
        var snd = new Audio(src);
        df.appendChild(snd); // keep in fragment until finished playing
        snd.addEventListener('ended', function () {df.removeChild(snd);});
        snd.play();
        return snd;
    }
}());
// then do it

	  	  
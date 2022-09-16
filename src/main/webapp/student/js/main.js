
document.getElementById('maximize').addEventListener('click', () => {
        screenfull.request();
        //$("#maximize img").removeAttr("src");
       $("#maximize img").attr("src","images/halfscreen.png");        
	
});


	if(screenfull.enabled){
        $("#maximize").click(function(){
            screenfull.exit();
            screenfull.off('change', function(){
                $("#maximize img").attr("src","images/fullscreen.png"); 
            });
             })};

 
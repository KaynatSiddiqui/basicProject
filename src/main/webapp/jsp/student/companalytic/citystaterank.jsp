	<div class="col-md-3 col-md-offset-3" style="margin-top: 50px">
								<span> <select class="selectpicker stateselction" 
									data-style="form-control btn-default btn-outline" id="state">
										<option>State</option>
								</select>&nbsp;&nbsp;&nbsp;&nbsp;</span></div>
								<div class="col-md-3" style="margin-top: 50px">
          <button class="btn btn-danger gobtn" disabled onclick="get_state_city();">G0</button></div>
		  
							<div class="col-md-12 col-md-offset-1" style="" id="display_rank">

							</div>
							
							<script>
							$('.stateselction').on('change', function(e) {
    var selected_state = $(".stateselction option:selected").text();
	if(selected_state == "--- Select States---"){
		$(".gobtn").attr("disabled", true);
	}else{
		$(".gobtn").removeAttr("disabled");
	}
});
							</script>
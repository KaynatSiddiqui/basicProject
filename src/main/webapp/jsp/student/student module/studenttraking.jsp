<style>
.rbolearningTracking{
background-color:rgba(0,0,0,0.6);
}
 .mfullscreen .modal-content {
  background: transparent;
  border: 0;
  -webkit-box-shadow: none;
  box-shadow: none;
} 

</style>

<!-- Layout Modal - 1 -->
<div class="modal rbolearningTracking  fade" id="layout_1Tracking" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:-5px">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="border-radius:8px">
      <div class="modal-header">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <!-- <span aria-hidden="true">&times;</span> -->
          <i class="fa fa-times-circle" aria-hidden="true"  style="color:#fd7e14"></i>
        </button>
        <h4 class="modal-title" style="color:#fd7e14" id="studentModalLabel"></h4>
      </div>
      <div class="modal-body">
       <div class="" style="display:flex; justify-content:center;align-items:center"><img src="<%=request.getContextPath()%>/assets/images/students/Finalrobo.svg" style="width:140px;"></div>
       
       <h4 style="color:#fd7e14" class="text-center  infoMsg"></h4>
      </div>
      <div class="" style="display:flex; justify-content:flex-end;" >
        <button type="button" class="btn btn-primary" style="margin:0px 19px 15px 0px;" data-dismiss="modal">Close</button>
       <!--  <button type="button" class="btn btn-primary">Save changes</button> -->
      </div>
      
    </div>
  </div>
</div>


<!-- Layout Modal - 2(Transparent) -->
<div class="modal rbolearningTracking mfullscreen fade" id="layout_2Tracking" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="border-radius:8px">
     <!--  <div class="modal-header">
        
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          <i class="fa fa-times-circle" aria-hidden="true"  style="color:#fd7e14"></i>
        </button>
        <h4 class="modal-title" style="color:#fd7e14" id="studentModalLabel"></h4>
      </div> -->
      <div class="modal-body">
       <div class="" style="display:flex; justify-content:space-between;">
       <img src="<%=request.getContextPath()%>/assets/images/students/Finalrobo.svg" style="width:150px;">
       <h4 style="padding:15px;color:#fd7e14;position:relative;bottom:0px;" class="text-center infoMsg"></h4>
       </div>
       
       
      </div>
      <!-- <div class="" style="display:flex; justify-content:flex-end;" >
        <button type="button" class="btn btn-primary" style="margin:0px 19px 15px 0px;" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div> -->
      
    </div>
  </div>
</div>






<script src="<%=request.getContextPath()%>/assets/js/studentTracking.js"></script>
<script>
/* $(window).on('load', function() {
        $('#studentTracking').modal('show');
    }); */
	
</script>
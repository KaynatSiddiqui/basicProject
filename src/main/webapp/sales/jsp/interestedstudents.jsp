<%@include file="/sales/jsp/salesmansidebar.jsp" %>

<style>



.scrolling-wrapper::-webkit-scrollbar {
    width: 12px;
}
 
.scrolling-wrapper::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
    border-radius: 10px;
}
 
.scrolling-wrapper::-webkit-scrollbar-thumb {
    border-radius: 10px;
    -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
}


.card_phonecard {
  background: white;
  padding: 25px;
  margin: 70px 0;
 /*  width:600px; */
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

	body{
	background-color: #f0f4f5;
	}
	
	.prefix{
	
	margin-right:5px;
}

h3, span, a{
  color:#FFA500;
}


.wrapper{
  width:1000px;
  margin:0 auto;
  margin-top:20px;
}

.tabs {
  padding:10px 10px 0 10px;
  background-color: #eaeaea;
  border-radius:10px 10px 0 0;
  display:flex;
  position:relative;
}
.tabs:before{
  content:"";
  width:10px;
  height:100%;
  position:absolute;
  background-color:#eaeaea;
  left:0;
  top:0;
  z-index:10;
  border-radius:10px 0 10px 0;
}
.tabs:after{
  content:"";
  width:10px;
  height:100%;
  position:absolute;
  background-color:#eaeaea;
  right:0;
  top:0;
  z-index:10;
  border-radius:0 10px 0 10px ;
}

.tabs button {
  position:relative;
  background-color: #eaeaea;
  color:#474546;
  border-radius:0 0 10px 10px;
  z-index:10;
  text-align:left;
  font-weight:500;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 15px 20px;
  font-size: 16px;
  flex-grow:1;
}

.tabs button i{
  padding-right:20px;
}

.tabs button.active {
  background-color: #fff;
  border-radius:10px 10px 0 0;
  z-index:1;
  box-shadow:0 -5px 4px 0 rgba(0,0,0,0.02);
}
.tabs button.active:before {
  content:"";
  width:10px;
  height:100%;
  position:absolute;
  background-color:#fff;
  left:-10px;
  top:0;
  z-index:1;
}

.tabs button.active:after {
  content:"";
  width:10px;
  height:100%;
  position:absolute;
  background-color:#fff;
  right:-10px;
  top:0;
  z-index:1;
}

.tab_content {
  display: none;
  padding: 40px;
  box-shadow:0 2px 20px 0 rgba(0,0,0,0.1);
  border-radius:0 0 10px 10px;
   background: white;
  padding: 25px;
 box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}

input[type=radio] {
    width: 20px;
    height:18px;
   
}
.feedback{
	font-size: 25px;
    padding: 0px 10px;
}	
	row{
	/*margin-right: -15px; */
    /* margin-left: -15px; */
    box-shadow: rgb(0 0 0) 0px 10px 20px -6px;
    padding: 36px;
    }

</style>

<div class="container">
<section id="content-wrapper">

							<%-- <div class="" style="display:flex;margin:20px;margin-left:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:350px;background:rgb(255, 245, 230)">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="<%=request.getContextPath()%>/assets/images/students/WebHome/offer.jpg" style="width:140px;border-radius:7px 0px 0px 7px">
							<h3 class=" text-warning" style="margin-left:25px;"><strong>Assigned Students</strong></h3>
							</div>
							</div> --%>
							<!-- <div class="" style="display:flex;align-items:center;margin:10px;border-radius:15px; box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);width:300px;background:#FFA500;">
							<div class="" style="display:flex ;align-items:center ;justify-content:flex-start">
							<img src="../images/rotation.png" style="margin-left:20px;">
							<h3 class=" text-white ml-3" style="color:white; margin-left:10px;margin-bottom:20px"><strong>Assigned Students</strong></h3>
							</div>
							</div> -->
		
     
       

 
 
 <div class="wrapper">
  <div class="tabs">
    <button class="tab" data-content="Up" onclick="NewStudents()"><i class="fas fa-arrow-alt-circle-up"></i>New Students</button>
    <button class="tab" data-content="Right" onclick="MyNewList()"><i class="fas fa-arrow-alt-circle-right"></i>My - New List</button>
   <!--  <button class="tab" data-content="Down" onclick="InterestedStudents()"><i class="fas fa-arrow-alt-circle-down"></i>Interested Students</button>
    <button class="tab" data-content="Left" onclick="MyInterestedStudents()"><i class="fas fa-arrow-alt-circle-left"></i>My - Interested Students</button>
  -->
  </div>

  <div id="Up" class="tab_content ">
    <h3>New Students</h3>
    <!-- <p>Up is the y-axis relative vertical direction opposed to <span>down.</span></p>
    <p>Source: <a href="https://en.wikipedia.org/wiki/Up" target="_blank">https://en.wikipedia.org/wiki/Up</a></p>
   -->
    <!-- <div class="row">
        <div class="col-lg-12">
        
        --> 
        	 <div class="table-responsive" style="margin-top:35px;" >

	 <table id="myTable" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="margin-top:10px;">
	
		<thead class=" text-center" style="background-color:#f0f4f5">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Take</th>
				<!-- <th>Mobile Number</th> -->
				<!--  <th>View</th>  -->
		</tr>
		</thead>
		<tbody id="newstudents_tablebody">
		
		</tbody>
	
	</table>
	
	
 </div> 
       
      
      <!--   </div>
       </div> -->
   
   
   
   
   
   
   
   </div>

  <div id="Right" class="tab_content">
    <h3>My - New List</h3>
    <!-- <p>Undefined</p> -->
     <div class="table-responsive" style="margin-top:35px;" >

	 <table id="myTable1" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="margin-top:10px;">
	
		<thead class=" text-center" style="background-color:#f0f4f5">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<!-- <th>Contact Info</th> -->
				 <th>Follow Up</th> 
				 <th>View</th>
				 	<th>Feedback</th> 
		</tr>
		</thead>
		<tbody id="mynew_tablebody">
		<!-- <tr>
			<td>1</td>
			<td>venky</td>
			<td><button class="btn btn-success text-white">View</button></td>
			<td><button class="btn btn-warning text-white" data-toggle="modal" data-target="#checkfeed_back">Feedback</button></td>
		</tr> -->
		</tbody>
	
	</table>
	
	
 </div> 
       
      
      <!--   </div>
       </div> -->
   
   
   
   
  </div>

  <div id="Down" class="tab_content">
    <h3>Interested Students</h3>
    <!-- <p>Down is the y-axis relative vertical direction opposed to <span>up.</span></p>
    <p>Source: <a href="https://en.wikipedia.org/wiki/Down" target="_blank">https://en.wikipedia.org/wiki/Down</a></p> -->
  
  	 <div class="table-responsive" style="margin-top:35px;" >

	 <table id="myTable2" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="margin-top:10px;">
	
		<thead class=" text-center" style="background-color:#f0f4f5">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<!-- <th>Contact Info</th> -->
				<th>Take</th> 
				<!--  <th>View</th> --> 
		</tr>
		</thead>
		<tbody id="interestedtablebody">
		
		</tbody>
	
	</table>
	
	
 </div> 
       
      
      <!--   </div>
       </div> -->
   
   
   
   
  
  
  </div>
  
  <div id="Left" class="tab_content">
    <h3>My - Interested Students</h3>
   <!--  <p>Undefined</p> -->
   
    <div class="table-responsive" style="margin-top:35px;" >

	 <table id="myTable3" data-order='[[ 0, "desc" ]]' class="table table-bordered table-striped table-hover" style="margin-top:10px;">
	
		<thead class=" text-center" style="background-color:#f0f4f5">
			<tr>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>View</th>
				<th>Feedback</th>
				 
		</tr>
		</thead>
		<tbody id="myinterestedlist">
		
		</tbody>
	
	</table>
	
	
 </div> 
       
      
      <!--   </div>
       </div> -->
   
   
   
  </div>
</div>
 
 
  </section>
 
 
 <div class="modal fade" id="viewinter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="background: papayawhip;">
      <div class="modal-header">
      <!--   <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5> -->
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
          <h3 class="modal-title" id="exampleModalLongTitle">Student Details</h3> 
          
          
      </div>
      <div class="modal-body" id="showofferdetails" style="background: papayawhip;">
        
      </div>
     
    </div>
  </div>
</div>

	<!-- <div id="showofferdetails"></div> -->
	
	<!-- my interested Students -->
	<div class="modal fade" id="viewinterestedList" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="background: papayawhip;">
      <div class="modal-header">
      
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body" id="showmyinteresteddetails" style="background: papayawhip;">
        
      </div>
     
    </div>
  </div>
</div>

	 <div class="modal fade" id="checkfeed_back" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  	<div class="modal-dialog" role="document">
    <div class="modal-content" style="background: papayawhip;">
      <div class="modal-header border-0">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
       <h3 class="modal-title" id="exampleModalLongTitle">Select Feedback Option</h3> 
       
      </div>
      <div class="modal-body" id="salesman_student" style="background: papayawhip;">
         <div class="row" style="padding: 36px; margin-left:0px;margin-right:0px;box-shadow: rgb(0 0 0) 0px 10px 20px -6px; ">
                             
                       
                        <div><input type="radio"  name="radiobox" value="1" class="feedback"id=""> <label for="RAW" class="feedback">Not Interested</label></div>
                        <div><input type="radio" name="radiobox" value="2"class="feedback"id=""> <label for="Library" class="feedback">Taken Other Subscription</label></div>
                        <div><input type="radio"  name="radiobox" value="3" class="feedback" id=""> <label for="RAW" class="feedback">Interested In skyget</label></div>
                        <div><input type="radio" name="radiobox" value="4" class="feedback" id=""> <label for="Library" class="feedback">Product Explained</label></div>
                        <div><input type="radio" name="radiobox" value="5" class="feedback" id=""> <label for="RAW" class="feedback">Called Many Times</label></div>
               <div class="" style="display:flex; justify-content:flex-end"><button class="btn btn-success mt-3 btn-block text-white" onclick="salesFeedback()" style="
    margin-top: 30px;
">SUBMIT</button></div>
          </div>
          
         
        </div>
      </div>
     
    </div>
  </div>





<!-- 
<div class="modal fade" id="exampleModalLong1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        <p class="modal-title" id="exampleModalLongTitle">Info</p>
      </div>
      <div class="modal-body" id="salesman_comment">
        
      </div>
     
    </div>
  </div>
</div> -->
 
 </div>




  <script>
  
  $(document).ready( function () {
	   
		$('#myTable').DataTable();
		$('#myTable2').DataTable();
		$('#myTable1').DataTable();
		$('#myTable3').DataTable();
	    
	} ); 
  
  
  let tabs = document.querySelector('.tabs');

  document.addEventListener('DOMContentLoaded', function(){
    let first_tab = tabs.querySelector('.tab');
    let first_target_content = document.querySelector('#'+first_tab.dataset.content);
    
    first_tab.classList.add('active');
    first_target_content.style.display = 'block'
  }, false);

  tabs.addEventListener('click', function(e){

    let target = e.target;
    let target_content = document.querySelector('#'+target.dataset.content);
    
    let tabcontent = document.querySelectorAll('.tab_content');
    tabcontent.forEach(function(i){
      i.style.display = 'none';
    });
    
    let tabs = document.querySelectorAll('.tab');
    tabs.forEach(function(i){
      i.classList.remove('active');
    });
    
    target_content.style.display = 'block';
    target.classList.add('active');
   
  })
  
  </script>
  
  <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>
<script src="<%=request.getContextPath()%>/sales/js/interestedstudent.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
		<script src="<%=request.getContextPath()%>/sales/js/salesSession.js"></script>
	
 
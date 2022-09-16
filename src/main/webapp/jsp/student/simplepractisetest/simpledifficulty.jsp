<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp"%>
  <!-- Bootstrap -->
<!--   <link href="css/bootstrap.min.css" rel="stylesheet"> -->
  <link href="<%=request.getContextPath()%>/assets/css/student/css/simpledifficulty.css" rel="stylesheet">


  <section id="headertop">
    <div class="heading">
      <div class="ribbon" contenteditable>SIMPLE PRACTISE</div>
    </div>
  </section>



<section id="examcontent">

<div class="leveldetails">

    <div class="col-sm-12" style="display: flex;justify-content: center;">
<img src="<%=request.getContextPath()%>/assets/landing/img/physics.svg" width="120px" height="120px" style="border-radius:15px;">
    </div>
    <div class="col-sm-12">
    <p class="displaycenter">Difficulty level</p>
   </div>

   <div class="col-sm-12 displaycenter">
 
                <input type="radio" id="ritema" data-radio="radio" name="ritem" style="margin-right:8px;" value="Level-1">
                <label for="ritema" class="labelcol">Level-1</label>

                <input type="radio" id="ritemb1" data-radio1="radio2" name="ritem" style="margin-left:25px;margin-right:8px" value="Level-2">
                <label for="ritemb3" class="labelcol1">Level-2</label>

                <input type="radio" id="ritemb2" data-radio2="radio3" name="ritem" style="margin-left:25px;margin-right:8px" value="Level-3">
                    <label for="ritemb2" class="labelcol2">Level-3</label>
 
       </div>

       <div class="col-sm-12 displaycenter">
            
                    <button type="button" class="btn btn-hot text-uppercase"><a href="<%= AppConstants.BASE_URL %>student/simplepractisetest/simpletestfirst.jsp">Back</a></button>
                    <button type="button" class="btn btn-sunny text-uppercase" style="margin-left:15px"><a href="<%= AppConstants.BASE_URL %>student/simplepractisetest/simple_practice_get_questions.jsp" >Get Questions</a></button>
                 
        </div>
</div>
</section>

<!--   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script> -->
	<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
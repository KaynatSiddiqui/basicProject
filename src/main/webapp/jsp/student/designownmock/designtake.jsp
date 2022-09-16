
<%@page import="com.zomant.util.AppConstants"%>

<%@include file="/jsp/master/default.jsp" %>
<%-- <link href="<%=request.getContextPath()%>/assets/css/designown/designown.css" rel="stylesheet"> --%>

<style>
.inputlay{
    display: inline;
    width: auto;
    height: 34px;
    padding: 6px 12px;
    margin-left:100px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
    -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
    -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
    transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
}

.clsr{
    margin-bottom:25px !important;
}

#headertop{
width:100%;
height:80px;
margin-left: 50px;
}

.ribbon {
    font-weight: 600;
    color: #fff;
    background:deepskyblue;
    padding: 0 20px;
    font-size: 20px;
    line-height: 40px;
    max-width: 90vw;
    letter-spacing:2px;
    width: max-content;
    position: relative;
    text-align: center;
    height: 50px;
    margin: 3em 2em;
    filter: drop-shadow(0 10px 13px rgba(0, 0, 0, 0.4));
    border: 2px solid #666;
  }
  
  .ribbon:after,
  .ribbon:before {
    content: "";
    position: absolute;
    display: block;
    bottom: 0;
    border: 20px solid #fff;
  }
  
  .ribbon:before {
    left: -32px;
    background:deepskyblue;
    height:50px;
    border-right-width: 10px;
    border-left-color: transparent;
    filter: drop-shadow(-6px 6px 3px rgba(0, 0, 0, 0.04));
  }
  
  .ribbon:after {
    right: -32px;
    background:deepskyblue;
    height:50px;
    border-left-width: 10px;
    border-right-color: transparent;
    filter: drop-shadow(6px 6px 3px rgba(0, 0, 0, 0.04));
  }
</style>
<!--

-->
</style>

  <section id="headertop">
    <div class="heading">
      <div class="ribbon" contenteditable>DESIGN OWN MOCK TEST</div>
    </div>
  </section>



<section id="examcontent">

<div class="leveldetails">

    <div class="col-sm-12" style="display: flex;justify-content: center;">
<img src="physics.svg" width="120px" height="120px" style="border-radius:15px;">
    </div>


   <div class="col-sm-12 displaycenter">
 
        <form >
            <div class="form-group clsr">
              <label for="email">Email:</label>
              <input type="email" class="inputlay"  id="email" placeholder="Enter email" name="email">
            </div>
            <div class="form-group clsr">
                    <label for="email">No.of Questions:</label>
                    <select style="margin-left:32px">
                        <option value="1">1</option>
                        <option value="10">10</option>
                        <option value="12">12</option>
                        <option value="15">15</option>
                        <option value="18">18</option>
                    </select>
                  </div>
                  <div class="form-group clsr">
                        <label for="email">Difficult Level:</label>
                      <label for="level1" style="margin-left:30px">Level-1</label>
                      <select>
                            <option value="10%">10%</option>
                            <option value="15%">15%</option>
                            <option value="18%">18%</option>
                      </select>
               
                      <label for="level1" style="margin-left:20px">Level-2</label>
                      <select>
                            <option value="10%">10%</option>
                            <option value="15%">15%</option>
                            <option value="18%">18%</option>
                      </select>
                    
                      <label for="level1" style="margin-left:20px">Level-3</label>
                      <select>
                            <option value="10%">10%</option>
                            <option value="15%">15%</option>
                            <option value="18%">18%</option>
                      </select>
                      </div>
            </form>
 
       </div>

       <div class="col-sm-12 displaycenter">
            
                    <button type="button" class="btn btn-hot text-uppercase"><a href="">Back</a></button>
                    <button type="button" class="btn btn-sunny text-uppercase" style="margin-left:15px"><a href="<%= AppConstants.BASE_URL %>student/simplepractisetest/simple_practice_get_questions.jsp" >Design & Take</a></button>
                 
        </div>
</div>
</section>
  <input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/>
		<%@include file="/jsp/master/footer.jsp" %>
 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/common.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/designown.js"></script>
   
</body>

</html>
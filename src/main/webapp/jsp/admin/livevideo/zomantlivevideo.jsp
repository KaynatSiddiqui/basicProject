<%@page import="com.zomant.util.AppConstants"%>
<link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker.css" rel="stylesheet" type="text/css">
 
   <script src="<%=request.getContextPath()%>/assets/css/timepicker/js/bootstrap-timepicker.js"></script>
   
   <link href="<%=request.getContextPath()%>/assets/css/timepicker/css/timepicker1.css" rel="stylesheet" type="text/css">
<%@include file="/jsp/master/default.jsp"%>
<!-- <link rel='stylesheet'
	href='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css'>
<link rel='stylesheet'
	href='https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/build/css/bootstrap-datetimepicker.css'>
 -->
 
<!--  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" rel="stylesheet"/>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet"/>
  -->
<style>
/* #image {
	padding: 10px;
	background: #b10058;
	color: #fff;
}

input[type="file"] {
	display: none;
} */
img {
	max-width: 180px;
}
</style>

<!-- Main Content -->
<div class="page-wrapper">
	<div class="container-fluid">

		<!-- Title -->
		<div class="row heading-bg"></div>
		<!-- /Title -->

		<!-- Row -->
		<div class="row">
			<div class="col-sm-12">
				<div class="panel panel-default card-view">

					<hr class="light-grey-hr mb-10">
					<div class="row">
						<div class="col-sm-6 col-sm-offset-3">
							<form>
								<div class="row">

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="categories">Categories</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="categories" name="selValue0">
													<option>--- Select Category---</option>
													<option value="1">Engineering</option>
													<option value="2">Medical</option>
												</select> -->
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="categories" name="selValue0">
													
												</select>
											</div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="standard">Standard</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<!-- <select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="standard" name="selValue1" >
													<option>--- Select Standard---</option>
													<option value="1">11-12</option>
													<option value="2">Neat</option>
												</select> -->
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="standard" name="selValue1" >
													<option>--- Select Standard---</option>
													<option value="1">11-12</option>
													<!-- <option value="2">Neat</option> -->
												</select>
											</div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="ExamType">Exam
													Type</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="ExamType" name="selValue2">
													<!-- <option>--- Select ---</option>
															<option value="1">JEMains</option> -->
													<!-- <option value="2">Neat</option> -->
												</select>
											</div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="subject">Subject</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="subject" name="selValue3">
													<!-- <option>--- Select ---</option>
															<option value="1">JEMains</option> -->
													<!-- <option value="2">Neat</option> -->
												</select>
											</div>
										</div>
									</div>



									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="Chapter">Chapter</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<select class="form-control"
													data-style="form-control btn-default btn-outline"
													id="Chapter" name="selValue4">
													<!-- <option>--- Select ---</option>
															<option value="1">JEMains</option> -->
													<!-- <option value="2">Neat</option> -->
												</select>
											</div>
										</div>
									</div>


									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videotype">Video
													type</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">

												<select class="form-control" name="selValue"
													data-style="form-control btn-default btn-outline"
													id="videotype">
													<option value="">--- Select ---</option>

													<option value="live now">Live now</option>
													<option value="Doubts Videos">Doubts Videos</option>
													<option value="Tricks & Logics">Tricks & Logics</option>
													<option value="Motivational Videos">Motivational
														Videos</option>
													<option value="News & Update">News & Update</option>
													<option value="Concepts - in Real world applications">Concepts
														- in Real world applications</option>
													<option value="Methods to Solve">Methods to Solve</option>
													<option value="Crash Course">Crash Course</option>
													<option value="Fit Formulae">Fit Formulae</option>
													<option value="Confusions & Misconceptions">Confusions & Misconceptions</option>
												</select>

											</div>
										</div>
									</div>


									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="livedate">live
													date </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
											<div class="input-group">
												<input class="form-control date-picker" name="interview_date" id="livedate" type="text" value="" placeholder="dd-mm-yyyy" data-date-format="dd-mm-yyyy" />
													<span class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</span>
												</div>
											</div>
										</div>
										
										
										
										
										
										<!-- <div class="col-md-2">
											<div class="form-group">
												<label class="control-label mb-5 bold" for="exampleInputuname_2">From Date</label>
												<div class="input-group">
													
												</div>
											</div>
										</div> -->
										
										
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="starttime">Start
													Time </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">


												<!-- <input type="" id="starttime" name="starttime" class="form-control" placeholder="Select a time">
													 -->
												<!-- <div class='input-group date' id='datetimepicker3'>
													<input type='text' id="starttime" class="form-control" /> <span
														class="input-group-addon"> <span
														class="glyphicon glyphicon-time"></span>
													</span>
												</div> -->
												<div class="row">

													<div class="col-md-4">
														<select class="form-control" required id="hour">
															<option value="">--- Select Hours---</option>
                                                                                                                        <option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select>
														<!-- </div> -->

													</div>

													<div class="col-md-4">
														<!-- <div><label for="minutes">Minutes</label></div>
														
  -->
														<select class="form-control" required="" id="minute">
															<option value="">---Select Minutes---</option>
															<option value="00">00</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
															<option value="32">32</option>
															<option value="33">33</option>
															<option value="34">34</option>
															<option value="35">35</option>
															<option value="36">36</option>
															<option value="37">37</option>
															<option value="38">38</option>
															<option value="39">39</option>
															<option value="40">40</option>
															<option value="41">41</option>
															<option value="42">42</option>
															<option value="43">43</option>
															<option value="44">44</option>
															<option value="45">45</option>
															<option value="46">46</option>
															<option value="47">47</option>
															<option value="48">48</option>
															<option value="49">49</option>
															<option value="50">50</option>
															<option value="51">51</option>
															<option value="52">52</option>
															<option value="53">53</option>
															<option value="54">54</option>
															<option value="55">55</option>
															<option value="56">56</option>
															<option value="57">57</option>
															<option value="58">58</option>
															<option value="59">59</option>

														</select>

													</div>
													
													<div class="col-md-4">
												<select class="form-control" required="" id="tim">
															<option>---Select---</option>
															<option value="am">AM</option>
															<option value="pm">PM</option>
													
													</select>
													</div>

												</div>
		
												
											</div>
										</div>
									</div>



									<!-- 								 <div class="row">
  
    <div class='col-sm-4'>
      <div class="form-group">
        <div class='input-group date' id='datetimepicker3'>
          <input type='text' class="form-control" />
          <span class="input-group-addon">
                        <span class="glyphicon glyphicon-time"></span>
          </span>
        </div>
      </div>
    </div>
  </div>
											
						 -->







									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="videourl">Video
													Link </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="videourl" name="videourl"
													class="form-control" placeholder="Enter video url">
											</div>
										</div>
									</div>
									
									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="imageurl">Image
													url </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="imageurl" name="videourl"
													class="form-control" placeholder="Enter image url">
											</div>
										</div>
									</div>

									<!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="base60photo">Select
													Image </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">

												<div style="width:100px;height:100px;display:flex">
													<img id="img" style=" width:100px; height:100px" src="http://via.placeholder.com/150x150"
													class="student_profile_img rounded-circle"> <input type="hidden" id="base60photo" value=""> 
													<label id="image" style="" class="text-primary mt-5 ml-3">UploadImage <input type="file" id="pimage" style="display: none">
												</label>
												</div>


												<div class="d-flex justify-content-center">

													<div>

														<img id="myImg"
															src="https://elementstark.com/woocommerce-extension-demos/wp-content/uploads/sites/2/2016/12/upload.png"
															alt="your image"/>
														<div class="bg-success text-white">
															<input type='file' id="base60photo" class="bg-success text-white"/>
														</div>
													</div>
												</div>




											</div>
										</div>
									</div>


 -->


									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="Professor">Professor
												</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="Professor" name="Professor"
													class="form-control" placeholder="Enter professor name">
											</div>
										</div>
									</div>


									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="MainTitle">Main
													Title </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="MainTitle" name="MainTitle"
													class="form-control" placeholder="Enter Main Title">
											</div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="SubTitle">Sub
													Title </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="SubTitle" name="SubTitle"
													class="form-control" placeholder="Enter Sub Title">
											</div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="topic">Topic </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<textarea rows="4" cols="3" id="topic" name="topic"
													class="form-control" placeholder="Enter topic"></textarea>
											</div>
										</div>
									</div>






									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="duration">Duration
												</label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">


												<!-- <input type="text" id="duration" name="duration" class="form-control" placeholder="Enter Duration">
													 -->
												<div class="row">

													<div class="col-md-6">
														<select class="form-control" required id="hours">
															<option>--- Select Hours---</option>
															<option value="0">0</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
														</select>
														<!-- </div> -->

													</div>

													<div class="col-md-6">
														<!-- <div><label for="minutes">Minutes</label></div>
														
  -->
														<select class="form-control" required="" id="minutes">
															<option>---Select Minutes---</option>
															<option value="00">00</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
															<option value="32">32</option>
															<option value="33">33</option>
															<option value="34">34</option>
															<option value="35">35</option>
															<option value="36">36</option>
															<option value="37">37</option>
															<option value="38">38</option>
															<option value="39">39</option>
															<option value="40">40</option>
															<option value="41">41</option>
															<option value="42">42</option>
															<option value="43">43</option>
															<option value="44">44</option>
															<option value="45">45</option>
															<option value="46">46</option>
															<option value="47">47</option>
															<option value="48">48</option>
															<option value="49">49</option>
															<option value="50">50</option>
															<option value="51">51</option>
															<option value="52">52</option>
															<option value="53">53</option>
															<option value="54">54</option>
															<option value="55">55</option>
															<option value="56">56</option>
															<option value="57">57</option>
															<option value="58">58</option>
															<option value="59">59</option>

														</select>

													</div>

												</div>

											</div>
										</div>
									</div>

									<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
										<div class="row form-group">
											<div class="col-lg-3 col-md-3 col-sm-4 col-xs-10">
												<label class="control-label" for="professorRating">Professor
													Rating </label>
											</div>
											<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1">:</div>
											<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12">
												<input type="text" id="professorRating"
													name="professorRating" class="form-control"
													placeholder="Enter Professor Rating">
											</div>
										</div>
									</div>


									<!-- <button class="btn btn-primary" onclick="livevideoadd()">Submit</button> -->

									<!-- <input type="button" id="submit" class="btn btn-primary text-white" onclick="livevideoadd()" value="Submit" />
  
   											<input type="button" id="update" class="btn btn-info text-white" value="Update" />  -->

								</div>


								<div class="row">
									<div class="col-md-6 col-md-offset-4">
										<div class="button-list mt-25">
											<input type="button" id="submit"
												class="btn btn-primary text-white" onclick="livevideoadd()"
												value="Submit" /> <input type="button" id="update"
												class="btn btn-info text-white"  onclick="updateid()" value="Update" />
										</div>
									</div>
								</div>

							</form>
						</div>
					</div>
					<hr class="light-grey-hr mt-30 mb-10">
				</div>
			</div>
		</div>
		<!-- /Row -->
	</div>
</div>
<!-- <input type="hidden" id="creationactive" value="creationside"/>
	<input type="hidden" id="ulactive" value="creation_dr"/> -->






  <script src="https://sdk.amazonaws.com/js/aws-sdk-2.357.0.min.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/zomantlivevideo.js"></script>

<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  

<%@include file="/jsp/master/footer.jsp"%>
<input type="hidden" id="createdby" value="${AdminType }" />
<script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>
<script src="<%=request.getContextPath()%>/assets/js/common.js"></script>

<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
<script>

window.addEventListener('load', function() {
    document.getElementById('base60photo').addEventListener('change', function() {
        if (this.files && this.files[0]) {
            var img = document.getElementById('myImg');
            img.onload = () => {
                URL.revokeObjectURL(img.src);  // no longer needed, free memory
            }

            img.src = URL.createObjectURL(this.files[0]); // set src to blob url
        }
    });
  });

$('.date-picker').datepicker({
			autoclose: true,
			todayHighlight: true,
		}) 
		
		
		
 var bucketName = "doubtsvideos";
 var bucketRegion = "ap-south-1";
 var IdentityPoolId = "ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a";
 //var IdentityPoolId = "ap-south-1:00ad6d2b-fd7b-48d1-812b-196b94449348";
AWS.config.region = 'ap-south-1'; // Region
AWS.config.credentials = new AWS.CognitoIdentityCredentials({
    IdentityPoolId: 'ap-south-1:840609f7-4b0b-41eb-b61b-a5281dc5b68a',
});

            var s3 = new AWS.S3({
                apiVersion: '2014-06-30',
                params: {Bucket: bucketName}
        });
		
		</script>
<!-- <script
	src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js'></script>
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.9.0/moment-with-locales.js'></script>
<script
	src='https://cdn.rawgit.com/Eonasdan/bootstrap-datetimepicker/e8bddc60e73c1ec2475f827be36e1957af72e2ea/src/js/bootstrap-datetimepicker.js'></script>
 -->
 
 
   


<script>
	/* document.getElementById("pimage").addEventListener("change", readFile);
	 function readFile() {
		  
		  if (this.files && this.files[0]) {
		    
		    var FR= new FileReader();
		    
		    FR.addEventListener("load", function(e) {
		      document.getElementById("img").src       = e.target.result;
		      document.getElementById("base60photo").value = e.target.result;
		    }); 
		    
		    FR.readAsDataURL( this.files[0] );
		  }
		  
	
	 } 
	 
	 
	 window.addEventListener('load', function() {
		  document.querySelector('input[type="file"]').addEventListener('change', function() {
		      if (this.files && this.files[0]) {
		          var img = document.querySelector('img');  // $('img')[0]
		          img.src = URL.createObjectURL(this.files[0]); // set src to blob url
		          img.onload = imageIsLoaded;
		      }
		  });
		});

		function imageIsLoaded() { 
		  this.src  // blob url
		  // update width and height ...
		}
	
	 */

	/* function imgupload(fileUpload) {

		var reader = new FileReader();

		//Read the contents of Image File.
		reader.readAsDataURL(fileUpload.files[0]);
		reader.onload = function(e) {

			//Initiate the JavaScript Image object.
			var image = new Image();

			//Set the Base64 string return from FileReader as source.
			image.src = e.target.result;

			//Validate the File Height and Width.
			image.onload = function() {
				var height = this.height;
				var width = this.width; */
				/*  if (height < 10 && width < 20) {
				  
				   alert("Width must be < 700 and Height must be < 394.");
				   return false;
				   
				 } */
				/* if (fileUpload.files && fileUpload.files[0]) {
					var reader = new FileReader();

					reader.onload = function(e) {
						$('#base60photo').attr('src', e.target.result);
					};

					reader.readAsDataURL(fileUpload.files[0]);
				}
			};
		}

	} */

	/* $(function() {

		$('#datetimepicker3').datetimepicker({
			format : 'LT'
		});
	}); */
	
	/* $(document).ready(function ($) {
	    $('#TheTime').datetimepicker({
	        format: 'hh:mm a'
	    });                        
	}); */
	
</script>




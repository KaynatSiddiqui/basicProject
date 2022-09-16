<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  
  <link rel="shortcut icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="apple-touch-icon-precomposed" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	<link rel="icon" href="<%=request.getContextPath()%>/assets/landing/favicons/logo.png">
	  <meta name="theme-color" content="#fd7e14;">   

  <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
 <!--  <link rel="stylesheet" href="./style.css"> -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="<%=request.getContextPath()%>/sales/css/login_style.css" rel="stylesheet" type="text/css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"
	integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
	crossorigin="anonymous">
	
</script>


<style>

.loading-indicator {
  margin: 2em auto;
  position: relative;
  width: 54px;
  height: 54px;
  position:relative;
  top: -39px;
}
.loading-indicator div {
  animation: lds-roller 1.2s cubic-bezier(0.5, 0, 0.5, 1) infinite;
  transform-origin: 32px 32px;
}
.loading-indicator div:after {
  content: " ";
  display: block;
  position: absolute;
  width: 6px;
  height: 6px;
  border-radius: 50%;
  background: white;
  margin: -3px 0 0 -3px;
}
.loading-indicator div:nth-child(1) {
  animation-delay: -0.036s;
}
.loading-indicator div:nth-child(1):after {
  top: 50px;
  left: 50px;
}
.loading-indicator div:nth-child(2) {
  animation-delay: -0.072s;
}
.loading-indicator div:nth-child(2):after {
  top: 54px;
  left: 45px;
}
.loading-indicator div:nth-child(3) {
  animation-delay: -0.108s;
}
.loading-indicator div:nth-child(3):after {
  top: 57px;
  left: 39px;
}
.loading-indicator div:nth-child(4) {
  animation-delay: -0.144s;
}
.loading-indicator div:nth-child(4):after {
  top: 58px;
  left: 32px;
}
.loading-indicator div:nth-child(5) {
  animation-delay: -0.18s;
}
.loading-indicator div:nth-child(5):after {
  top: 57px;
  left: 25px;
}
.loading-indicator div:nth-child(6) {
  animation-delay: -0.216s;
}
.loading-indicator div:nth-child(6):after {
  top: 54px;
  left: 19px;
}
.loading-indicator div:nth-child(7) {
  animation-delay: -0.252s;
}
.loading-indicator div:nth-child(7):after {
  top: 50px;
  left: 14px;
}
.loading-indicator div:nth-child(8) {
  animation-delay: -0.288s;
}
.loading-indicator div:nth-child(8):after {
  top: 45px;
  left: 10px;
}
@keyframes lds-roller {
  0% {
    transform: rotate(0deg);
  }
  100% {
    transform: rotate(360deg);
  }
}


</style>

</head>
<body>
<!-- partial:index.partial.html -->
<div class="form">
		<div>
		<div class="d-flex justify-content-center align-items-center">
		
		<%-- <img src="<%=request.getContextPath()%>/assets/images/students/Sales_imgs.png" style="height:202px;"> --%>
		
		<img src="<%=request.getContextPath()%>../images/LoginAcademic.svg" style="height:202px;">
		
		</div>

  <h2><span class=""><i class="fa fa-sign-in"></i></span> Login</h2>
 
  <span class="inputUserIcon">
 <i class="fa fa-phone" aria-hidden="true"></i>
   </span>
 <!--  <input type="number" class="user" placeholder="Mobile number"/> -->
 
 <input type="text" class="user" placeholder="Mobile number" oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*?)\..*/g, '$1');" />
  
 
  <span class="inputPassIcon">
     <i class="fa fa-key"></i>
   </span>
   <input type="password" class="pass" id="videpass" placeholder="Password"/>
  <div style="display:flex; align-items:center; margin-top:-20px;"><input type="checkbox" onclick="myFunction()" style="width:20px;height:20px;">
  <label style="margin-top:10px;">Show Password</label>
  </div>
   <button class="btn btn-danger submit" id="facultyLogin" style="height:70px;" onclick="sub()"><i class="fa fa-lock"></i></button>

<div class="" style="display:flex;justify-content:space-around; align-items:center; margin-top:5px;">
    <a href="salesprivacy.jsp" style="margin-left:50px;">Privacy</a>
    <a href="salesterms.jsp" style="margin-right:100px;">Terms</a>
</div>
</div>
</div>
<!-- partial -->


<script>


/*  
$(document).ready(function(){
var temp= window.location.href;

if(temp.includes("https://www."))
{
//alert("The URL of this page is: " );
}else
{
//   alert("The URL of : ");
   location.replace("https://www.skyget.ai/sales/jsp/salesman_login.jsp");

} 


}); */


</script>

<script src="<%=request.getContextPath()%>/sales/js/login_script.js"></script>
 <script src="<%=request.getContextPath()%>/assets/js/baseurl.js"></script>


<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
 <!--  </script><script  src="./script.js"></script> -->

</body>
</html>

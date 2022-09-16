<%@page import="com.zomant.util.AppConstants"%>


<style>
html, body {
  margin: 0;
  height: 100%;
  font-family: sans-serif;
  background: #f0f4f8;
}

</style>
<div class="row row-padd" id="week_wise_tests">

    <!--<div class="col-md-4">
			<div class="calender-nov"><div class="circle1"><div class="circle-line1"></div></div>November<br> 2018<div class="circle2"><div class="circle-line1"></div></div></div>
				<div class="row calender-week">
				<div class="row"><div class="noof">No. of Tests</div></div>
					  <div class="col-md-5">Week-1</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-2</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-3</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-4</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
				</div>
    </div>	
    <div class="col-md-4">
			<div class="calender-nov dec"><div class="circle1"><div class="circle-line1"></div></div>December <br> 2018<div class="circle2"><div class="circle-line1"></div></div></div>
				<div class="row calender-week">
				<div class="row"><div class="noof">No. of Tests</div></div>
					  <div class="col-md-5">Week-1</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-2</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-3</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-4</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
				</div>
    </div>
    <div class="col-md-4">
			<div class="calender-nov jan"><div class="circle1"><div class="circle-line1"></div></div>January <br>  2018<div class="circle2"><div class="circle-line1"></div></div></div>
				<div class="row calender-week">
				<div class="row"><div class="noof">No. of Tests</div></div>
					  <div class="col-md-5">Week-1</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-2</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-3</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-4</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
				</div>
    </div>
    <div class="col-md-4">
			<div class="calender-nov nfirst"><div class="circle1"><div class="circle-line1"></div></div>November <br>  2018<div class="circle2"><div class="circle-line1"></div></div></div>
				<div class="row calender-week">
				<div class="row"><div class="noof">No. of Tests</div></div>
					  <div class="col-md-5">Week-1</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-2</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-3</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-4</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
				</div>
    </div>
    <div class="col-md-4">
			<div class="calender-nov dec1"><div class="circle1"><div class="circle-line1"></div></div>December <br>  2018<div class="circle2"><div class="circle-line1"></div></div></div>
				<div class="row calender-week">
				<div class="row"><div class="noof">No. of Tests</div></div>
					  <div class="col-md-5">Week-1</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-2</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-3</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-4</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
				</div>
    </div>
    <div class="col-md-4">
			<div class="calender-nov jan1"><div class="circle1"><div class="circle-line1"></div></div>January <br>  2018<div class="circle2"><div class="circle-line1"></div></div></div>
				<div class="row calender-week">
				<div class="row"><div class="noof">No. of Tests</div></div>
					  <div class="col-md-5">Week-1</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-2</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-3</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
					  <div class="col-md-5">Week-4</div>
					  <div class="col-md-1">-</div>
					  <div class="col-md-5">2/10</div>
				</div>
    </div>-->
		
</div>
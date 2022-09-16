	
jQuery(document).ready(function(){
		
$(".contact-link, #cont-slide").click(function () {
	contLoTrack();
	$("#clickme").click();

});

var loc = window.location.href.match(/[^\/]+$/)[0];
var checkName = loc.split(".");
var  reqName = "index";
var  mreqName = "mindex";

$(".notifyMe").css("display","block");
$(".notifyMe").html('<a id="advnclos" class="close" aria-label="close">&#10799;</a> <div class="sub_divpopup"><center><strong class="advancemessage">NEW ADVANCE ORDER DISCOUNTS - SAVE 15%  <a style="padding-left:6px;" href="faq.jsp#AdvOrderFaq"><span class="advofr-blnk">(Learn More)</span></a></strong> </center>');

var hedrdv = $(".header").height();

$(".header_sib").css("height",hedrdv);
$("#side-menu").css("top",hedrdv);

if(reqName == checkName[0] || mreqName == checkName[0]){
	$(".banner_home").css({'background-position-x':'center','background-position-y':hedrdv});   				
}


$(document).on('click','#advnclos', function() {
	
	var loc = window.location.href.match(/[^\/]+$/)[0];
	var checkName = loc.split(".");
	var  reqName = "index";
	var  mreqName = "mindex";
	var  carmreqName = "view-cart";
	
	$(".notifyMe").css("display","none");
	$(".header_sib").css("height",56);
	
	if(reqName == checkName[0] || mreqName == checkName[0]){
		$(".banner_home").css({'background-position-x':'center','background-position-y':58});
	}
	
	$("#side-menu").css("top",60);
	
	if(carmreqName == checkName[0]){
		
		    if($(window).width()>1200){
				 var hedrdv = parseInt($(".header").height());
				 var fixschdr = parseInt($(".cart-steps").height());
				 var finhdrh =hedrdv+fixschdr+52;
				 				 
				 $('.cart-main-lt-sub-dv3').css({
						'position': 'fixed',
						'top': finhdrh,
						'z-index': '1'
				 });
				 
		    }
	    
	}
	
	
});



    parent_bannerSlider();
    $('#mobile-trigger').on('click', function() {
        if ($(this).hasClass('active')) {
            $('#side-menu').removeClass('active');
            $(this).removeClass('active');
            $(".side-menu-overlay").fadeOut(400);
        } else {
            $('#side-menu').addClass('active');
            $(this).addClass('active');
            $(".side-menu-overlay").fadeIn(500);
        }
    });
    
    
    $('.side-menu-overlay').on('click', function() {
    	
    	 if ($('#mobile-trigger').hasClass('active')) {
    		 
    		 $('#side-menu').removeClass('active');
    		 $('#mobile-trigger').removeClass('active');
    		 $(".side-menu-overlay").fadeOut(400);
    		 
    	 }
    	
    });
    
    /*adding fixed div*/
    
    $('.main-content').before("<div class='header_sib'></div>");
    
    $(window).on("resize", function() {
        parent_bannerSlider();
    });
    $(window).load(function() {
        parent_bannerSlider();
        $(window).resize();
    });
    var rightVal = -540;
    $("#clickme").click(function() {
        rightVal = (rightVal * -1) - 540;
        $(this).parent().animate({
            right: rightVal + 'px'
        }, {
            queue: false,
            duration: 500
        });
    });
    $('.pop-cls-btn, .em-pop-cls-btn, .mpop-cls-btn, .mob-pop-cls-btn').click(function() {
        $("#closeDiveClck").click();
        $("#zipcodeenteredis").val("");
    });
    $('.clrxip').click(function() {
        if (typeof (Storage) !== "undefined") {
            var homeNav = true;
            sessionStorage.setItem('homeNav', homeNav);
        } else {}
    });
    fnManageMenu();
    try {
        var ucd = JSON.parse(atob(getCookie("UCD")));
        $(".cartcountis").text(ucd.count);
    } catch (e) {
        $(".cartcountis").text(0);
    }
    $("#change-subscribe-email").on({
        keydown: function(e) {
            if (e.which === 32)
                return false;
        },
        change: function() {
            this.value = this.value.replace(/\s/g, "");
        }
    });
			
			jQuery('#subscribe-btn').click(function() {
				var email = $('#change-subscribe-email').val();
				if(email == "" ||email == "Signup for Future Communications"){
					Alert.render('Please Enter your Email Address');
					return false;
				}
				if(isEmail(email)) {
					var baseURL = $("#baseURL").val();
					var zipcode = "12345";
					email = email.replace(/\s/g, "");
					var inputData = '{"emailId":"'+ email +'","zipcode":"'+ zipcode +'"}';
					$.ajax({
						type: "POST",
						contentType: "application/json",
						dataType: "json", 
						async:false,
						url: baseURL+"/rest/noservicearea",
						data : inputData,
						success: function(data){
							$('#change-subscribe-email').val('Signup for Future Communications');
							Alert.render(data.message);
						}, 
						error: function(data) {
							Alert.render(data.responseJSON.errorMessage);
							$('#change-subscribe-email').val('Signup for Future Communications');
						}
					});
				}else{
					Alert.render('Please enter valid email.');

				}
			});
    $('#weekly-menu').click(function() {
        autoLogin = false;
    });
});
var gRegExpEmail = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
function isEmail(mail) {
    if (gRegExpEmail.test(mail))
        return true;
    else
        return false;
}
function isNumberKey(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}
function CheckNumber(MyNumber) {
    var MN = /^\d{10}$/;
    if (MN.test(MyNumber)) {
        return true;
    }
    return false;
}
function validateEmail($email) {
    var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
    return emailReg.test($email);
}
function getCookie(cname) {
    var name = cname + "=";
    var ca = document.cookie.split(';');
    for (var i = 0; i < ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0) == ' ')
            c = c.substring(1);
        if (c.indexOf(name) == 0)
            return c.substring(name.length, c.length);
    }
    return "";
}
function setCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays * 24 * 60 * 60 * 1000));
    var expires = "expires=" + d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}
function myFunction() {
    var popup = document.getElementById("myPopup");
    popup.classList.toggle("show");
}
var arraydata = "";
var finalarray = [];
function getdatedetails() {
    /*savData = JSON.parse(atob(getCookie("UCD1")));*/
	var savData ="";
	try{
		savData =JSON.parse(atob(getCookie("UCD1")));
	}catch(e){
		try{
			savData =JSON.parse(atob(getCookie("UCD2")));
		}catch(e){
			try{
				savData =JSON.parse(atob(getCookie("UCD3")));
			}catch(e){
				try{
					savData =JSON.parse(atob(getCookie("UCD4")));
				}catch(e){
					try{
						savData =JSON.parse(atob(getCookie("UCD5")));
					}catch(e){
						console.log("catch"+e.message);
					}
					
				}
				
			}
			
		}
		
	}
    $.each(savData.dailyItem, function(index) {
        arraydata = savData.dailyItem[index].date;
        finalarray.push(arraydata);
        $("#menudatecookie").val(finalarray);
        return;
    });
}
function mscdtimezonecall() {
    var baseURL = $("#baseURL").val();
    jQuery.ajax({
        type: "GET",
        dataType: "json",
        async: false,
        url: baseURL + '/rest/common/date/now',
        success: function(data) {
            var currentdate = data.date;
            $("#serverdateandtime").val("");
            var serverddmmyyyy = currentdate;
            var parts = serverddmmyyyy.split('-');
            var serverdate = parts[0];
            var servermm = parts[1];
            var serveryear = parts[2];
            serveryear = serveryear.split(" ");
            var serverfinal = serverdate + "-" + servermm + "-" + serveryear[0];
            $("#serverdateandtime").val("");
            $("#serverdateandtime").val(serverfinal);
            
            var sevdateTime=currentdate.split(" ");
            var sertime = sevdateTime[1];
            sertime = sertime.split(":");
            
            $("#stime").val("");
            $("#stime").val(sertime[0]);
            
            
            getdatedetails();
        },
        error: function() {}
    });
}
function fnViewCart() {
    var baseURL = $("#baseURL").val();
    if ($(".cartcountis").text() == 0) {
    	
        /*Alert.render('Your cart is empty.');*/
    	$(".notifyMe").css("display","block");
        $(".notifyMe").html("");
        $(".notifyMe").html('<a id="advnclos" class="close" aria-label="close">&#10799;</a> <div class="sub_divpopup"><center><strong class="advancemessage">Your cart is currently empty. Please add some items and try again.</strong> </center>');

        return false;
    } else if ($('#uname').text().length > 0 && $(".cartcountis").text() > 0) {
        return true;
    } else {
        autoLogin = true;
        if (typeof (Storage) !== "undefined") {
            localStorage.setItem('autoLogin', autoLogin);
        } else {}
        
        var phdata = atob(getCookie("payHalf"));
    	if(phdata !=""){
    		 window.location.href = baseURL + '/register.jsp';
    	}else{
    		 window.location.href = baseURL + '/login.jsp';
    	} 
       
        return false;
    }
}
function parent_bannerSlider() {
    $('.cs-slider .slides').each(function() {
        var ctrlPrev = $(this).closest('.cs-slider').find('.prev');
        var ctrlNext = $(this).closest('.cs-slider').find('.next');
        var mobileMin = $(this).data('min');
        var mobileMax = $(this).data('max');
        $(this).carouFredSel({
            auto: {
                play: $(this).data('auto'),
                timeoutDuration: parseInt($(this).data('duration') + '000')
            },
            start: 'random',
            width: $(this).data('cs-width'),
            circular: $(this).data('cs-circular'),
            infinite: $(this).data('cs-infinite'),
            height: $(this).data('cs-height'),
            responsive: $(this).data('cs-responsive'),
            direction: $(this).data('cs-direction'),
            prev: ctrlPrev,
            next: ctrlNext,
            pagination: '.' + $(this).data('paginate'),
            scroll: {
                items: $(this).data('item-scroll'),
                fx: $(this).data('effects')
            },
            items: {
                height: $(this).data('item-height'),
                width: $(this).data('item-width'),
                visible: {
                    min: mobileMin,
                    max: mobileMax
                },
            },
            swipe: {
                onTouch: true,
                onMouse: true
            }
        });
    });
    
    var hedrdv = $(".header").height();
    $(".header_sib").css("height",hedrdv);
    $("#side-menu").css("top",hedrdv);
    
    var mnloc = window.location.href.match(/[^\/]+$/)[0];
    var mecheckName = mnloc.split(".");
    var  menreqName = "menu-main";
    var  carmreqName = "view-cart";

    if(menreqName == mecheckName[0]){
    	var menhedrdv = $(".proceedbtn-div").height();
    	$(".fix_proceed_hdr").css("height",menhedrdv);
    }
    
    if(carmreqName == mecheckName[0]){
	    if($(window).width()>1200){
			 var hedrdv = parseInt($(".header").height());
			 var fixschdr = parseInt($(".cart-steps").height());
			 var finhdrh =hedrdv+fixschdr;
			 if($('.alert.alert-info.notifyMe').is(':visible')){
				finhdrh =hedrdv+fixschdr+54;
			 }
			 
			 $('.cart-main-lt-sub-dv3').css({
					'position': 'fixed',
					'top': finhdrh,
					'z-index': '1'
			 });
			 
	    }
    }
    
        
}
function fnManageMenu() {
    try {
        var data = $.parseJSON(atob(getCookie("Indexed database")));
        /*new offer status*/
    	var unrdata = atob(getCookie("nwVisitor"));
    	if(unrdata !="cus"){
    		var nwVisitor = "reg";
    		setCookie("nwVisitor",btoa(nwVisitor),365*20);
    		sessionStorage.setItem('nwfrsessval', false);
    	}
        if (data != null && data.enable) {
            $(".log-out").show();
            $(".log-in").hide();
            $(".userName.log-out #uname").html(data.firstname);
        }
        var ucd = JSON.parse(atob(getCookie("UCD")));
        if (ucd.count > 0 && ucd.zipcode != null) {
            $("#weekly-menu").show();
            $("#weekly-menu").attr("href", "menu-main.jsp?uzc=" + ucd.zipcode);
        } else {
            $("#weekly-menu").hide();
        }
    } catch (e) {
        $("#weekly-menu").hide();
    }
}
function fnLogout() {
    var baseURL = $("#baseURL").val();
    var data = JSON.parse(atob(getCookie("Indexed database")));
    data['enable'] = false;
    data['isVisited'] = false;
    setCookie("Indexed database", btoa(JSON.stringify(data)), 365);
    setCookie("UCD", {}, 0);
    setCookie("GVUCD", {}, 0);
    setCookie('gvgetc', "", -1);
    setCookie("RDUCD", {}, 0);
    setCookie('LastUrl', "", -1);
    setCookie("RDSRCD", {}, 0);
    setCookie("UserReg", {}, 0);
    setCookie('payHalf',"", -1);
    setCookie('CASHBACKENROLL',{}, 0);
    clearAlldayscookies();
	setCookie("UCD1",{},0); 
	setCookie("UCD2",{},0); 
	setCookie("UCD3",{},0); 
	setCookie("UCD4",{},0); 
	setCookie("UCD5",{},0); 
	
	 try {
		setCookie("TGUCD", {}, 0);
		tgclearAlldayscookies();
		setCookie("TGUCD1",{},0); 
		setCookie("TGUCD2",{},0); 
		setCookie("TGUCD3",{},0); 
		setCookie("TGUCD4",{},0); 
		setCookie("TGUCD5",{},0); 
	 } catch (e) {
		 
	 }
    
    try {
        localStorage.removeItem("sessionPromo");
        localStorage.removeItem("sessionCheckbox");
        localStorage.removeItem("autoLogin");
        sessionStorage.removeItem("homeNav");
        localStorage.removeItem("select");
    } catch (e) {}
    window.location.replace(baseURL + '/index.jsp');
}

function checkifuserIsAlreadyLoggedin() {
	try {
		ckData = JSON.parse(atob(getCookie("Indexed database")));
		var enable = ckData.enable;
		var isvisited=ckData.isVisited;
		if (enable && isvisited ) {
	 			window.location.href="freefood.jsp";

		}
		else if(enable){
			fnredirect();
		}
		else {

		}
	} catch (e) {

	}

}
var getUrlParameter = function getUrlParameter(sParam) {
	var sPageURL = decodeURIComponent(window.location.search.substring(1)), sURLVariables = sPageURL.split('&'), sParameterName, i;

	for (i = 0; i < sURLVariables.length; i++) {
		sParameterName = sURLVariables[i].split('=');

		if (sParameterName[0] === sParam) {
			return sParameterName[1] === undefined ? true
					: sParameterName[1];
		}
	}
};

function clearAlldayscookies()
 {

	try {
		var savData = JSON.parse(atob(getCookie("UCD1")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("UCD1", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {
		savData = JSON.parse(atob(getCookie("UCD2")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("UCD2", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {
		savData = JSON.parse(atob(getCookie("UCD3")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("UCD3", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {

		savData = JSON.parse(atob(getCookie("UCD4")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("UCD4", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {

		savData = JSON.parse(atob(getCookie("UCD5")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("UCD5", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}

}


function tgclearAlldayscookies()
{

	try {
		var savData = JSON.parse(atob(getCookie("TGUCD1")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("TGUCD1", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {
		savData = JSON.parse(atob(getCookie("TGUCD2")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("TGUCD2", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {
		savData = JSON.parse(atob(getCookie("TGUCD3")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("TGUCD3", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {

		savData = JSON.parse(atob(getCookie("TGUCD4")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("TGUCD4", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}
	try {

		savData = JSON.parse(atob(getCookie("TGUCD5")));
		delete savData['dailyItem'];
		savData['count'] = 0;
		setCookie("TGUCD5", btoa(JSON.stringify(savData)), 1);
	} catch (e) {

	}

}





function getzipcodeentered() {
	var loc = window.location.href.match(/[^\/]+$/)[0];
	var checkName = loc.split(".");
	var  reqName = "index";
	var  mreqName = "mindex";
	var  reqNameSec = "index2";
	var zipcode = "";
	if(reqName == checkName[0] || mreqName == checkName[0] || reqNameSec == checkName[0]){
		 zipcode = $("#zipcodeenteredis").val();
	}else{
		
		
		var mzipcode="";
        mzipcode = $("#mzipcodeentered").val();
        if(mzipcode!=""){
        	zipcode = mzipcode;
        }else{
        	 zipcode = $("#zipcodeentered").val();
        }	
    }
	
	if (zipcode == "" || zipcode.length == 0) {
		Alert.render('Please enter zip code.');
		return false;

	} else if (zipcode.length != 5) {
		Alert.render('Zip code must be 5 digits.');
		return false;

	} else {
		
		var baseURL = $("#baseURL").val();
		
		try {
			var savData = JSON.parse(atob(getCookie("UCD")));
			var zipc = savData.zipcode;
			if (zipc != zipcode)
				{setCookie("UCD", btoa(JSON.stringify({})), 0); //to clear cookies of cart details
				clearAlldayscookies();
				setCookie("UCD1",{},0); 
				setCookie("UCD2",{},0); 
				setCookie("UCD3",{},0); 
				setCookie("UCD4",{},0); 
				setCookie("UCD5",{},0); 
				
				}
			$(".cartcountis").text(0);
			
		    
		} catch (e) {
			setCookie("UCD", btoa(JSON.stringify({})), 0);
			clearAlldayscookies();
			setCookie("UCD1",{},0); 
			setCookie("UCD2",{},0); 
			setCookie("UCD3",{},0); 
			setCookie("UCD4",{},0); 
			setCookie("UCD5",{},0); 
		    
		}

		jQuery.ajax({
			type : "GET",
			dataType : "json",
			async : false,
			url : baseURL + '/rest/zipcode/getzipcode/' + zipcode,
			success : function(data) {
				if (data.zipcode.length == 0) {
					noserviceZipUsertrack(zipcode);
					$("#wrong_zip_popup_hom").modal('show');
					
					return false;
				} else {
					
					window.location.href = baseURL + '/menu-main.jsp?uzc=' + zipcode;
				}
			}
		});

	}
}
$("#change-subscribe-email-top").on({
	  keydown: function(e) {
	    if (e.which === 32)
	      return false;
	  },
	  change: function() {
	    this.value = this.value.replace(/\s/g, "");
	  }
});


jQuery('.subscribe-btn-top').click(function(){
	
	var tpzipcode = $("#zipcodeenteredis").val();
	
	var email = $('#change-subscribe-email-top').val();
	email = email.replace(/\s/g, "");
	
	if(email !="PleaseEnteryourEmailAddress"){
		
		if(tpzipcode != "" && email != ""){
			if(isEmail(email)){
				
				var baseURL = $("#baseURL").val();
				var zipcode = tpzipcode;
				var inputData = '{"emailId":"'+ email +'","zipcode":"'+ zipcode +'"}';
				
				$.ajax({
					type: "POST",
					contentType: "application/json",
					dataType: "json", 
					async:false,
					url: baseURL+"/rest/noservicearea",
					data : inputData,
					success: function(data){
						
						$("#wrong_zip_popup_hom").modal('hide');
						
						$('[data-toggle=popover13]').popover('hide');
						
						$('[data-toggle=popover12]').popover('hide');

						$("#zipcodeenteredis").val("");
						
						$('#change-subscribe-email-top').val("");
						
						Alert.render(data.message);
					}, 
					error: function(data) {
		    			Alert.render(data.responseJSON.errorMessage);
		    			return false;
					}
				});
			
			}else{
				Alert.render('Please enter valid email id.');
				return false;
			}
		}else{
			Alert.render('Please enter email id.');
			return false;
		}
		
	}else{
		Alert.render('Please enter email id.');
		return false;
	}
	
	
}); 


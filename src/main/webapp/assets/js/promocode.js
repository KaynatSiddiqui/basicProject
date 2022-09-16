//promocode Add Service

function createPromocode(){
$("#promoadd").addClass('disablelink').removeClass('activatelink');

	//var promocodetype = $("#promocodetype").val();
	var constant    = $("#constant").val();
	var discount   = $("#discount").val();
	//var email     = $("#emailId").val();
	var issuedate = $("#issuedate").val();
	var enddate = $("#enddate").val();
	var promocode =$("#promocodee").val();
	var purpose = $("#purpose").val();
	var singleormultiple = $("#singleormultiple").val();
	var status    = $("#status").val();
	var offerprice = $("#isofferprice").val();
	/* if(promocodetype === "" || promocodetype ==="---Select---"){
		 alert("Enter promocodetype");
		 return false;
	 }*/
	 if(constant === "" || constant ==="---Select---"){
		 alert("Enter Discount Type");
		 return false;
	 }
	/* if(email === "" ){
		 alert("Enter emailId");
		 return false;
	 }*/
	 if(issuedate === ""){
		 alert("Enter Issue Date");
		 return false;
	 }
	 if(enddate === ""){
		 alert("Enter End Date");
		 return false;
	 }
	if(promocode === ""){
		 alert("Enter promocode");
		 return false;
	 }
	 if(purpose === ""){
		 alert("Enter purpose");
		 return false;
	 }
	 if(singleormultiple === ""){
		 alert("Select single or multiple");
		 return false;
	 }
	 if(status === ""){
		 alert("Select status");
		 return false;
	 }
	 if(offerprice === ""){
		 alert("Select  Offerprice");
		 return false;
	 }
	var inputdata = {
	    "advertisementMethod"	:"",
	 //   "category"              :promocodetype,
		"constant"              :constant,
		"createdby"              : "admin",
		"discount"               :discount,
	//	"emailid"                :email,
		//"discounteligibleamt"     :"",
	    "end_date"                :enddate,
		"issue_date"              :issuedate,
		//"media"                   : "",
	   // "orderid"                 : "",
		"promocode"               : promocode,
		"purpose"                 : purpose,
		"single_multiple"         : singleormultiple,
		"status"                  : status,
		"toOfferProce"            :offerprice
		//"subcategory"             : "",
		//"success_msg"             : "",
		//"targetedAudience"        : ""
		
		
	
	};
	
	var requestData = JSON.stringify(inputdata);
	
	$.ajax({
		url:  base_url+'rest/promocode/promocodeCreate',
		type:"POST",
		 dataType: "json",
		  contentType: 'application/json',
		  data:requestData,
	      success: function(data){
	    	  alert(data.message);
			 window.location = base_url+"jsp/admin/promocode/promocode.jsp";

	      },
	      error:function(data){
	    	  alert(data.responseJSON.errorMessage);
	      }
		
	});
	}
	

//get All Promocodes

function getAllPromocodes(){
	
	var appenddata;
	$.ajax({
		type: "GET",
		  dataType: "json",
		  contentType: 'application/json', 
		 url: base_url+'rest/promocode/getpromocodes',
		 beforeSend: function(){
			 $("#promocode-tbody").empty();
			 $("#promocode-tbody").html('<tr><td class="center" colspan="14"><img src="'+base_url+'assets/images/students/spinner2.gif" width="100" height="100"></td></tr>');
		 },
		  success: function(data){
			  $("#loading").hide();
			  var yes = "YES";
			  var no  = "No";
			  
			  var promocodelist = data.promocodes;
			  for(var i=0; i < promocodelist.length; i++){
			  appenddata += "<tr id='promo_row"+promocodelist[i].id+"'><td>"+promocodelist[i].id+"</td>";    
			//  appenddata += "<td>"+promocodelist[i].category+"</td>"; 
			  appenddata += "<td>"+promocodelist[i].discounttype+"</td>"; 
			  appenddata += "<td>"+promocodelist[i].promocode+"</td>";
			  appenddata += "<td>"+promocodelist[i].purpose+"</td>";
			  appenddata += "<td>"+promocodelist[i].discount+"</td>";
			  appenddata += "<td>"+promocodelist[i].issue_date+"</td>";
			  appenddata += "<td>"+promocodelist[i].end_date+"</td>";
			  if(promocodelist[i].isofferprice === true){
				  appenddata += "<td>"+yes+"</td>";
			  }else{
				  appenddata += "<td>"+no+"</td>";
			  }
			  appenddata += "<td>"+promocodelist[i].single_multiple+"</td>";  
			 
			  appenddata += "<td>"+promocodelist[i].status+"</td>";
			  appenddata += "<td>"+promocodelist[i].insertedDate+"</td>";
			  appenddata += "<td>"+promocodelist[i].updatedDate+"</td>";
			  appenddata +="<td><a href='promocodeEdit.jsp?id="+promocodelist[i].id +"' class='btn btn-edit btn-icon-anim btn-circle mr-10' data-toggle='tooltip' data-id='"+promocodelist[i].id+"' data-original-title='Edit'>" +
		  		"<i class='fa fa-edit font-18 mt-10'></i></a><a href='#' class='btn btn-delete btn-icon-anim btn-circle p-10' id='promocode_item"+promocodelist[i].id+"' data-id='"+promocodelist[i].id+"' data-toggle='tooltip' data-original-title='Delete'>" +
					"<i class='icon-trash font-18'></i></a></td>";
			  
			
			  }
			  $("#promocode-tbody").empty();
			  $('#promocode-table').DataTable().clear().destroy();
			  $("#promocode-tbody").append(appenddata);
			  $("#promocode-table").DataTable();
		  },
		  error: function(data) {		
			  $("#promocode_tbody").html('<tr><td class="center" colspan="14">Promocodes not found!</td></tr>');
			  
			  //alert("Categories not found!");

		  }
		 
	    	
	});
}

	function getPromocodeDetailsById(){
		
		var prmocodeId = getParameterByName('id');
		$.ajax({
			type: "GET",
			  dataType: "json",
			  contentType: 'application/json', 
			 url: base_url+'rest/promocode/getpromocodes/'+prmocodeId,
			  success: function(data){
				  $("#loading").hide();
				  var promocodelist = data.promocodes;
				//  $("#category option[value='"+promocodelist.category+"']").attr('selected',true);
			//	  $("#category").append('<option value="'+data[0].categoryId+'">'+data[0].categoryname+'</option>');
				//  $("#category").val(promocodelist[0].category);  
				  $("#constant option[value='"+promocodelist.constant+"']").attr('selected',true);
				  $("#discount").val(promocodelist.discount);
				  $("#issuedate").val(promocodelist.issue_date);
				  $("#enddate").val(promocodelist.end_date);
				  $("#promocodee").val(promocodelist.promocode);
				  $("#purpose").val(promocodelist.purpose);
				  
				  $("#singleormultiple option[value='"+promocodelist.single_multiple+"']").attr('selected',true);
				  $("#isofferprice option[value='"+promocodelist.isofferprice+"']").attr('selected',true);
				  $("#status option[value='"+promocodelist.status+"']").attr('selected',true);
				  
	},
	error: function(data){
		 alert(data.responseJSON.errorMessage);
	}
	
});
	}
	
	function editPromocode(){
		$("#promoadd").addClass('disablelink').removeClass('activatelink');
		var prmocodeId = getParameterByName('id');
		
	//	var promocodetype = $("#category").val();
		var discounttype = $("#constant").val();
		var discount   = $("#discount").val();
		var issuedate   = $("#issuedate").val();
		var enddate   = $("#enddate").val();
		var promocode   = $("#promocodee").val();
		var purpose   = $("#purpose").val();
		var singleormultiple   = $("#singleormultiple").val();
		var isofferprice   = $("#isofferprice").val();
		var status   = $("#status").val();
		
		
		/*if(promocodetype === "" || promocodetype ==="---Select---"){
			 alert("Enter promocodetype");
			 return false;
		 }*/
		 if(discounttype === "" || discounttype ==="---Select---"){
			 alert("Enter Discount Type");
			 return false;
		 }
		 
		 if(issuedate === ""){
			 alert("Enter Issue Date");
			 return false;
		 }
		 if(enddate === ""){
			 alert("Enter End Date");
			 return false;
		 }
		if(promocode === ""){
			 alert("Enter promocode");
			 return false;
		 }
		 if(purpose === ""){
			 alert("Enter purpose");
			 return false;
		 }
		 if(singleormultiple === ""){
			 alert("Select single or multiple");
			 return false;
		 }
		 if(status === ""){
			 alert("Select status");
			 return false;
		 }
		 if(isofferprice === ""){
			 alert("Select  Offerprice");
			 return false;
		 }
		 
		 
		 var requestData ={
				
						"deletestatus":true,
						"updatedBy":"admin",
						"status":status,
						"issue_date":issuedate,
						"end_date":enddate,
						"single_multiple":singleormultiple,
						"purpose":purpose,
					//	"category":promocodetype,
						"toOfferProce":isofferprice,
						"constant":discounttype,
						"id":prmocodeId,
						"promocode":promocode,
						"discount":discount
						
						
					
		 };
		 var inputData = JSON.stringify(requestData);
		 $.ajax({
				url:  base_url+'rest/promocode/updatePromocode',
				type:"POST",
				 dataType: "json",
				  contentType: 'application/json',
				  data:inputData,
			      success: function(data){
			    	  alert(data.message);
					 window.location = base_url+"jsp/admin/promocode/promocode.jsp";

			      },
			      error:function(data){
			    	  alert(data.responseJSON.errorMessage);
			      }
				
			}); 
		 
		 
	}
	
	//Delete Promocode 
	
	$(document).on('click', "a[id^=promocode_item]", function(){
		var id = $(this).attr("data-id");
		var con = confirm("Are you Sure to delete?")
		if(con == true){
			deletePromocode(id);
		}
	});

	function deletePromocode(id){
		var status = false;
		
		$.ajax({
			url:  base_url+'rest/promocode/deletepromocode/'+id,
			type:"GET",
			 dataType: "json",
			  contentType: 'application/json',
		      success: function(data){
		    	  alert(data.message);
		    	  $("#promo_row"+id).remove();
		    	  location.reload();
		      },
		      error:function(data){
		    	  alert(data.responseJSON.errorMessage);
		    	
		      }
			
		})
		
	}

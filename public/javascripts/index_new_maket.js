var IE6 = ie6();

$(document).ready(function(){


	$("div#center_content_om img[alt='Close']").live('click',function(){
		hide_smoke();
		hide_content_window();
	});



$("input#seekbar").autocomplete(data);
	
	$("input#seekbar").click(function(){
		$(this).select();
	}).submit(function(){
		return false;
	});
	
	
	$('input#seekbar').result(function(event, data, formatted) {
	
		var off = $(this).offset();
		$('div#center_content_om').css('left',off.left)
		
		var path_end = '/products/'+o[formatted]+'?no_back=yes';
		var offset = $(this).offset();
		
		show_loading(offset.top+3,offset.left+110);

 		$.ajax({
				 type: "GET",
				 url: path_end,
				 success: function(msg){
					hide_loading();
					$('div#center_content_om').html(msg);
					start_to_center(msg,$('input#seekbar'),'500')
				 },
				 error: function(){
					alert('error');
				 }
			})
	}) 
	
	
	

if($.browser.safari){
	webkid_box_shadow($("div#big_center"));
	webkid_box_shadow($("div#lc_mp"));
	webkid_box_shadow($("div#rc_mp"));
	webkid_box_shadow($("div#content_big"));
	webkid_box_shadow($("div.white_r_block"));
}
if($.browser.mozilla){
	gecko_box_shadow($("div#big_center"));
	gecko_box_shadow($("div#lc_mp"));
	gecko_box_shadow($("div#rc_mp"));
	gecko_box_shadow($("div#content_big"));
	gecko_box_shadow($("div.white_r_block"));
}

//
 
/* 		
	if($.browser.safari){
		webkid_box_shadow($("div#big_center"));
		webkid_box_shadow($("div#lc_mp"));
		webkid_box_shadow($("div#rc_mp"));
		webkid_box_shadow($("div#content_big"));
		webkid_box_shadow($("div.white_r_block"));
	}else if(!$.browser.opera){
		$("div#big_center").dropShadow();
		// $("div#lc_mp").dropShadow();
		// $("div#rc_mp").dropShadow();
		// $("div#content_big").dropShadow();
		// $("div.white_r_block").dropShadow();
	}else if($.browser.opera){ //opera
		//~ $("div#content_big").dropShadow();
		//~ $("div.white_r_block").dropShadow();
	} */

	
	if(IE6){
		$('div#content_big2').width('630px');
		$('div#rc_mp').width('400px');
		$('div#lc_mp').width('210px');
		$('div#right_col_big').css('margin-right','0px');

		$("div#big_center").addClass('ie6shadow');
		$("div#lc_mp").addClass('ie6shadow');
		$("div#rc_mp").addClass('ie6shadow');
		$("div#content_big").addClass('ie6shadow');
		$("div.white_r_block").addClass('ie6shadow');
		
		
		//		$('div#content_big').css('width','70%');
		/* $('div#content_big').css('margin','0 0 0 .3em');
		$('div#content_big').css('width','70%');
		$('div#right_col_big').css('margin',"0 5px 0 0"); */

	}
 

	
	if($.browser.opera){
		$('div#content_wrap').css('position','absolute');
		list_to_shadow();
	}
	
	if($.browser.msie && $.browser.version!='6.0') list_to_shadow();


	if($('div#content_big') && $('div#content_big').height()<600){
		$('div#content_big').height('600px')
	}
	if($('div#content_big2') && $('div#content_big2').height()<600){
		$('div#content_big2').height('600px')
	}




})


function list_to_shadow(){
	$("div#big_center").dropShadow();
	$("div#lc_mp").dropShadow();
	$("div#rc_mp").dropShadow();
	$("div#content_big").dropShadow();
	$("div.white_r_block").dropShadow();
}

function webkid_box_shadow(obj){ // тень для движка webkid
	$(obj).css('-webkit-box-shadow','2px 2px 10px #666'); 
}

function gecko_box_shadow(obj){ // тень для движка webkid
	$(obj).css('-moz-box-shadow','2px 2px 10px #666'); 
}


function ie6(){
	if($.browser.msie){
		if($.browser.version=="6.0"){
			return true;	
		}	
	}
}



function hide_loading(){
	$('div#loading').hide();
}
function show_loading(x,y){
	var cssLoading = {
		top: x,
		left: y
	}
	$('div#loading').css(cssLoading).show();
}

function start_to_center(msg1,obj,speed){
	var os = $(obj).offset();
	var os_div = $(obj).offset();
	
	
		var os_cb2 =  $('div#big_center').offset();
		var os_comp =  $('div#big_center').offset();
	 
	
	
				
	var cssObj = {
		top: os.top,
		left: os_div.left,
		width: '170px',
		height: '10px'
	}
			
	$('div#center_content_om').css(cssObj)
	.animate({ 
		width: '550px',
		top:'252px',
		left: os_cb2.left+25
	}, speed, function(){
	
		show_smoke();
		$('div#center_content_om').html(msg1).css('height','auto');
	} );
}

function show_smoke(){
	
  var cssObj = {
		width: $(document).width(),
		height: $(document).height(),
		display:'block',
		opacity:.3
  }  
	
	
/* 	$('div#smoke').animate({
		opacity: 0.2,
		width: $(document).width(),
		height: $(document).height(),
		},500) */
	
	
	$('div#smoke').css(cssObj);
}

function hide_smoke(){
	$('div#smoke').fadeTo('slow','0',function(){ $(this).hide()});
}

function show_full_product(obj,pathname){

 

    	var path_end = '/products/'+pathname.replace('|',"'");

  	var path = '/products/'+path_end;
	
	var offset = $(obj).offset();
	
	show_loading(offset.top,offset.left-15)
	$('div#loading').css('z-index',$('div#center_content_om').css('z-index')+1);
	
		$.ajax({
			 type: "GET",
			 url: path_end,
			 success: function(msg){
				hide_loading();
				
				
				$('div#center_content_om').show().html(msg);
				
				start_to_center(msg,obj,100);
				
				if($(obj).attr('id')=='seekbar'){
					start_to_center(o[formatted],$('input#seekbar'),'500')
				}
				
			 }
		})    
	
	
	 

}

function hide_content_window(){
	$('div#center_content_om').slideUp('fast')
}
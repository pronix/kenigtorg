var IE6 = ie6();

$(document).ready(function(){



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
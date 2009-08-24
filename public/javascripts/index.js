 NEWS = '';
 CONTACTS = '';
 MAIN = '';
 ABOUT_US = '';
 LINKS = '';
 DG_l1 = '';
 SCHOOL = '';
 HIGHSCHOOL = '';
BACK = '';

$(document).ready(function(){
	 
	
	$('div.cat2level').live('click',function(){
		var desc = $(this).next();
		var desc_t = $(desc).text();
		
		//alert(desc_t.length)
		
		if(desc_t.length>7){
			$(desc).toggle();
		}else{
			$(this).removeClass('link')
		}
		
	})
	
$('div#smoke').live('click',function(){
	hide_smoke();
	hide_content_window();
})
	
	
	
	$("div#center_content_om img[alt='Close']").live('click',function(){
	
		hide_smoke();
		hide_content_window();
	})
	
	
	
	$('span.link.top_nav').each(function(){
		var parent_div = $(this).parent().attr('class').replace('h_','');
		
		$(this).click(function(){
			show_content_inside(parent_div);
		})
	
	});
	
	$('ul#mainnav li').each(function(){
		/* var parent_div = $(this).parent().attr('class').replace('h_','');
		
		$(this).click(function(){
			show_content_inside(parent_div);
		}) */
		
		
		
		$(this).click(function(){
			//show_content_inside(parent_div);
			var v = $(this).text()
	
			
			switch(v){
				case 'ГЛАВНАЯ':
					a_show_main();
				break;				
				case 'О КОМПАНИИ':
					a_show_about();
				break;
				case 'НОВОСТИ':
					a_show_news();
				break;
				case 'КОНТАКТЫ':
					a_show_contacts();
				break;
				/* case 'ПОЛЕЗНЫЕ ССЫЛКИ':
				break; */
				case 'ПОЛЕЗНЫЕ ССЫЛКИ':
					a_show_links();
				break;
			
			}
		})
	
	});
	
 


})

function hide_content_window(){

	$('div#center_content_om').slideUp('fast')
}

function hide_loading(){
	$('div#loading').hide();
}
function show_loading(x,y){
		var cssLoading = {
			top: x,
			left: y,
		}
		$('div#loading').css(cssLoading).show();
}



function show_content_window(obj){

	var os = $(obj).offset();
	var os_div = $('div.d_sad').offset();
	var os_cb2 =  $('div.cb2').offset();
	var os_comp =  $('div.comp').offset(); 
	
	var cssLoading = {
		top: os.top,
		left: os_div.left -5,
	}
		

 	switch($(obj).html()){
		case "Оборудование для дет.сада":
 
			show_loading(os.top,os_div.left-5);
			

			if(!DG_l1){
				$.ajax({
					 type: "GET",
					 url: "/t/group/oborudovaniie-dlia-dietskogho-sada/",
					 success: function(msg){
						//~ $('div.m_content4').html(msg);
						check_content_height();
						$('div.l_cont div.comp').text('Оборудование для детского сада');
						start_to_center(msg,obj,800);
						DG_l1 = msg;
						
						$('div#loading').hide();
					 }
				})
			}else{
					check_content_height();
					$('div.l_cont div.comp').text('Оборудование для детского сада');
					start_to_center(DG_l1,obj,500);
					$('div#loading').hide();
					show_smoke();
			}

		break;
		case "Оборудование для школ":
 
			
			show_loading(os.top,os_div.left-5);
			

			if(!SCHOOL){
				$.ajax({
					 type: "GET",
					 url: "/t/group/oborudovaniie-dlia-shkoly/",
					 success: function(msg){
						//~ $('div.m_content4').html(msg);
						check_content_height();
						$('div.l_cont div.comp').text('Оборудование для школы');
						start_to_center(msg,obj,800);
						SCHOOL = msg;
						
						$('div#loading').hide();
					 }
				})
			}else{
					check_content_height();
					$('div.l_cont div.comp').text('Оборудование для школы');
					start_to_center(SCHOOL,obj,500);
					$('div#loading').hide();
					show_smoke();
			}
			


			
		break;
		case "Оборудование для ВУЗов":
 
			
			show_loading(os.top,os_div.left-5);
			

			if(!HIGHSCHOOL){
				$.ajax({
					 type: "GET",
					 url: "/t/group/oborudovaniie-dlia-vuza-i-ptu/",
					 success: function(msg){
						//~ $('div.m_content4').html(msg);
						check_content_height();
						$('div.l_cont div.comp').text('Оборудование для ВУЗа и ПТУ');
						start_to_center(msg,obj,800);
						HIGHSCHOOL = msg;
						
						$('div#loading').hide();
					 }
				})
			}else{
					check_content_height();
					$('div.l_cont div.comp').text('Оборудование для ВУЗа и ПТУ');
					start_to_center(HIGHSCHOOL,obj,500);
					$('div#loading').hide();
					show_smoke();
			}
			


			
		break;
		
	} 


}





function start_to_center(msg1,obj,speed){
var os = $(obj).offset();
var os_div = $('div.d_sad').offset();
var os_cb2 =  $('div.cb2').offset();
var os_comp =  $('div.comp').offset();
			
	var cssObj = {
		top: os.top,
		left: os_div.left,
		width: '170px',
		height: '10px',
	}
			
	$('div#center_content_om').css(cssObj)
	.animate({ 
		width: $('div.m_content4').width()-40,
		top:os_comp.top+30,
		left: parseInt(os_cb2.left+13)+'px',
	}, speed,function(){
	
		show_smoke();
		$('div#center_content_om').html(msg1).css('height','auto');
		
	
		//~ var loading = "<img src='/images/loading.gif' width='30' height = '30' align='absmiddle'  />";
		//~ $(this).html(loading)
	} );
}






function hide_smoke(){
	$('div#smoke').fadeTo('slow','0',function(){ $(this).hide()});
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



function a_show_news(){
	if(!NEWS){
					$.ajax({
							url: "index/news",
							success: function(msg){
							$('div.m_content4').html(msg);
							NEWS = msg;
							check_content_height();
							}
					})
				}else{
					$('div.m_content4').html(NEWS);
				}
				
				$('div.comp').text('НОВОСТИ')
				check_content_height();
		
	}
function a_show_about(){
	if(!ABOUT_US){
		$.ajax({
				url: "index/about_us",
				success: function(msg){
				$('div.m_content4').html(msg);
				ABOUT_US = msg;
				check_content_height();
				}
		})
	}else{
		$('div.m_content4').html(ABOUT_US);
	}


$('div.comp').text('О КОМПАНИИ')
check_content_height();

}

function a_show_links(){
	if(!LINKS){
				$.ajax({
					  url: "index/links",
					  success: function(msg){
						$('div.m_content4').html(msg);
						LINKS = msg;
						check_content_height();
					  }
				})
			}else{
				$('div.m_content4').html(LINKS);
			}
			
			
			$('div.comp').text('ПОЛЕЗНЫЕ ССЫЛКИ')
			check_content_height();
}

function a_show_contacts(){
			if(!CONTACTS){
				$.ajax({
					  url: "index/contacts",
					  success: function(msg){
						$('div.m_content4').html(msg);
						CONTACTS = msg;
						check_content_height();
					  }
				})
			}else{
				$('div.m_content4').html(CONTACTS);
			}
			
			
			$('div.comp').text('КОНТАКТЫ')
			check_content_height();
}

function a_show_main(){
			if(!MAIN){
				$.ajax({
					  url: "index/main",
					  success: function(msg){
						$('div.m_content4').html(msg);
						MAIN = msg;
						check_content_height();
					  }
				})
			}else{
				$('div.m_content4').html(MAIN);
			}
			
			$('div.comp').text('ГЛАВНАЯ')
			check_content_height();
}







function show_content_inside(str){
	//alert(str)
	
	function remove_all_seleted_but(obj){
		$('span.link.top_nav').each(function(){
			if($(this).hasClass('selected')){
				$(this).removeClass('selected');
			}
		})
		
		$(obj).addClass('selected');
	}
	
	switch(str){
		case 'contacts':
			remove_all_seleted_but($('div.h_contacts span.link.top_nav'));
			a_show_contacts();
		break;
		case 'company':
			remove_all_seleted_but($('div.h_company span.link.top_nav'));
			a_show_about();
		break;
		 case 'hrefs':
			remove_all_seleted_but($('div.h_hrefs span.link.top_nav'));
			a_show_links();
		break;
		  case 'main':
			remove_all_seleted_but($('div.h_main span.link.top_nav'));
			a_show_main();
		break;
		case 'news':
			remove_all_seleted_but($('div.h_news span.link.top_nav'));
			a_show_news();
		break;
		 
	}
}


function check_content_height(){
	var h = $('div.m_content4').height();
	if(h<500){
		$('div.m_content4').height('600px');
	}
}


function show_full_product(obj,pathname){

 

  	var path_end = '/products/'+pathname.replace('|',"'");
		
		 
	
  	var path = '/products/'+path_end;
	
	var offset = $(obj).offset();
	
	show_loading(offset.top,offset.left-15)
	$('div#loading').css('z-index',$('div#center_content_om').css('z-index')+1);
	
	  BACK = $('div#center_content_om').html();
		$.ajax({
			 type: "GET",
			 url: path_end,
			 success: function(msg){
				hide_loading();
				
				
				$('div#center_content_om').html(msg);
			 }
		})  
	
	
	 

}

function show_content(str){
	//~ var url = "index/"+str;
	
	 //~ $.ajax({
	   //~ type: "GET",
	   //~ url: url,
	   //~ //data: "name=John&location=Boston",
	  
	  
	  //~ success: function(msg){
		//~ //alert( "Data Saved: " + msg );
		//~ $('div.m_content4').fadeTo('.5','slow').html(msg);
		//~ check_content_height()
	   //~ }
	 //~ });
	 
	 
	
	
	    /*  $('div.m_content4').animate({ 
		height: "1%",
		opacity: 0.2,
	      }, 500 ); */
	    alert(CONTACTS);
	 
	 
}
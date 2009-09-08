module MainHelper
	def gen_title_from_action_array act
			
			a = Hash.new
			ss = 'Оборудование для'
			a['kindergarden'] = ss+' детского сада'
			a['school'] = ss+' школы'
			a['hschool'] = ss+' ВУЗов и ПТУ'
			a['about_us'] = 'О НАС'
			a['contacts'] = 'КОНТАКТЫ'
			a['links'] = 'ПОЛЕЗНЫЕ ССЫЛКИ'
			 
		
			
			return a[act]
			
			
	end

	def content_show a
		
		
		
		
		
		
		 
		
		
		if a=='kindergarden'
			str ="<div class='list_part'>"+image_tag('kg_1.jpg')+link_to('Медицинский кабинет','#')+"</div>"
			str +="<div class='list_part'>"+image_tag('kg_2.jpg')+link_to('Информационные стенды','#')+"</div>"
			str +="<div class='list_part'>"+image_tag('kg_3.jpg')+link_to('Мебель','#')+"</div>"
			str +="<div class='list_part'>"+image_tag('kg_4.jpg')+link_to('Спортивно-игровое оборудование','#')+"</div>"
			str +="<div class='list_part'>"+image_tag('kg_5.jpg')+link_to('Сенсорная комната','#')+"</div>"
			
				
			
		else
			str = BlogEntry.find_by_title(a).body	
		end
		
		
		return str
		
	end
end

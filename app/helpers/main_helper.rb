# encoding: utf-8
module MainHelper
	def gen_title_from_action_array act
			
			a = Hash.new
			ss = 'Оборудование для'
			a['kindergarden'] = ss+' детского сада'
			a['school'] = ss+' школы'
			a['highschool'] = ss+' ВУЗов и ПТУ'
			a['about_us'] = 'О НАС'
			a['contacts'] = 'КОНТАКТЫ'
			a['links'] = 'ПОЛЕЗНЫЕ ССЫЛКИ'
			a['news'] = 'НОВОСТИ'
			a['app'] = 'ЗАЯВКА'
			a['search'] = 'Результат поиска'
			 
		
			
			return a[act]
			
			
	end
		
	def link2_to str, cntr
		path = "/t/group/"+cntr+"/"+str.to_url+"/"
		
		return link_to(str,path,:class=>'mainlink')
		
		
	end
	
	def search_result
			str='<ol>'
			for r in @result
				str+="<li>"+link_to(r.name,'/products/'+r.permalink)+"</li>"
			end	
			return str+'</ol>'
	end	
	
	def edit_link s,text
		#~ user = RoleUser.find(:first,:conditions=>["user_id LIKE ?",session['user_credentials_id']])
		#~ user = RoleUser.find(:all)
		
		#~ if(isadmin?)
			str=''
			if BlogEntry.find_by_title(s)
				b = BlogEntry.find_by_title(s).id
				str = link_to(text,"/admin/blog_entries/"+b.to_s+"/edit")
			end
		#~ end
		
		
		
		#~ db = SQlite::Database.new('db/development.sqlite3')
		#~ session['user_credentials_id'])
		#~ str = debug(user)
		 return "<div>"+str+"</div>"
	end
	
	

	def content_show a
		str=''
			
		case a
			when 'kindergarden'
				c = 'oborudovaniie-dlia-dietskogho-sada'
				str ="<div class='list_part'>"+image_tag('kg_1.jpg')+link2_to('Медицинский кабинет',c)+"</div>"
				str +="<div class='list_part'>"+image_tag('kg_2.jpg')+link2_to('Информационные стенды',c)+"</div>"
				str +="<div class='list_part'>"+image_tag('kg_3.jpg')+link2_to('Мебель',c)+"</div>"
				str +="<div class='list_part'>"+image_tag('kg_4.jpg')+link2_to('Спортивно-игровое оборудование',c)+"</div>"
				str +="<div class='list_part'>"+image_tag('kg_5.jpg')+link2_to('Сенсорная комната',c)+"</div>"
			when 'school'
			c = 'oborudovaniie-dlia-shkoly'
				str+="<div id='lcsh'>"
				str+="<div class='list_part2'>"+image_tag('ktg_1.jpg')+link2_to('Кабинет Математики',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_2.jpg')+link2_to('Кабинет Физики',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_3.jpg')+link2_to('Кабинет Истории',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_4.jpg')+link2_to('Кабинет Биологии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_5.jpg')+link2_to('Кабинет Географии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_6.jpg')+link2_to('Кабинет Химии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_7.jpg')+link2_to('Кабинет Информатики',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_8.jpg')+link2_to('Кабинет Астрономии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_9.jpg')+link2_to('Русс-го языка и Литературы',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_10.jpg')+link2_to('Кабинет Иностранного языка',c)+"</div>"
				str+="</div><div id='rcsh'>"
				
				str+="<div class='list_part2'>"+image_tag('ktg_11.jpg')+link2_to('Кабинет Труда',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_12.jpg')+link2_to('Кабинет Музыки',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_13.jpg')+link2_to('Кабинет ОБЖ',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_14.jpg')+link2_to('Кабинет Начальной школы',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_15.jpg')+link2_to('Кабинет Медицинский',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_16.jpg')+link2_to('Автокласс',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_17.jpg')+link2_to('Столовая',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_18.jpg')+link2_to('Гардероб',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_19.jpg')+link2_to('Школьная мебель',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_20.jpg')+link2_to('Спортивное оборудование',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_21.jpg')+link2_to('Специальное оборудование',c)+"</div>"
				str+='</div>'
			when 'highschool'
			c = 'oborudovaniie-dlia-vuza-i-ptu'
				str+="<div id='lcsh'>"
				str+="<div class='list_part2'>"+image_tag('ktg_1.jpg')+link2_to('Кабинет Математики',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_2.jpg')+link2_to('Кабинет Физики',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_3.jpg')+link2_to('Кабинет Истории',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_4.jpg')+link2_to('Кабинет Биологии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_5.jpg')+link2_to('Кабинет Географии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_6.jpg')+link2_to('Кабинет Химии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_7.jpg')+link2_to('Кабинет Информатики',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_8.jpg')+link2_to('Кабинет Астрономии',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_9.jpg')+link2_to('Русс-го языка и Литературы',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_10.jpg')+link2_to('Кабинет Иностранного языка',c)+"</div>"
				str+="</div><div id='rcsh'>"
				
				str+="<div class='list_part2'>"+image_tag('ktg_11.jpg')+link2_to('Кабинет Труда',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_12.jpg')+link2_to('Кабинет Музыки',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_13.jpg')+link2_to('Кабинет ОБЖ',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_14.jpg')+link2_to('Кабинет Начальной школы',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_15.jpg')+link2_to('Кабинет Медицинский',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_16.jpg')+link2_to('Автокласс',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_17.jpg')+link2_to('Столовая',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_18.jpg')+link2_to('Гардероб',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_19.jpg')+link2_to('Школьная мебель',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_20.jpg')+link2_to('Спортивное оборудование',c)+"</div>"
				str+="<div class='list_part2'>"+image_tag('ktg_21.jpg')+link2_to('Специальное оборудование',c)+"</div>"
				str+='</div>'
			else
				str = BlogEntry.find_by_title(a).body	
				
					if isadmin? 
						str+= edit_link(controller.action_name,'Править раздел>>');
						#~ str+=isa();
					end
			end
		
 
		
	 
		
		
		return str
		
	end
	
	
def show_news flag
		
		if(flag!='on_page')
			news = BlogEntry.find(:all,:conditions=>["author NOT LIKE ?",'admin'],:limit=>flag.to_i)		
			
				
				
				
		else
			news = BlogEntry.find(:all,:conditions=>["author NOT LIKE ?",'admin'])		
			
			

			


		end
		
		
		str=''
				for n in news
					str+="<div class='title_news'>"+n.updated_at.strftime("%d.%m.%y")+"<br />"
					str+=n.title+"</div>"
					str+="<p id='news'>"+n.body+"</p>"
				end
		
		str+="<div>"+link_to('Архив новостей >>',:controller=>'main',:action=>'news')+"</div>"	if flag!='on_page'
		
		return str
		
	end



def isa
		
		sql = "select roles.name
				from users

				join roles_users
				on users.id = roles_users.user_id

				join roles
				on roles.id = roles_users.role_id  WHERE roles_users.user_id LIKE '#{session['user_credentials_id']}'
				AND roles.name LIKE 'admin'	LIMIT 1"
		u = User.find_by_sql(sql)
		
		return debug u
end	
	
def isadmin?
		
		sql = "select roles.name
				from users

				join roles_users
				on users.id = roles_users.user_id

				join roles
				on roles.id = roles_users.role_id  WHERE roles_users.user_id LIKE '#{session['user_credentials_id']}'
				AND roles.name LIKE 'admin'	LIMIT 1"
		u = User.find_by_sql(sql)
		
		if(!u.blank?)
			return true
		else
			return false
		end
end

end

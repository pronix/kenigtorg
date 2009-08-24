module IndexHelper
	
	def show_content target
		a = BlogEntry.scoped_by_author('admin').scoped_by_title(target)
		
		str=''
		for n in a
			str+=n.body
		end
		
		return str
	end
	
	
	def show_news flag
		
		
		
		if(flag!='on_page')
			news = BlogEntry.find(:all,:conditions=>["author NOT LIKE ?",'admin'],:limit=>1)		
				
				
				
				
		else
			news = BlogEntry.find(:all,:conditions=>["author NOT LIKE ?",'admin'])		
				
		end
		
		
		str=''
				for n in news
					str+="<div class='title_news'>"+n.updated_at.strftime("%d.%m.%y")+"<br />"
					str+=n.title+"</div>"
					str+="<p id='news'>"+n.body+"</p>"
				end
		
		
		
		return str
		
	end
	
	
	
end

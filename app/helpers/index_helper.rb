module IndexHelper
#~ require 'sqlite3-ruby'

	def show_content target
		a = BlogEntry.scoped_by_author('admin').scoped_by_title(target)
		
		str=''
		for n in a
			str+=n.body
		end
		
		return str
	end
	
	def show_content_by_id target
		a = BlogEntry.scoped_by_author('admin').scoped_by_id(target)
		
		str=''
		for n in a
			str+=n.body
		end
		
		return str
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
		 return str
	end
	 
	#~ def isadmin?
		
		#~ sql = "select roles.name
				#~ from users

				#~ join roles_users
				#~ on users.id = roles_users.user_id

				#~ join roles
				#~ on roles.id = roles_users.role_id  WHERE roles_users.user_id LIKE '#{session['user_credentials_id']}'
				#~ AND roles.name LIKE 'admin'	LIMIT 1"
		#~ u = User.find_by_sql(sql)
		
		#~ if(!u.blank?)
			#~ return true
		#~ else
			#~ return false
		#~ end
	#~ end
		
	 

end

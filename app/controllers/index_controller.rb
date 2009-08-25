class IndexController < ApplicationController
   require 'json/objects'
	 layout 'index', :only=>:index
  
  def index
  	#@about_us = SQlite::Database.new('../../db/development.sqlite3')
		seek_array = Product.all
		
		a=[]
		a2 = []
		jsn = Hash.new
		
		for s in seek_array
			a<<s.name
			jsn[s.name] = s.permalink
			
		end
		
		@ar = a.join('|')
		 
		
		@json = jsn.to_json
		
  end
  
  def contacts
  end
  
  
  def about_us
  end
  
  
  def main
  end
  
  
  def links
  end
  
  def show_products_cat
  end
  
  
 
  
 
  
  

end

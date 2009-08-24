class IndexController < ApplicationController
   layout 'index', :only=>:index
  
  def index
  	#@about_us = SQlite::Database.new('../../db/development.sqlite3')
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

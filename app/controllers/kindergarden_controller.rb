class KindergardenController < ApplicationController
  #~ layout 'no_left'
	
	
	
	def index
		#@t = 'магазин'.to_url
		#render :partial => "shared/products.html.erb", :locals => {:products => @products, :taxon => @taxon }
		#@taxon = Taxon.find_by_permalink(params[:taxon_path].join("/") + "/")	 
		#render :partial => "taxon", :collection => @taxon.children
  end

end

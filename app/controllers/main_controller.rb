# encoding: utf-8
$KCODE = 'u'
require 'rubygems'
require 'unicode'
class MainController < ApplicationController
  
	def index
		#~ @news = BlogEntry.find(:all, :limit=>3,:order=>'updated_at DESC')
		
		

  end
	
	def about_us
		
  end
	
	
	def contacts
		render 'about_us'
	end
	
	def links
		render 'about_us'
	end
	
	def kindergarden
		render 'about_us'
		
	end
	
	def school
		render 'about_us'
		
	end

	def highschool
		render 'about_us'
		
	end
	
	def news
		 

	end	
	
	def app
	end	
	
	def search
    name = Unicode::downcase(params[:id])
    @result = []
    @result << Product.find(:all,:conditions=>['name LIKE ? AND deleted_at is NULL',"%"+name+"%"])
      i=0
    name =   name.split('').collect do |x|
        if i==0
          i=1
          Unicode::upcase(x)
        else
          x
        end
      end
      name = name.join('')
      @result << Product.find(:all,:conditions=>['name LIKE ? AND deleted_at is NULL',"%"+name+"%"])
        name = Unicode::upcase(name)
      @result << Product.find(:all,:conditions=>['name LIKE ? AND deleted_at is NULL',"%"+name+"%"])
	end
	
	def to_url 
		render :inline=> params[:id].to_url
	end	
	
def update
	#~ @user = User.new(params[:user])
	if simple_captcha_valid?
		flash[:notice] = 'Ваше письмо было успешно отправлено'
    OrderMailer.deliver_appnew(params[:app][:email],params[:user][:msg])
  else
		flash[:notice] = 'Ошибка! повторите попытку.'
		#~ redirect_to :back
		#~ render :text =>flash[:notice]
	end
	
	render :text =>flash[:notice]
	
	
end










end

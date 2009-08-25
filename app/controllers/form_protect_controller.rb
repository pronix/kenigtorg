class FormProtectController < ApplicationController

  def protect
       session[:noisy_image] = NoisyImage.new(5)
       session[:code] = session[:noisy_image].code
       session[:image_blog] = session[:noisy_image].code_image
       render :nothing=>true
  end


 
  def show_image
     send_data session[:image_blog], :type => 'image/jpeg', :disposition => 'inline'
     k = Kirby.new
     k.update_code(session[:code])
  end
  
  def show_code
     @c = session[:code]
  end
  
  def show_code_kirby
     @c = session[:code]
  end

 def check
   k = Kirby.new
   @t = k.show_code_from_base
   @letter = params[:id]
   @l_ln = @letter.length
   @real = @t.str.to_s[0,@l_ln]
   
   right = @real.split('')
   entered = @letter.split('')
   tm = entered.length
   
   i=0
   @err=0
   @colored=''
   tm.times do
     if right[i]==entered[i]
      @colored+="<span style='color:green'>"+entered[i].to_s+"</span>"
     else
      @colored+="<span style='color:red'>"+entered[i].to_s+"</span>"
      @err=@err.succ()
     end
     i=i.succ()
   end
   
 end
  
end

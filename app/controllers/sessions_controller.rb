class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # success
      log_in user
      redirect_back_or user
    else
      # false
      flash.now[:danger] = '邮箱或密码错误'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
end

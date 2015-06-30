class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
  end
  
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "注册成功，欢迎进入毕业生档案管理系统"
      redirect_to @user # 处理注册成功的情况
    else
      render 'new'
    end
  end
  
  private
  
    def user_params
      params.require(:user).permit(:name, :email, :phone, :password,:password_confirmation)
    end
end

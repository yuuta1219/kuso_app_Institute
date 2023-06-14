class UserSessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = login(params[:email], params[:password])
    if @user
      redirect_to request.referrer, success: "ログインしました。"
    else
      flash.now[:danger] = "ログインできませんでした。"
    end
  end

  def destroy
    logout
    redirect_to root_path, status: :see_other, success: "ログアウトしました。"
  end
end

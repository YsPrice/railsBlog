class UsersController < ApplicationController
  before_action :set_user
  def profile
    incremViews = @user.views == nil ? 1 : @user.views + 1
    @user.update(views:incremViews)
  end
  def set_user
    @user = User.find(params[:id])
end
def user_params 
  params.require(:user).permit(:name,:email,:avatar)
end
end
class UsersController < ApplicationController
  before_action :set_user
  def profile
    incremViews = @user.views == nil ? 1 : @user.views + 1
    @user.update(views:incremViews)
  end
  def set_user
    @user = User.find(params[:id])
    @posts = @user.posts
    @post_count = @user.posts.count
end
def user_params 
  params.require(:user).permit(:name,:email,:avatar)
end

end
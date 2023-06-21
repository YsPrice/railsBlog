class ApplicationController < ActionController::Base
    before_action :set_notifications, if: :current_user
    before_action :set_query
    before_filter :set_query

   
private

def set_notifications
  notification = Notification.where(recipient: current_user).newest_first.limit(9).unread
  @unread = notification.unread
  @read = notification.read
end
def set_query = Post.ransack(params[:q])
end


class ApplicationController < ActionController::Base
    before_action :set_notifications, if: :current_user
    before_action :configure_permitted_parameters, if :devise_controller?
    before_action :set_query

  def set_query
    @query = Post.ransack(params[:q])
  end

private

def set_notifications
  notification = Notification.where(recipient: current_user).newest_first.limit(9).unread
  @unread = notification.unread
  @read = notification.read
end
protected



end
end
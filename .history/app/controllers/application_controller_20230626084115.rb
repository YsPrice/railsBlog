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

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute, :name, :email, :password, :password_confirmation, :avatar])
end
def configure_account_update_params
  devise_parameter_sanitizer.permit(:account_update, keys: [:attribute, :name])
end

end
end
class ApplicationController < ActionController::Base
    before_action :set_notifications, if: :current_user
private

def set_notfications
  notifications = Notification.where(recipient: current_user).newest_first.limit(9).unread
  @unread = notifications.unread
  @read = notifcations.read
end
end

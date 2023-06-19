class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_rich_text :body
  after_create_commit :notify_recipient
  before_destroy :cleanup_notificaitons
  has_noticed_notifications model_name: 'Notification'

  def notify_recipient
  end

  def cleanup_notificaitons
    notifications_as_comment.destroy_all
  end
end

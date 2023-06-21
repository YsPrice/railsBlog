class Post < ApplicationRecord
    validates :title, presence: true, length:{minimum:5, maximum:75}
    validates :body, presence: true, length:{minimum:7, maximum:200}
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_rich_text :content
  has_one :action_text_rich_text, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy
 
  def self.ransackable_attributes(auth_object = nil)
    [ "title", "rich-text"]
    end

  def self.ransackable_associations(auth_object = nil)
    ["user","posts"]
  end
 
end


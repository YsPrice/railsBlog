class Post < ApplicationRecord
    validates :title, presence: true, length:{minimum:5, maximum:75}
    validates :body, presence: true, length:{minimum:7}
  has_rich_text :body
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image
  has_many_attached :pictures
  has_rich_text :content
  has_one :content, class_name: 'ActionText::RichText', as: :record, dependent: :destroy
  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user


  
 
end


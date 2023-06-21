class Post < ApplicationRecord
    validates :title, presence: true, length:{minimum:5, maximum:75}
    validates :body, presence: true, length:{minimum:7, maximum:200}
  belongs_to :user

  has_many :comments, dependent: :destroy
  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy
 

 
end


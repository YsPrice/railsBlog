class Post < ApplicationRecord
    validates :title, presence: true, length:{minimum:5, maximum:20} :body presence: true, length:{minimum:20, maximum:200}


end

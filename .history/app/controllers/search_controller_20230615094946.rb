class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
  end

  def attr
    Ransack.configure do |c|
      c.non_searchable_attributes = [:encrypted_password, :password]
    end
  end
 
end

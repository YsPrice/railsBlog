class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    Ransack.configure do |c|
      c.Post.ransack = [:encrypted_password, :password]
  
  end
  end


  
 
end

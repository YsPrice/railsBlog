class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @post = @query.result(_matches_any)
  end


  
 
end

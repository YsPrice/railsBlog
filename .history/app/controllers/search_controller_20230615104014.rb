class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @post = @query.result.includes(:name)
  end


  
 
end

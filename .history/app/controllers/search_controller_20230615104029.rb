class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @post = @query.result.includes(params[:q])
  end


  
 
end

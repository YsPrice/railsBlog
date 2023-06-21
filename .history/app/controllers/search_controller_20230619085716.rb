class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @post = @query.result(@query._matches_any)
  end


  
 
end

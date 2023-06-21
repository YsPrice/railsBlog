class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @post = @query.result(distinct:_matches_any)
  end


  
 
end

class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @people = @query.result(distinct: true)
  end


  
 
end

class SearchController < ApplicationController
  def index
    @query = Post.ransack(params[:q])
    @people = @q.result(distinct: true)
  end


  
 
end

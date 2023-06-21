class SearchController < ApplicationController
  before_filter :index
  def index
    @query = Post.ransack(params[:q])
    @posts = @query.result(distinct: true)
  end


  
 
end

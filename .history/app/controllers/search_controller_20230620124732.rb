class SearchController < ApplicationController
  before_action :index

  def index
    
    @query = Post.ransack(params[:q])
    @posts = @query.result(distinct: false)

  end


  
 
end

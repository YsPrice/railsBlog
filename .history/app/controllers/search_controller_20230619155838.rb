class SearchController < ApplicationController
  before_action :index

  def index
    @search = if params[:q].present?

    @query = Post.ransack(params[:q])
    @posts = @query.result(distinct: true)
      
  end


  
 
end

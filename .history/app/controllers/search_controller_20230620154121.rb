class SearchController < ApplicationController
  before_action :index

  def index

    @query = Post.ransack(params[:q])
    if
      @posts = @query.body = nil
      @posts = @query.result(distinct: true)
    end
  

  end


  
 
end

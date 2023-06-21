class SearchController < ApplicationController
  before_action :index

  def index
    @sratvh = \
    @query = Post.ransack(params[:q])
    @posts = @query.result(distinct: true)

  end


  
 
end

class HomeController < ApplicationController
  def index
  end

  def create
    @post = Post.new
    @post.db_title = params[:title]
    @post.db_content = params[:content]
    @post.save  
  
    redirect_to '/read'
    
  end

  def read
    @posts = Post.all
  end
end

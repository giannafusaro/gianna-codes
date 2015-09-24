class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find params[:url_title]
  end

  private
    def post_params
      params.require(:url_title)
    end
end

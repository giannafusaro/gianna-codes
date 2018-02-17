class PostsController < ApplicationController
  def index
    @posts = Post.all.published.order(:date)
  end
  def show
    @post = Post.published.find_by(url_title: params[:url_title])
  end

  private
    def post_params
      params.require(:url_title)
    end
end

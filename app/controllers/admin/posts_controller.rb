class Admin::PostsController < ApplicationController
  before_filter :require_admin

  def index
    @posts = Post.all
    # logger.debug text: render_to_string(partial: "posts", locals: { post: @posts }).html_safe
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    if @post.save
      flash[:notice] = 'Post created successfully!'
      logger.debug 'Post created successfully!'
      logger.debug "#{flash[:notice]}, #{flash.inspect}"
      redirect_to admin_home_path
    else
      flash[:notice] = 'Sorry, something went wrong.'
      render action: 'new'
    end
  end

  def edit
    @post = Post.find params[:id]
    logger.debug @post.inspect
    @post
  end

  def update
    @post = Post.find params[:id]
    if @post.update_attributes(post_params)
      flash[:notice] = 'Schweeet - update successful!'
      redirect_to admin_posts_path
    else
      flash[:notice] = 'Something weird happened.'
      render action: 'edit'
    end
  end

  def show
    @post = Post.find params[:id]
  end

  def destroy
    @post = Post.find params[:id]
    if @post.destroy
      flash[:notice] = 'Successfully destroyed that blog post. Take THAT, blog post.'
    end
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :date, :author, :abstract, :body, :url_title, :img_url)
  end
end

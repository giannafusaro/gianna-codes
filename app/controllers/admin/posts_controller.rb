class Admin::PostsController < ApplicationController
  before_action :require_admin

  def index
    @posts = Post.all
    # logger.debug text: render_to_string(partial: "posts", locals: { post: @posts }).html_safe
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new post_params
    @post.abstract = Markdown.new(post_params[:abstract]).to_html
    @post.body = Markdown.new(post_params[:body]).to_html

    if @post.save
      flash[:notice] = 'Post created successfully!'
      redirect_to admin_home_path
    else
      flash[:notice] = 'Sorry, something went wrong.'
      render action: 'new'
    end
  end

  def edit
    @post = Post.find params[:id]
    @post
  end

  def update
    @post = Post.find params[:id]
    @post.abstract = Markdown.new(post_params[:abstract]).to_html
    @post.body = Markdown.new(post_params[:body]).to_html
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

  def preview
    @post = Post.find params[:id]
  end

  def post_to_preview
    post = Post.new(post_params)
    post.abstract = Markdown.new(post_params[:abstract]).to_html
    post.body = Markdown.new(post_params[:body]).to_html
    PreviewWorker.perform_async(post.to_json)
    render json: 200
  end

  private

  def post_params
    params.require(:post).permit(:id, :title, :date, :author, :abstract, :body, :url_title, :img_url, :published, :position)
  end
end

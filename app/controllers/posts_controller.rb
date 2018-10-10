class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(params[:slug])
  end

  def new
    @post = Post.new
    @category = Category.new
  end

  def create
    @post = Post.new(post_params)
    @post.save!

    redirect_to posts_path
  rescue
    render action: 'new'
  end

  private

  def post_params
    params.require(:post).permit(:title, :slug, :body, :category_id, :tag_list)
  end

end

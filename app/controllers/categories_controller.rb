class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render action: 'new'
    end

  end

  def new
    @category = Category.new
  end

  def edit
  end

  def show
    @category = Category.find_by(params[:slug])
    @posts = Post.where(category_id: @category.id)
  end

  def update
  end

  def destroy
  end

  private

  def category_params
    params.require(:category).permit(:name, :slug, :description)
  end
end

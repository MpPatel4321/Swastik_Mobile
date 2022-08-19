class CategoriesController < ApplicationController
  def index
    @categories = Item.where(item_type: 'category')
  end

  def new
    @category = Item.new
  end

  def create
    @category = Item.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private

  def category_params
    params.permit(:name, :item_type)
  end
end

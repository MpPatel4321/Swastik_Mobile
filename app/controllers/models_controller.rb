class ModelsController < ApplicationController
  def index
    @models = Item.where(item_type: 'model')
  end

  def new
    @categories = Item.where(item_type: 'category')
    @model = Item.new
  end

  def create
    @model = Item.new(model_params)
    if @model.save
      redirect_to models_path
    else
      @categories = Item.where(item_type: 'category')
      render :new
    end
  end

  def set_companies
    category = Item.find(params[:id])
    @companies = category.sub_items
  end

  private

  def model_params
    params.permit(:name, :item_type, :parrent_id)
  end
end

class ImportedItemsController < ApplicationController
  def index
    @imported_items = ImportedItem.all
  end

  def new
    @categories = Item.where(item_type: 'category')
    @imported_item = ImportedItem.new
  end

  def create
    @imported_item = ImportedItem.new(imported_item_params)
    if @imported_item.save
      redirect_to imported_items_path
    else
      @categories = Item.where(item_type: 'category')
      render :new
    end
  end

  private

  def imported_item_params
    params.require(:imported_item).permit(:imported_date, :quantity, :price_per_unit, :item_id, :profit)
  end
end

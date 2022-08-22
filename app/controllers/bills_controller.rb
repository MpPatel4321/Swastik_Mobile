class BillsController < ApplicationController
  def index
    @bills = Bill.all
  end

  def new
    @categories = Item.where(item_type: 'category')
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)

    if @bill.save
      redirect_to bills_path
    else
      @categories = Item.where(item_type: 'category')
      render :new
    end
  end

  private

    def bill_params
      params.require(:bill).permit(:name, :father_name, :address, :mobile_no, :price, :item_id)
    end
end

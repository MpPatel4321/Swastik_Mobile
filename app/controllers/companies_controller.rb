class CompaniesController < ApplicationController
  def index
    @companies = Item.where(item_type: 'company')
  end

  def new
    @categories = Item.where(item_type: 'category')
    redirect_to root_path, alert: 'Please create Category first.' if @categories.blank?
    @company = Item.new
  end

  def create
    @company = Item.new(company_params)
    if @company.save
      redirect_to companies_path
    else
      @categories = Item.where(item_type: 'category')
      render :new
    end
  end

  private

  def company_params
    params.permit(:name, :item_type, :parrent_id)
  end
end

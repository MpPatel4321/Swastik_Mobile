class StocksController < ApplicationController
  def index
    @stocks = ImportedItem.all
  end
end

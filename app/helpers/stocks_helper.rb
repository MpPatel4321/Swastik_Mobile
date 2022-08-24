# frozen_string_literal: true

module StocksHelper
  def sort_stocks(stocks)
    temp = []
    stocks.each do |stock|
      if temp.map { |a| a.key?(stock.item.name) }.include?(true)
        temp.each do |tem|
          if tem.key?(stock.item.name)
            tem[stock.item.name]['stocks'] << stock
            tem[stock.item.name]['quantity'] << stock.quantity
          end
        end
      else
        temp << { stock.item.name => { 'stocks' => [stock], 'quantity' => [stock.quantity] } }
      end
    end
    add_quantity(temp)
  end

  def add_quantity(array, stocks = [])
    array.each do |item|
      item.each do |_key, value|
        value['stocks'].first.quantity = value['quantity'].sum
        stocks << value['stocks'].first
      end
    end
    stocks
  end
end

class Product
  attr_reader :category, :name, :quantity, :unit_price

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @quantity = quantity
    @unit_price = unit_price.round(2)
  end

  
end

class Product
  attr_reader :category, :name, :quantity, :unit_price

  def initialize(category, name, unit_price, quantity)
    @category = category
    @name = name
    @quantity = quantity.to_i
    @unit_price = unit_price.to_f.round(2)
    @is_hoarded = false
  end

  def total_price
    sum = @product.unit_price * @product.quantity
  end

  def hoard
    return @is_hoarded = true
  end

  def is_hoarded?
    if product.hoard
      true
    end
  end

end

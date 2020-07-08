class ShoppingCart
  attr_reader :name, :capacity, :products

  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @products = []
  end

  def add_product(product)
    @products << product
  end


  def details
    cart = {
      name: @cart.name,
      capacity: @cart.capacity
    }
  end

  def total_number_of_products
    if !@products == []
      @products.find_all do |quantity|
      product.quantity += cart.total_number_of_products
      end
    end
  end

  def is_full?
    if cart.total_number_of_products <=30
      false
    end
  end

  def products_by_category(category)
    @products.find_all do |product|
      product.category == category
    end
  end
end

require 'minitest/autorun'
require 'minitest/pride'
require './lib/product'
require './lib/shopping_cart'
require 'pry'

class ShoppingCartTest < Minitest::Test
  def setup
    @cart = ShoppingCart.new("King Soopers", "30items")
  end

  def test_it_exists
    assert_instance_of ShoppingCart, @cart
  end

  def test_it_has_a_name
    assert_equal "King Soopers", @cart.name
  end

  def test_it_has_capacity
    # skip
    # binding.pry
    assert_equal 30, @cart.capacity.to_i
  end

  def test_it_has_products
    assert_equal [], @cart.products
  end

  def test_it_can_add_products
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    @cart.add_product(product1)

    assert_equal [product1], @cart.products


    product2 = Product.new(:meat, 'chicken', 4.50, '2')
  # binding.pry
    @cart.add_product(product2)
    assert_equal [product1, product2], @cart.products
  end

  # def test_details
  #   assert_equal ({name: "King Soopers", capacity: 30}), @cart.details
  #
  # end
end

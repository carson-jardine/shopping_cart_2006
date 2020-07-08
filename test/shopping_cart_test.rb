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

  def test_details
    skip
    assert_equal ({name: "King Soopers", capacity: 30}), @cart.details

  end
  #
  def test_total_number_of_products
    skip
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')

    @cart.add_product(product1)
    @cart.add_product(product2)
    @cart.add_product(product3)

    assert_equal 13, @cart.total_number_of_products
  end

  def test_products_by_category
    product1 = Product.new(:paper, 'toilet paper', 3.70, '10')
    product2 = Product.new(:meat, 'chicken', 4.50, '2')
    product3 = Product.new(:paper, 'tissue paper', 1.25, '1')
    product4 = Product.new(:produce, 'apples', 0.99, '20')

    @cart.add_product(product1)
    @cart.add_product(product2)
    @cart.add_product(product3)
    @cart.add_product(product4)

    assert_equal [product1, product3], @cart.products_by_category(:paper)
  end

end

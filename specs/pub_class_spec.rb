require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../pub_class")
require_relative("../drink_class")
require_relative("../customer_class")

class TestPub < MiniTest::Test

  def setup()

    @drink1 = Drink.new("beer", 400, 5)
    @drink2 = Drink.new("whisky", 500, 40)
    @drink3 = Drink.new("wine", 600, 15)

    @pub1 = Pub.new("The Number 7", 250000, [@drink1, @drink2, @drink3])

    @customer1 = Customer.new("Stephen", 10000, 29)
    @customer2 = Customer.new("Jun", 15000, 44)
    @customer3 = Customer.new("Fred", 1200, 17)
    @customer4 = Customer.new("Sarah", 200, 23)
    @customer5 = Customer.new("Rachel", 3000, 32, 120)


  end

def test_pub_name()
  assert_equal("The Number 7", @pub1.name)
end

def test_pub_till()
  assert_equal(250000, @pub1.till)
end

def test_pub_drinks()
  assert_equal([@drink1, @drink2, @drink3], @pub1.drinks)
end

def test_increase_money()
  assert_equal(250400, @pub1.increase_money(400))
end

def test_stock_value()
  assert_equal(1500, @pub1.stock_value())
end

def test_reduce_stock_level()
  @pub1.reduce_stock(@drink3)
  assert_equal(2, @pub1.drinks.count())
end

def test_sell_drink_too_young()
  assert_equal(false, @pub1.sell_drink(@customer3, @drink1))
end

def test_sell_drink_too_drunk()
  assert_equal(false, @pub1.sell_drink(@customer5, @drink2))
end

  def test_sell_drink_not_enough_money()
    assert_equal(false, @pub1.sell_drink(@customer4, @drink3))
  end

  def test_sell_drink()
    assert_equal(true, @pub1.sell_drink(@customer2, @drink3))
  end


end

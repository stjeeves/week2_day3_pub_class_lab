require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../customer_class")
require_relative("../drink_class")

class TestCustomer < MiniTest::Test

def setup()

  @customer1 = Customer.new("Stephen", 10000, 29)
  @customer2 = Customer.new("Jun", 15000, 44)
  @customer3 = Customer.new("Fred", 1200, 17)

  @drink1 = Drink.new("beer", 400, 5)
  @drink2 = Drink.new("whisky", 500, 40)
  @drink3 = Drink.new("wine", 600, 15)
end

  def test_customer_name()
    assert_equal("Stephen", @customer1.name)
  end

  def test_customer_age()
    assert_equal(44, @customer2.age)
  end

  def test_customer_wallet()
    assert_equal(1200, @customer3.wallet)
  end

  def test_customer_drunkness_level()
    assert_equal(0, @customer1.drunkness_level)
  end

  def test_reduce_money()
    assert_equal(9600, @customer1.reduce_money(400))
  end

  def test_increase_drunkness_level()
    assert_equal(15, @customer2.increase_drunkness_level(15))
  end

  def test_check_age()
    assert_equal(true, @customer1.check_age(18))
  end

  def test_drunkness_level()
    assert_equal(true, @customer1.check_drunkness_level(100))
  end

  def test_customer_can_afford_drink()
    assert_equal(true, @customer2.can_afford_drink(@drink1))
  end


end

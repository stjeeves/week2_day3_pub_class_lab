require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../drink_class")

class TestDrink < MiniTest::Test

  def setup()
    @drink1 = Drink.new("beer", 400, 5)
    @drink2 = Drink.new("whisky", 500, 40)
    @drink3 = Drink.new("wine", 600, 15)
  end

  def test_name_of_drink()
    assert_equal("beer", @drink1.name)
  end

  def test_price_of_drink()
    assert_equal(400, @drink1.price)
  end

  def test_alcohol_level_of_drink()
    assert_equal(40, @drink2.alcohol_level)
  end

end

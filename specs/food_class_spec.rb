require("minitest/autorun")
require("minitest/reporters")
MiniTest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative("../food_class")

class TestFood < MiniTest::Test

  def setup()
    @food1 = Food.new("burger", 1000, 50)
    @food2 = Food.new("sandwich", 500, 25)
    @food3 = Food.new("salad", 750, 40)
    @food4 = Food.new("nuts", 200, 20)
  end

def test_get_name()
  assert_equal("burger", @food1.name)
end

def test_get_price()
  assert_equal(500, @food2.price)
end

def test_get_rejuvenation_level()
  assert_equal(40, @food3.rejuvenation_level)
end



end

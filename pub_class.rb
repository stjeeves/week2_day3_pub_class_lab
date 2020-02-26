class Pub

  attr_reader :name, :till, :drinks

def initialize(name, till, drinks=[])
  @name = name
  @till = till
  @drinks = drinks
end

def increase_money(amount)
  @till += amount
end

def stock_value()
  value = 0
  for drink in @drinks
    value += drink.price
  end
  return value
end

def reduce_stock(drink)
  @drinks.delete(drink)
end

def sell_drink(customer, drink)
  if customer.check_age(18) && customer.check_drunkness_level(100) && customer.can_afford_drink(drink)
    customer.reduce_money(drink.price)
    increase_money(drink.price)
    reduce_stock(drink)
    customer.increase_drunkness_level(drink.alcohol_level)
    return true
  else
    return false
  end
end


end

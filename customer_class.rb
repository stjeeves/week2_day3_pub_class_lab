class Customer

  attr_reader :name, :wallet, :age, :drunkness_level

  def initialize(name, wallet, age, drunkness_level=0)
    @name = name
    @wallet = wallet
    @age = age
    @drunkness_level = drunkness_level
  end

def reduce_money(amount)
  @wallet -= amount
end

def increase_drunkness_level(level)
  @drunkness_level += level
end

def check_age(age)
  if @age >= age
    return true
  else return false
  end
end

def check_drunkness_level(level)
  if @drunkness_level < level
    return true
  else
    return false
  end
end

def can_afford_drink(drink)
  if @wallet >= drink.price
    return true
  else return false
  end
end

def can_afford_food(food)
  if @wallet >= food.price
    return true
  else return false
  end
end

def reduce_drunkness_level(level)
  @drunkness_level -= level
end



end

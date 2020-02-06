class Player
  attr_reader :name, :hp

  def initialize(name)
    @name = name
    @hp = 100
  end

  def deduct_hp(amount)
    @hp -= amount
  end 

  
end
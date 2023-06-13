class Visitor
  attr_reader :name,
              :height,
              :preferences
  attr_accessor :spending_money
  
  def initialize(name, height, spending_money)
    @name = name
    @height = height
    @spending_money = spending_money.delete("$").to_f
    @preferences = []
  end

  def add_preference(excitement)
    @preferences.push(excitement)
  end

  def tall_enough?(ride_height)
    height >= ride_height
  end

end
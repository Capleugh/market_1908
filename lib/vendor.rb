class Vendor
  attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = Hash.new(0)

  end

  def check_stock(item)
    @inventory[item]
    # require 'pry'; binding.pry
  end

  def stock(item, quantity)
    @inventory[item] += quantity
  end

end

 # require 'pry'; binding.pry
    # return quantity (integer)



  # def stock

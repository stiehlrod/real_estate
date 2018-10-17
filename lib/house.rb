require './lib/room'
require 'pry'

class House

attr_accessor :price

  def initialize(price, address)
    @price = price
    @address = address
  end

end

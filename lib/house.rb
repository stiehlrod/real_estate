require './lib/room'
require 'pry'

class House

attr_accessor :price, :address

  def initialize(price, address)
    @price = price
    @address = address
  end

end

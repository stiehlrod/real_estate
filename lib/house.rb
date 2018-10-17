require './lib/room'
require 'pry'

class House

attr_accessor :price, :address, :rooms

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

end

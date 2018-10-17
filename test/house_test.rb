require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/house'
require './lib/room'
require 'pry'

class TestHouse < Minitest::Test

  def test_it_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
    #=> #<House:0x00007fccd30375f8...>

  end

end

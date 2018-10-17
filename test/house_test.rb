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

  def test_it_has_a_price
    house = House.new(400000, "123 sugar lane")
    assert_equal 400000, house.price
    #=> 400000
  end

  def test_it_has_an_address
    house = House.new(400000, "123 sugar lane")
    assert_equal "123 sugar lane", house.address
    #=> "123 sugar lane"
  end

end

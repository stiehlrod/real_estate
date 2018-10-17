require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/room'
require 'pry'

class TestRoom < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
        #=> #<Room:0x00007fa53b9ca0a8...>
  end

  def test_it_has_a_category
    
    room = Room.new(:bedroom, 10, 13)
    assert_equal :bedroom, room.category
    #=> :bedroom
  end

  def test_it_can_calculate_area
    room = Room.new(:bedroom, 10, 13)
    assert_equal 130, room.area
    #=> 130
  end

end

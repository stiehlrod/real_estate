require 'Minitest/autorun'
require 'Minitest/pride'
require './lib/room'

class TestRoom < Minitest::Test

  def test_it_exists
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
        #=> #<Room:0x00007fa53b9ca0a8...>
  end



end

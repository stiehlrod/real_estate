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

  def test_it_has_rooms
    house = House.new(400000, "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_it_can_add_room
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    assert_equal [room_1], house.add_room(room_1)
    assert_equal [room_1, room_2], house.add_room(room_2)
  end

  def test_it_has_rooms
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal [room_1, room_2], house.rooms
  end

  def test_it_has_four_rooms
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal [room_1, room_2, room_3, room_4], house.rooms
  end

  def test_can_get_rooms_from_category
    skip
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal room_4, house.rooms_from_category(:basement)
  end

  def test_house_can_calc_area
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal 1900, house.area
  end

  def test_can_calc_price_per_square_feet
    house = House.new(400000, "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal 210.53, house.price_per_square_foot
  end

end

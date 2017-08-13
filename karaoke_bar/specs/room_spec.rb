require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guests.rb')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new(1, 5)
    @room2 = Room.new(2, 5)
    @guest1 = Guest.new("Andrew")
    @guest2 = Guest.new("Alice")
  end

  def test_room_number
    assert_equal(1, @room1.room_number)
  end

  def test_room_number
    assert_equal(2, @room2.room_number)
  end

  # def test_room_at_capacity
  #   assert_equal(5, @room_1.capacity)
  # end

  def test_room_capacity
    assert_equal(5, @room2.capacity)
  end

  def test_population
    assert_equal(0, @room1.population.count)
  end

  def test_add_guest_to_room
    @room1.add_guest_to_room(@guest1)
    assert_equal([@guest1], @room1.population)
  end

  def test_add_guest_to_room_again
    @room1.add_guest_to_room(@guest2)
    assert_equal([@guest1, @guest2], @room1.population)
  end

end

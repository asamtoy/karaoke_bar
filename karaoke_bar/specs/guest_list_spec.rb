require('minitest/autorun')
require_relative('../guest_list.rb')
require_relative('../guests.rb')

class TestGuest_List < MiniTest::Test

  def setup
    @guest1 = Guest.new("Andrew")
    @guest2 = Guest.new("Alice")
    @guest_list_1 = Guest_List.new([])
    @guest_list_2 = Guest_List.new([@guest1, @guest2])
  end

  def test_guest_list
    assert_equal([], @guest_list_1.list)
  end

#Currently fails
puts @guest_list_2
  def test_guest_list_2
    assert_equal(["Andrew", "Alice"], @guest_list_2)
  end

end

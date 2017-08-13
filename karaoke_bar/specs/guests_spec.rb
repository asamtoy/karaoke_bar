require('minitest/autorun')
require_relative('../guests.rb')

class TestGuests < MiniTest::Test
  def setup()
    @guest1 = Guest.new("Andrew")
    @guest2 = Guest.new("Iain")
  end

  def test_guest_name
    assert_equal("Andrew", @guest1.name)
  end

  def test_guest_number
    assert_equal(1, @guest1.number)
  end

  def test_guest_iain
    assert_equal(1, @guest2.number)
    assert_equal("Iain", @guest2.name)
  end

end

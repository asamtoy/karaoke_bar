require_relative('guests.rb')
class Guest_List
  attr_accessor :list
  def initialize(list)
    @list = []
  end

# I want to add a guest from guests.rb to the list of guests
  def add_guest_list(guest, number)
    guest_list << guest
  end
end

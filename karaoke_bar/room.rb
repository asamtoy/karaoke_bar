require_relative('guests.rb')

class Room
attr_accessor :room_number, :capacity, :population
  def initialize(room_number, capacity)
    @room_number = room_number
    @capacity = capacity
    @population = [ ]
  end

  def add_guest_to_room(guest)
    @population.push(guest)
    return @population
  end

  def remove_guests_from_room(number_of_guests_to_subtract)
    @population -= number_of_guests_to_subtract
    return @population.count
  end

  def room_at_capacity
  end

  def room_population
  end


end

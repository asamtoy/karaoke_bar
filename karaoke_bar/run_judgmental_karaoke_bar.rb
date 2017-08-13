require_relative('songs.rb')
require_relative('playlist.rb')
require_relative('room.rb')

def setup
  @playlist1 = Playlist.new([])
  @playlist2 = Playlist.new([])
  @playlist3 = Playlist.new([])
  @room1 = Room.new(1, 5, @playlist1)
  @room2 = Room.new(2, 10, @playlist2)
  @room3 = Room.new(3, 500, @playlist3)
end

puts "Hey.  This is the judgmental karaoke bar."
sleep(1)
puts "How many of you are trying to get in?  Please only tell me a number, and don't spell it out."
number_of_guests = gets.chomp
sleep(1)
puts "Let me see if we have any rooms available..."
sleep(2)
if number_of_guests.to_i <= 5
  puts "Cool, you guys can go to room one if you want."
  elsif number_of_guests.to_i <= 10
    puts "Cool, you guys can go to room two if that's your thing."
  else
    puts "You are, like, too popular for the small rooms."
    sleep(1)
    puts "Try the main bar, they play Justin Bieber and One Direction in there.  You will probably like it a lot."
end
# # Push the group number into the relevant rooms
#
# # Next, I want to get songs from them, only if the artist matches one of the artists in our array of hashes
sleep(1)
puts "What, like, music do you listen to and stuff?"
unimportant_answer = gets.chomp
sleep(1)
puts "That's cool, I guess.  Like, what song do you want to sing tonight?"
song_title_request = gets.chomp
sleep(1)
puts "Who is that by?"
artist_request = gets.chomp

acceptable_artists = ["king witch", "tupac shakur", "notorious b.i.g.", "bruce springsteen", "sabaton", "doctor octagon", "miles davis"]
sleep(1)

while artist_request != "GTFO"
  if acceptable_artists.include?(artist_request.downcase)
    @playlist1.add_song_to_playlist(new_song)
    puts "Cool.  What other songs?"
    song__title_request = gets.chomp
    sleep(1)
    puts "Who is that by?"
    artist_request = gets.chomp
  elsif
    puts "I've heard *of* them, but I've never *heard* them."
    sleep(1)
    puts "I try not to listen to things that would make me stupider."
    sleep(1)
    puts "Are there any other artists you want to hear?"
    sleep(1)
    puts "Or you can just GTFO."
    sleep(1)
    puts "So what's another song that you like that isn't shitty?"
    song__title_request = gets.chomp
    sleep(1)
    puts "Who is that by?"
    artist_request = gets.chomp
  else
    puts "Cool.  Your playlist includes"
    sleep(1)
    puts @playlist1
    sleep(1)
    puts "Go to your room if you, like, want."
    break
end


end

#
# # IF the artist matches one in our library, respond positively.
# puts "We got that.  I added it to your song list."
# # If the artist doesn't match, respond extremely negatively.
# puts "Sorry, I don't think we have that.  We don't let people sing bad music here, though. What other artists do you want to sing tonight? Type 'quit' if you aren't cool enough to be here."
#
# # Keep looping until the person says "quit"
#
#
#
#
# end

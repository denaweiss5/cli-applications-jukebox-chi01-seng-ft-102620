songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help

puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input=gets.strip
  number = input.to_i - 1

    if input == "exit"
      exit_jukebox
      puts "Playing #{song}"
    elsif number < 0 && songs.include?(input)
      index = songs.index(input)
      puts "Playing #{songs[index]}"
    elsif number >= 0 && songs[number] != nil
      puts "Playing #{songs[number]}"
    else
      puts "Invalid input, please try again"
    end
end

def list(songs)
  songs.each_with_index do |song, track|
    puts "#{track + 1}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
   puts "Please enter a command:"
   user_response = gets.chomp
   while user_response != "exit"
     case user_response
       when "help"
         help
         puts "Please enter a command:"
         user_response = gets.chomp
       when "list"
         list(songs)
         puts "Please enter a command:"
         user_response = gets.chomp
       when "play"
         play(songs)
         puts "Please enter a command:"
         user_response = gets.chomp
       when "exit"
         exit_jukebox
       else
         puts "Invalid input, please try again:"
         user_response = gets.chomp
       end
     end
 end

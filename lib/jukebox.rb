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

def list(songs)
  i = 0
    songs.map do |song| 
      puts "#{i += 1}. #{song}"
    end 
end 

def play(songs) 
  puts "Please enter a song name or number:r"
  input = gets.strip.to_s
    if (1..9).to_a.include?(input.to_i)
      puts "Playing #{songs[input.to_i - 1]}"
    elsif songs.include?(input)
      puts "Playing #{input}"
    else 
      puts "Invalid input, please try again"
    end 
end 

def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  input = ""
  while input 
    puts "Please enter a command:"
    input = gets.strip.to_s
      case input 
        when "help"
          help 
        when "list"
          list(songs)
        when "play"
          play(songs)
        when "exit"
          exit_jukebox 
          break
      end 
  end
end 


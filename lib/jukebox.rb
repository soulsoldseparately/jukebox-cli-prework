# Write your code here!
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
  songs.each_with_index do |song, idx|
    puts "#{idx + 1}. #{song}"
  end
end


def play(songs)
  songs_titles = []
  songs_hash = {}
  songs.each_with_index do |song, idx|
    songs_titles[idx+1] = song.split(" - ")[1]
    songs_hash[idx+1] = song
  end

  puts "Please enter a song name or number:"
  selection = gets.chomp

  if songs_hash.has_key?(selection.to_i)
    puts
    puts "Playing #{songs_hash[selection.to_i]}"
 # elsif songs_titles.include?(selection)
  elsif songs_hash.values.include?(selection)
    puts
    puts "Playing #{selection}"
  else
    puts
    puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end


def run(songs)
  command = ''
  help

  while command != 'exit'
    puts
    puts "Please enter a command:"
    command = gets.chomp
    if command == 'play'
      play(songs)
    elsif command == 'list'
      list(songs)
    elsif command == 'help'
      help
    else
      exit_jukebox
    end
  end
end
require_relative "classes/item"
require_relative "options"

def menu
  puts "Please choose on option "
  puts "1- List all books"
  puts "2- List all music albums"
  puts "3- List all movies"
  puts "4- List of games"
  puts "5- List all genres"
  puts "6- List all labels"
  puts "7- List all authors"
  puts "8- List all sources"
  puts "9-  Add a book"
  puts "10- Add a music album"
  puts "11- Add a movie"
  puts "12- Add a game"
end

def Main
  def initialize
    @app = App.new
    @input = 0
  end

  def launch_app
    while @input != 13
      menu
      options
    end
  end
end

main = Main.new
main.launch_app

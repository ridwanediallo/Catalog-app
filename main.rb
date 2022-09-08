require_relative "classes/item"
require_relative "classes/label"
require_relative "options"
require_relative "app"

def menu
  puts "-------------------------"
  puts "| Welcome to Catalog App |"
  puts "-------------------------"
  puts
  puts "  Please choose on option "
  puts "1- List all books"
  puts "2- List all music albums"
  puts "3- List all movies"
  puts "4- List all games"
  puts "5- List all genres"
  puts "6- List all labels"
  puts "7- List all authors"
  puts "8- List all sources"
  puts "9-  Add a book"
  puts "10- Add a music album"
  puts "11- Add a movie"
  puts "12- Add a game"
  puts "13- Add a label"
  puts "14- Add a Genre"
  puts "15- Exit"
end

class Main
  def initialize
    @app = App.new
    @input = 0
  end

  def launch_app
    while @input != 15
      menu
      options
    end
  end
end

main = Main.new
main.launch_app

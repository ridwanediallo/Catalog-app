require_relative 'classes/item'
require_relative 'classes/label'
require_relative 'options'
require_relative 'app'

def menu
  puts '-------------------------'
  puts '| Welcome to Catalog App |'
  puts '-------------------------'
  puts
  puts '  Please choose on option '
  puts '1- List all books'
  puts '2- List all music albums'
  puts '3- List all games'
  puts '4- List all genres'
  puts '5- List all labels'
  puts '6- List all authors'
  puts '7-  Add a book'
  puts '8- Add a music album'
  puts '9- Add a game'
  puts '10- Add a label'
  puts '11- Add an author'
  puts '12- Add a Genre'
  puts '13- Exit'
end

class Main
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

require_relative "classes/book"
require_relative "classes/label"
require_relative "data_persist/book_persist"
require_relative "data_persist/label_persist"
require_relative "data_persist/handle_json"
require_relative "factory"
require_relative "classes/musicalbum"
require_relative "classes/genre"
require_relative "data_persist/music_persist"
require_relative "data_persist/genre_persist"
require_relative "classes/author"
require_relative "classes/game"
require_relative "data_persist/author_persist"
require_relative "data_persist/game_persist"

class App
  def initialize
    @books = []
    @labels = []
    @music_Album = []
    @genres = []
    @authors = []
    @games = []

    load_books
    load_labels
    load_author
    load_game
  end
  include Methodes_factory
  include BookPersist
  include HandlerFile
  include LabelPersist
  include MusicPersist
  include GenrePersist
  include GamePersist
  include AuthorPersist

  def take_input(label)
    print "#{label}: "
    gets.chomp
  end

  def add_book
    publisher = take_input("Publisher")
    publish_date = take_input("Publish_date")
    puts "Enter Good or Bad for the cover state"
    cover_state = take_input("Cover_state")
    puts "Is the book archived? (true/false)"
    archived = take_input("Archived")
    insert_book(publisher, publish_date, cover_state, archived)
  end

  def list_books
    @books.each do |book|
      puts "[#{book.class}] Publisher: #{book.publisher} Publish_date: #{book.publisher} Cover_state: #{book.cover_state} Archived: #{book.archived}"
    end
  end

  def add_label
    title = take_input("Title")
    color = take_input("Color")
    insert_label(title, color)
  end

  def list_labels
    @labels.each do |label|
      puts "[#{label.class}] Title: #{label.title} Color: #{label.color}"
    end
  end

  def add_music
    name = take_input("Name")
    publish_date = take_input("Publish_date")
    on_spotify = take_input("On_spotify?")
    insert_music(name, publish_date, on_spotify)
  end

  def list_music
    @music_Album.each do |music|
      puts "[#{music.class}] Name: #{music.name} Publish_date: #{music.publish_date} On_spotify: #{music.on_spotify}"
    end
  end

  def add_genre
    names = take_input("Comedy , Thriller")
    insert_genre(names)
  end

  def list_genre
    @genres.each { |genre| puts "[#{genre.class}] Names: #{genre.names} " }
  end

  def add_author
    first_name = take_input("First_name")
    last_name = take_input("Last_name")
    insert_author(first_name, last_name)
  end

  def list_authors
    @authors.each do |author|
      puts "[#{author.class}] First_name: #{author.first_name} Last_name: #{author.last_name}"
    end
  end

  def add_game
    multiplayer = take_input("Multiplayer")
    last_played_at = take_input("Last_played_at")
    insert_game(multiplayer, last_played_at)
  end

  def list_games
    @games.each do |game|
      puts "[#{game.class}] Multiplayer: #{game.multiplayer} Last_played_at: #{game.last_played_at}"
    end
  end
end

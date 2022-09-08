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

class App
  def initialize
    @books = []
    @labels = []
    @music_Album = []
    @genres = []

    load_books
    load_labels
  end
  include Methodes_factory
  include BookPersist
  include HandlerFile
  include LabelPersist
  include MusicPersist
  include GenrePersist

  def take_input_label(label)
    print "#{label}: "
    gets.chomp
  end

  def add_book
    publisher = take_input_label("Publisher")
    publish_date = take_input_label("Publish_date")
    cover_state = take_input_label("Cover_state")
    insert_book(publisher, publish_date, cover_state)
  end


  def list_books
    @books.each do |book|
      puts "[#{book.class}] Publisher: #{book.publisher} Publish_date: #{book.publisher} Cover_state: #{book.cover_state}"
    end
  end


  def add_label
    title = take_input_label("Title")
    color = take_input_label("Color")
    insert_label(title, color)
  end

  def list_labels
    @labels.each do |label|
      puts "[#{label.class}] Title: #{label.title} Color: #{label.color}"
    end
  end

  def add_music
    name = take_input_label("Name")
    publish_date = take_input_label("Publish_date")
    on_spotify = take_input_label("On_spotify?")
    insert_music(name, publish_date, on_spotify)
  end


  def list_music
    @music_Album.each do |music|
      puts "[#{music.class}] Name: #{music.name} Publish_date: #{music.publish_date} On_spotify: #{music.on_spotify}"
    end
  end

  def add_genre
    names = take_input_label("Comedy , Thriller")
    insert_genre(names)
  end

  def list_genre
    @genres.each do |genre|
      puts "[#{genre.class}] Names: #{genre.names} "
    end
  end


end

require_relative "classes/book"
require_relative "classes/label"
require_relative "data_persist/book_persist"
require_relative "data_persist/handle_json"
require_relative "factory"

class App
  def initialize
    @books = []
    @labels = []
    load_books
  end
  include Methodes_factory
  include BookPersist
  include HandlerFile

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
end

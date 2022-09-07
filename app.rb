require_relative "classes/book"
require_relative "classes/label"
require_relative "factory"

class App
  def initialize
    @books = []
    @labels = []
  end
  include Methodes_factory

  def take_input_label(label)
    print "#{label}: "
    gets.chomp
  end

  def add_book
    publisher = take_input_label("Publisher")
    publish_date = take_input_label("publish_date")
    cover_state = take_input_label("cover_state")
    insert_book(publisher, publish_date, cover_state)
  end

  def list_books
    @books.each do |book|
        puts "[#{book.class}] Publisher: #{book.publisher} Publish_date: #{book.publisher} Cover_state: #{book.cover_state}"
    end
  end
end

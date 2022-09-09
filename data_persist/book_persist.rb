require "json"
require_relative "../classes/book"
require_relative "handle_json"

module BookPersist
  def persist_book
    books_arr = []
    @books.each do |book|
      books_arr << {
        publisher: book.publisher,
        publish_date: book.publish_date,
        cover_state: book.cover_state,
        archived: book.archived
      }
    end
    write_json(books_arr, "books.json")
  end
  def load_books
    file = File.read("books.json")
    JSON
      .parse(file)
      .each { |book| @books.push(Book.new(book["publisher"], book["publish_date"], book["cover_state"], book["archived"])) }
  end
end
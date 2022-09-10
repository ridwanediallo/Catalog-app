require 'json'
require_relative 'handle_json'
require_relative '../classes/author'

module AuthorPersist
  def persist_author
    author_arr = []
    @authors.each do |author|
      author_arr << {
        first_name: author.first_name,
        last_name: author.last_name
      }
    end
    write_json(author_arr, 'author.json')
  end

  def load_author
    file = File.read('author.json')
    JSON
      .parse(file)
      .each { |author| @authors.push(Author.new(author['first_name'], author['last_name'])) }
  end
end

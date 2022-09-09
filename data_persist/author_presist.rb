require "json"
require_relative "handle_json"
require_relative "../classes/author"

module Author
    def persist_author
      author_arr = []
      @author.each do |m|
        author_arr << {
          first_name: m.first_name,
          last_name: m.last_name,
        }
      end
      write_json(author_arr, "author.json")
    end
    def load_author
      file = File.read("author.json")
      JSON
        .parse(file)
        .each { |m| @author.push(Author.new(m["first_name"], m["last_name"])) }
    end
  end
  
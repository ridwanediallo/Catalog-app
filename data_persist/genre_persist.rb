require "json"
require_relative "../classes/genre"
require_relative "handle_json"

module GenrePersist
  def persist_genre
    genres_arr = []
    @genres.each do |g|
      genres_arr << { names: m.names }
    end
    write_json(genres_arr, "genre.json")
  end

  def load_genre
    file = File.read("genre.json")
    JSON
      .parse(file)
      .each { |g| @ganres.push(Genre.new(g["names"])) }
  end
end

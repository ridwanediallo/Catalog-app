require 'json'
require_relative '../classes/genre'
require_relative 'handle_json'

module GenrePersist
  def persist_genre
    genres_arr = []
    @genres.each do |g|
      genres_arr << { names: g.names }
    end
    write_json(genres_arr, 'genre.json')
  end

  def load_genre
    file = File.read('genre.json')
    JSON
      .parse(file)
      .each { |g| @genres.push(Genre.new(g['names'])) }
  end
end

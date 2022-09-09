require "json"
require_relative "handle_json"
require_relative "../classes/game"

module GamePersist
    def persist_game
      game_arr = []
      @game.each do |m|
        game_arr << {
          multiplayer: m.multiplayer,
          last_played_at: m.last_played_at,
        }
      end
      write_json(game_arr, "game.json")
    end
    def load_game
      file = File.read("game.json")
      JSON
        .parse(file)
        .each { |m| @game.push(Game.new(m["multiplayer"], m["last_played_at"])) }
    end
  end
  
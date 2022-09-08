require "json"
require_relative "handle_json"
require_relative "../classes/musicalbum"

module MusicPersist
    def persist_music
      music_arr = []
      @music_Album.each do |m|
        music_arr << {
          Name: m.name,
          publish_date: m.publish_date,
          on_spotify: m.on_spotify
        }
      end
      write_json(music_arr, "music.json")
    end
    def load_music
      file = File.read("music.json")
      JSON
        .parse(file)
        .each { |m| @music_Album.push(MusicAlbum.new(m["Name"], m["publish_date"], m["On_spotify"])) }
    end
  end

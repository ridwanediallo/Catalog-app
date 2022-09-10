module Methodes_factory

  def insert_book(publisher,publish_date, cover_state, archived)
      @books << Book.new(publisher,publish_date, cover_state, archived)
      puts 'Book inserted successfully.'
  end

  def insert_label(title, color)
      @labels << Label.new(title, color)
      puts 'Label inserted successfully.'
  end

  def insert_music(name,publish_date, on_spotify)
    @music_Album << MusicAlbum.new(name,publish_date, on_spotify)
    puts 'Music Album inserted successfully.'
  end

  def insert_genre(names)
    @genres << Genre.new(names)
    puts 'genre inserted successfully.'
  end

    def insert_author(first_name, last_name)
      @authors << Author.new(first_name, last_name)
      puts 'Label inserted successfully.'
  end

    def insert_game(multiplayer, last_played_at)
      @games << Game.new(multiplayer, last_played_at)
      puts 'Label inserted successfully.'
  end

end


def options
  @input = gets.chomp.to_i
  case @input
  when 1
    @app.list_books
  when 2
    @app.list_music
  when 3
    @app.list_games
  when 4
    @app.list_genre
  when 5
    @app.list_labels
  when 6
    @app.list_authors
  when 7
    @app.add_book
  when 8
    @app.add_music
  when 9
    @app.add_game
  when 10
    @app.add_label
  when 11
    @app.add_author
  when 12
    @app.add_genre
  when 13
    @app.persist_book
    @app.persist_label
    @app.persist_game
    @app.persist_author
    @app.persist_music
    @app.persist_genre
    puts "Thanks for visiting. See you next!"
  else
    puts "Sorry! Your option is not available."
  end
end

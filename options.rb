def options
  @input = gets.chomp.to_i
  case @input
  when 1
    @app.list_books
  when 2
    @app.list_music
  when 3
  when 4
  when 5
    @app.list_genre
  when 6
    @app.list_labels
  when 7
  when 8
  when 9
    @app.add_book
  when 10
    @app.add_music
  when 11
  when 12
  when 13
    @app.add_label
  when 14
    @app.add_genre
  when 15
    @app.persist_book
    @app.persist_label
    puts "Thanks for visiting. See you next!"
  else
    puts "Sorry! Your option is not available."
  end
end
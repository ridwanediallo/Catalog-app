def options
  @input = gets.chomp.to_i
  case @input
  when 1
    @app.list_books
  when 2
  when 3
  when 4
  when 5
  when 6
  when 7
  when 8
  when 9
    @app.add_book
  when 10
  when 11
  when 12
  when 13
    puts "Thanks for visiting. See you next!"
  else
    puts "Sorry! Your option is not available."
  end
end

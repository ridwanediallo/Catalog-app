module Methodes_factory

  def insert_book(publisher,publish_date, cover_state, archived)
      @books << Book.new(publisher,publish_date, cover_state, archived)
      puts 'Book inserted successfully.'
  end

  def insert_label(title, color)
      @labels << Label.new(title, color)
      puts 'Label inserted successfully.'
  end

end

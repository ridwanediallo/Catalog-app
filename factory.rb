module Methodes_factory

  def insert_book(publisher,publish_date, cover_state)
      @books << Book.new(publisher,publish_date, cover_state)
      puts 'Book inserted successfully.'
  end

  def insert_label(title, color)
      @labels << Label.new(title, color)
      puts 'Label inserted successfully.'
  end

end

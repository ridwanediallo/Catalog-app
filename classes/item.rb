require 'date'

class Item
  attr_reader :id, :archived, :date
  attr_accessor :genre, :author, :label, :publish_date

  def initialize(publish_date, archived = false)
    @id = Random.rand(1..1000)
    @archived = archived
    @publish_date = publish_date
  end

   def add_label=(label)
    @label = label
    label.add_item(self) unless @label.items.include?(label)
   end

  def move_to_archive
    archived = true if can_be_archived?
  end

  def add_genre(genre)
    @genre = genre
    genre.add_item << self unless genre.items.include?(self)
  end

  def add_author(author)
    @author = author
    author.add_item << self unless author.items.include?(self)
  end

  private

  def can_be_archived?
    Time.now.year - Date.parse(@publish_date).year > 10
  end
end
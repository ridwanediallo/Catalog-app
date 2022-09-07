require 'date'

class Item
attr_reader :id, :archived, :date
attr_accessor :genre, :author, :source, :label, :publish_date
   def initialize(publish_date, archived = false)
    @id = Random.rand(1..1000)
    @archived = archived
    @publish_date = publish_date
   end

   def move_to_archive
    archived = true if can_be_archived?
   end

   def add_genre(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
   end

   private

   def can_be_archived?
     Time.now.year - Date.parse(@publish_date).year > 10
   end
end

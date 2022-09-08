require './item'

class MusicAlbum < Item
  attr_accessor :name, :publish_date, :on_spotify
  attr_reader :id

  def initialize(name, publish_date, on_spotify)
    super(publish_date)
    @id = Random.rand(1...1000)
    @name = name
    @on_spotify = on_spotify
  end

  def can_be_archived?
    super && @on_spotify == true
  end
end

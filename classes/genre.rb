class Genre
  attr_reader :id, :items
  attr_accessor :names

  def initialize(names)
    @id = rand(1..1000)
    @names = names
    @items = []
  end

  def add_items(item)
    items << item
    item.genre = self
  end
end

class Book
  attr_accessor :publisher, :cover_state
  def initialize(publisher, cover_state)
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
  end
end

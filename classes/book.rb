require_relative 'item'

class Book < Item
  attr_accessor :publisher, :cover_state

  def initialize(publisher,publish_date, cover_state, archived)
    super(publish_date, archived)
    @publisher = publisher
    @cover_state = cover_state
  end


  private

  def can_be_archived?
   super || @cover_state == 'bad'
  end
end
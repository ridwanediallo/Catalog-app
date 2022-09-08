require './classes/genre'
describe Genre do
  before :each do
    @genre = Genre.new 'comedy'
  end
  it 'should print the genre name' do
    expect(@genre.names).to eq 'comedy'
  end
end

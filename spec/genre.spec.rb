require './classes/genre'
describe Genre do
  before :each do
    @genre = Genre.new 'comedy'
  end
  it 'should print the genre name' do
    expect(@genre.names).to eq 'comedy'
  end

  it 'should print the genre id' do
    expect(@genre.id).to be_between(1, 1000)
  end

  it 'should print the genre items' do
    expect(@genre.items).to eq []
  end

end

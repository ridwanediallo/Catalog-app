require './classes/author'
describe Author do
  before :each do
    @author = Author.new 'Mandela', 'Ali'
  end
  it 'should print the Author first_name' do
    expect(@author.first_name).to eq 'Mandela'
  end
  it 'should print the Author last_name' do
    expect(@author.last_name).to eq 'Ali'
  end

end
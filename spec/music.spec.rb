require './classes/musicalbum'
describe MusicAlbum do
  before :each do
    @musicalbum = MusicAlbum.new 'Freedom', '2019', true
  end
  it 'should print the alboum name' do
    expect(@musicalbum.name).to eq 'Freedom'
  end
  it 'should print the publish date' do
    expect(@musicalbum.publish_date).to eq '2019'
  end
  it 'should print if it on spotify or not' do
    expect(@musicalbum.on_spotify).to eq true
  end
end
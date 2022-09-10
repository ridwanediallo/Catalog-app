require './classes/game'
describe Game do
  before :each do
    @game = Game.new 'Spotify', 'rock'
  end
  it 'should print the game multiplayer' do
    expect(@game.multiplayer).to eq 'Spotify'
  end
  it 'should print the game last_played_at' do
    expect(@game.last_played_at).to eq 'rock'
  end

end
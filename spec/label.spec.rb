require_relative '../classes/label'

describe Label do
  let(:label) { Label.new('Good Book', 'Yellow') }

  describe '#label' do
    it 'should instanciate a new label' do
      expect(label).to be_an_instance_of(Label)
    end

    it 'title should be equal to Good Book' do
      expect(label.title).to eq('Good Book')
    end

    it 'color should be equal to Yellow' do
      expect(label.color).to eq('Yellow')
    end
  end
end

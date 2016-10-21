describe 'Generating a diamond' do
  context 'when no letter is given' do
    def diamond letter
      ''
    end

    it 'prints no diamond' do
      expect(diamond '').to eq ''
    end
  end

  context "given the letter 'A'" do
    it 'prints the diamond correctly'
  end

  context "given the letter 'B'" do
    it 'correctly prints the top left-hand corner'

    it 'correctly prints the top right-hand corner'

    it 'correctly prints the bottom left-hand corner'

    it 'correctly prints the bottom right-hand corner'
  end

  context "given the letter 'C'" do
    it 'correctly prints the top left-hand corner'
  end
end

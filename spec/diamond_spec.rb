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
    def diamond letter
      'A'
    end

    it 'prints the diamond correctly' do
      expect(diamond 'A').to eq 'A'
    end
  end

  context "given the letter 'B'" do
    it 'correctly prints the top left-hand corner'
  end

  context "given the letter 'C'" do
    it 'correctly prints the top left-hand corner'
  end

  context "given the letter 'D'" do
    it 'correctly prints the top left-hand corner'
  end
end

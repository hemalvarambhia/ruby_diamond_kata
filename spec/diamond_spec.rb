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

  describe 'the left-hand corner' do
    context "given the letter 'A'" do
      it 'is correctly printed'
    end

    context "given the letter 'B'" do
      it 'is printed correctly'
    end

    context "given the letter 'C'" do
      it 'is printed correctly'
    end

    context "given the letter 'D'" do
      it 'is printed correctly'
    end
  end
end

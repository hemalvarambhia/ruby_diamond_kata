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
      def left_hand_corner letter
        ['A']
      end

      it 'is correctly printed' do
        expect(left_hand_corner 'A').to eq ['A']
      end
    end

    context "given the letter 'B'" do
      def left_hand_corner letter
        [[' ', 'A', ' '], ['B', ' ', ' ']]
      end

      it 'is printed correctly' do
        expect(left_hand_corner 'B').to eq [[' ', 'A', ' '], ['B', ' ', ' ']]
      end
    end

    context "given the letter 'C'" do
      it 'is printed correctly'
    end

    context "given the letter 'D'" do
      it 'is printed correctly'
    end
  end
end

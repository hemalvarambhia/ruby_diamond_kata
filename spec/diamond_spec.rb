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
    def left_hand_corner letter
      return [] if letter.empty?
      
      range = 'A'..letter
      left_hand_corner =
        Array.new(range.count) {  [' '] * (2 *range.count - 1) }

      range.each_with_index do |letter, index|
        left_hand_corner[index][(range.count - 1) - index] = letter
      end

      left_hand_corner.map { |row| row[0..range.count - 1] }
    end

    context 'given no letter' do
      it 'prints no left-hand corner' do
        expect(left_hand_corner '').to eq []
      end
    end

    context "given the letter 'A'" do
      it 'is correctly printed' do
        left_hand_corner = left_hand_corner 'A'

        expect(left_hand_corner[0]).to eq ['A']
      end
    end

    context "given the letter 'B'" do
      it 'is printed correctly' do
        left_hand_corner = left_hand_corner 'B'

        expect(left_hand_corner[0]).to eq [' ', 'A']
        expect(left_hand_corner[1]).to eq ['B', ' ']
      end
    end

    context "given the letter 'C'" do
      it 'is printed correctly' do
        left_hand_corner = left_hand_corner 'C'

        expect(left_hand_corner[0]).to eq [' ', ' ', 'A']
        expect(left_hand_corner[1]).to eq [' ', 'B', ' ']
        expect(left_hand_corner[2]).to eq ['C', ' ', ' ']
      end
    end

    context "given the letter 'D'" do
      it 'is printed correctly' do
        left_hand_corner = left_hand_corner 'D'

        expect(left_hand_corner[0]).to eq [' ', ' ', ' ', 'A']
        expect(left_hand_corner[1]).to eq [' ', ' ', 'B', ' ']
        expect(left_hand_corner[2]).to eq [' ', 'C', ' ', ' ']
        expect(left_hand_corner[3]).to eq ['D', ' ', ' ', ' ']
      end
    end
  end
end

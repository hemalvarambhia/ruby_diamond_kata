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
      range = 'A'..letter
      case letter
      when ''
        []
      when 'A'
        left_hand_corner = Array.new(range.count) { [' '] * 1 }
        range.each_with_index do |letter, index|
          left_hand_corner[index][0 - index] = letter
        end

        left_hand_corner
      when 'B'
        left_hand_corner = Array.new(range.count) { [' '] * 3 }
        range.each_with_index do |letter, index|
          left_hand_corner[index][1 - index] = letter
        end

        left_hand_corner
      when 'C'
        left_hand_corner = Array.new(range.count) { [' '] * 5 }
        range.each_with_index do |letter, index|
          left_hand_corner[index][2 - index] = letter
        end
        
        left_hand_corner
      end
    end

    context 'given no letter' do
      it 'prints no left-hand corner' do
        expect(left_hand_corner '').to eq []
      end
    end

    context "given the letter 'A'" do
      it 'is correctly printed' do
        expect(left_hand_corner 'A').to eq [['A']]
      end
    end

    context "given the letter 'B'" do
      it 'is printed correctly' do
        expect(left_hand_corner 'B').to(
          eq([
               [' ', 'A', ' '],
               ['B', ' ', ' ']
             ]
            )
        )
      end
    end

    context "given the letter 'C'" do
      it 'is printed correctly' do
        expect(left_hand_corner 'C').to(
          eq([
               [' ', ' ', 'A', ' ', ' '],
               [' ', 'B', ' ', ' ', ' '],
               ['C', ' ', ' ', ' ', ' ']
             ]
          )
        )
      end
    end

    context "given the letter 'D'" do
      it 'is printed correctly'
    end
  end
end

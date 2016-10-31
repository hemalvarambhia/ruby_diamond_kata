describe 'Generating a diamond' do
  def top_left_hand_corner letter
    return [] if letter.empty?
     
    range = 'A'..letter
    top_left_hand_corner =
      Array.new(range.count) {  ' ' * range.count }

    range.each_with_index do |letter, index|
      top_left_hand_corner[index][(range.count - 1) - index] = letter
    end

    top_left_hand_corner
  end

  def top_right_hand_corner letter
    top_left_hand_corner(letter).map { |row| row.reverse }
  end

  def bottom_left_hand_corner letter
    top_left_hand_corner(letter).reverse
  end
  
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
    context 'given no letter' do
      it 'prints no left-hand corner' do
        expect(top_left_hand_corner '').to eq []
      end
    end

    context "given the letter 'A'" do
      it 'is correctly printed' do
        top_left_hand_corner = top_left_hand_corner 'A'

        expect(top_left_hand_corner[0]).to eq 'A'
      end
    end

    context "given the letter 'B'" do
      it 'is printed correctly' do
        top_left_hand_corner = top_left_hand_corner 'B'

        expect(top_left_hand_corner[0]).to eq ' A'
        expect(top_left_hand_corner[1]).to eq 'B '
      end
    end

    context "given the letter 'C'" do
      it 'is printed correctly' do
        top_left_hand_corner = top_left_hand_corner 'C'

        expect(top_left_hand_corner[0]).to eq '  A'
        expect(top_left_hand_corner[1]).to eq ' B '
        expect(top_left_hand_corner[2]).to eq 'C  '
      end
    end

    context "given the letter 'D'" do
      it 'is printed correctly' do
        top_left_hand_corner = top_left_hand_corner 'D'

        expect(top_left_hand_corner[0]).to eq '   A'
        expect(top_left_hand_corner[1]).to eq '  B '
        expect(top_left_hand_corner[2]).to eq ' C  '
        expect(top_left_hand_corner[3]).to eq 'D   '
      end
    end
  end

  describe 'the bottom left-hand corner' do
    context 'given no letter' do
      it 'prints nothing' do
        expect(bottom_left_hand_corner '').to eq []
      end
    end

    context "given the letter 'A'" do
      it 'is printed correctly' do
        bottom_left_hand_corner = bottom_left_hand_corner 'A'

        expect(bottom_left_hand_corner[0]).to eq 'A'
      end
    end

    context "given the letter 'B'" do
      it 'is printed correctly' do
        bottom_left_hand_corner = bottom_left_hand_corner 'B'
        
        expect(bottom_left_hand_corner[0]).to eq 'B '
        expect(bottom_left_hand_corner[1]).to eq ' A'
      end
    end

    context "given the letter 'C'" do
      it 'is printed correctly' do
        bottom_left_hand_corner = bottom_left_hand_corner 'C'
        
        expect(bottom_left_hand_corner[0]).to eq 'C  '
        expect(bottom_left_hand_corner[1]).to eq ' B '
        expect(bottom_left_hand_corner[2]).to eq '  A'        
      end
    end

    context "given the letter 'D'" do
      it 'is printed correctly' do
        bottom_left_hand_corner = bottom_left_hand_corner 'D'

        expect(bottom_left_hand_corner[0]).to eq 'D   '
        expect(bottom_left_hand_corner[1]).to eq ' C  '
        expect(bottom_left_hand_corner[2]).to eq '  B '
        expect(bottom_left_hand_corner[3]).to eq '   A'        
      end
    end
  end

  describe 'the top right-hand corner' do
    context "given no letter" do
      it 'is printed correctly' do
        expect(top_right_hand_corner '').to be_empty
      end
    end

    context "given the letter 'A'" do
      it 'is printed correctly' do
        top_right_hand_corner = top_right_hand_corner 'A'
        
        expect(top_right_hand_corner[0]).to eq 'A'
      end
    end

    context "given the letter 'B'" do
      it 'is printed correctly' do
        top_right_hand_corner = top_right_hand_corner 'B'
        
        expect(top_right_hand_corner[0]).to eq 'A '
        expect(top_right_hand_corner[1]).to eq ' B'
      end
    end

    context "given the letter 'C'" do
      it 'is printed correctly' do
        top_right_hand_corner = top_right_hand_corner 'C'
        
        expect(top_right_hand_corner[0]).to eq 'A  '
        expect(top_right_hand_corner[1]).to eq ' B '
        expect(top_right_hand_corner[2]).to eq '  C'
      end
    end

    context "given the letter 'D'" do
      it 'is printed correctly' do
        top_right_hand_corner = top_right_hand_corner 'D'
        
        expect(top_right_hand_corner[0]).to eq 'A   '
        expect(top_right_hand_corner[1]).to eq ' B  '
        expect(top_right_hand_corner[2]).to eq '  C '
        expect(top_right_hand_corner[3]).to eq '   D'
      end
    end
  end
end

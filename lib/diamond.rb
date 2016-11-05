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

def upper_half letter
  return [] if letter == ''
  finish = ('A'..'Z').to_a.index letter

  (0.upto finish).map do |index|
     top_left_hand_corner(letter)[index] +
       top_right_hand_corner(letter)[index][1..-1]
   end
end

def lower_half letter
  upper_half(letter).reverse
end

def diamond letter
  return '' if letter == ''
      
  upper_half(letter).join("\n") + "\n" +
    lower_half(letter)[1..-1].join("\n")
end

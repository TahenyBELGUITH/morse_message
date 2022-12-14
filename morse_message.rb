def decode_char(char)
  result = {
    'A' => '.-', 'B' => '-...', 'C' => '-.-.', 'D' => '-..', 'E' => '.', 'F' => '..-.',
    'G' => '--.', 'H' => '....', 'I' => '..', 'J' => '.---', 'K' => '-.-', 'L' => '.-..',
    'M' => '--', 'N' => '-.', 'O' => '---', 'P' => '.--.', 'Q' => '--.-', 'R' => '.-.',
    'S' => '...', 'T' => '-', 'U' => '..-', 'V' => '...-', 'W' => '.--', 'X' => '-..-',
    'Y' => '-.--', 'Z' => '--..'
  }

  result.key(char) || ''
end

def decode_word(str)
  new_str = ''
  str.split.each do |char|
    new_str += decode_char(char)
  end
  new_str
end

def decode_result(str)
  result = ''
  str.split('  ').each do |word|
    result += decode_word(word)
    result += ' '
  end
  result
end

puts decode_result('-- -.--  -. .- -- .')
puts decode_result('.-  -... --- -..-  ..-. ..- .-.. .-..  --- ..-.  .-. ..- -... .. . ...')

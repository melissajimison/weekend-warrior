CONVERSIONS = {
  'I' => 1,
  'V' => 5,
  'X' => 10,
  'L' => 50,
  'C' => 100,
  'D' => 500,
  'M' => 1000,
}

class Roman
  def self.reverter(roman)
    romans = roman.chars

    arabic = 0
    until romans.empty?
      one_roman = romans.shift
      next_roman = romans.first

      value = CONVERSIONS[one_roman]
      next_value = CONVERSIONS[next_roman] || 0

      value *= -1 if next_value > value
      arabic += value
    end
    arabic
  end
  #   arabic_array = roman.map { |one_roman| CONVERSIONS[one_roman] }
  #
  #   if  arabic_array.length == 1
  #     total = arabic_array.reduce(:+)
  #   elsif arabic_array.length >= 2
  #     arabic_array = arabic_array.reverse
  #     arabic_array.each_with_index do |one_arabic, index|
  #       next_element = arabic_array[index + 1] unless index == arabic_array.size - 1
  #       if one_arabic >= next_element
  #         total =  next_element + one_arabic
  #       elsif  next_element < one_arabic
  #         total = one_arabic - next_element
  #       else
  #         total = "ERROR 1"
  #
  #       end
  #     end
  #   else
  #     total = "ERROR 2"
  #     #
  #   end
  #   #
  #   return total, arabic_array
  # end


end
#
# goo through each element of the array
# if the next element is > add it
#   if the nnext elemnt is lower rest it
#     total = arabic_array[0]
#     start at 0
#     if item >= next_item
#       total = item + next_item
#       if [0] > to [1] add [0] + [1]

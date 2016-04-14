class Xmas
  # def initialize(index_day)
  #   @index = index_day
  # end
  GITS_DAY = [
  "a partridge in a pear tree",
  "two turtle doves",
  "three french hens",
  "four calling birds",
  "FIVE GOLDEN RINGS",
  "six geese a-laying",
  "seven swans a-swimming",
  "eight maids a-milking",
  "nine ladies dancing",
  "ten lords a-leaping",
  "eleven pipers piping",
  "twelve drummers drumming"]

  def self.gifts(index_day)
    todays_gifts = GITS_DAY.first(index_day + 1).reverse
    if todays_gifts.length > 1
      todays_gifts[1] = "and " + todays_gifts[1]
    end
    todays_gifts
  end

  def self.verse(index_day)
    case index_day
      when 0
      @ordinal = "first"
      when 1
      @ordinal = "second"
      when 2
      @ordinal = "third"
      when 3
      @ordinal = "forth"
      when 4
      @ordinal = "fifth"
      when 5
      @ordinal = "sixth"
      when 6
      @ordinal = "seventh"
      when 7
      @ordinal = "eighth"
      when 8
      @ordinal = "ninth"
      when 9
      @ordinal = "tenth"
      else
      puts "ERROR"
    end

    first_line = "On the #{@ordinal} day of Christmas my true love gave to me\n"
    gitfs = Xmas.gifts(index_day).join("\n")
     first_line + gifts(index_day)

    # all_lines.times.each
    #   all_verses[0] = v1 + "\n" + v2
    #   # all_verses[1] = v1 + "\n" + v3




  end
end

# all_basic_verses = []
# 12.times do |i|
#  verses = [GITS_DAY[0, i+1].reverse]
#  all_basic_verses << verses
# end
# return all_basic_verses[index_day]
#
#
# all_basic_verses = []
# 12.times do |i|
#  verses = [GITS_DAY[0, i+1].reverse]
#  all_basic_verses << verses
# end
# return all_basic_verses[index_day]
#

# melissa = Xmas.new(0).first

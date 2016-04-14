class Xmas
  GIFTS = [
    " a partridge in a pear tree",
    "Two turtle doves and",
    "Three french hens",
    "Four calling birds",
    "FIVE golden rings".upcase,
    "Six geese a-laying",
    "Seven swans a-swimming",
    "Eight maids a-milking",
    "Nine ladies dancing",
    "Ten lords a-leaping",
    "Eleven pipers piping",
    "Twelve drummers drumming"
  ]

  ORNINALS = ["first", "second", "third", "fourth", "fifth", "sixth
seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
  def self.gifts
    GIFTS
    todays_gifts = GIFTS.first(day + 1)
    ## look slice method for array
    if todays_gifts.length > 1
      todays_gifts[0] = "and" + todays_gifts[1]
    end

    todays_gifts.reverse
  end

  def self.verse(day)
  first_line =  "On the #{ @ORNINALS[day] } day of Christmas my true love gave to me\n"
  gitfs = self.gifts(day).join("\n")
  first_line + gifts
  end

  def self.sing
    verses = []
    ORNINALS.length.times do |day|
      all_verses = self.verse(day)
      verses << all_verses
    end
    return verses.join("\n\n")
  end
end


##test_fourth_century // test_y2k // test_long_long_ago

def leap_year?(year)
  if year % 400 == 0
    year = true
  elsif year % 4 == 0 && year % 100 != 0
    year = true
  end
end 

#jeremy's code
# def leap_year?(year)
#   year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
# end


##test_century
  # def leap_year?(year)
  # if year % 4 == 0 && year % 100 != 0
  #     year = true
  #   end
  # end

## test_non_leap_year // test_non_leap_even_year
  # def leap_year?(year)
  #   if year % 4 == 0
  #   year = true
  #   end
  # end

  ##test_leap_year
    # def leap_year?(year)
    #     year = 1996
    # end

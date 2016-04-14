def words(text)

  text.gsub!(/[\s\n\t]+/, " ")

  text.slice!(0) if text[/\A\s/]

  hash = {}
  text.split(/\s/).each do |one_word|
    hash[one_word] = text.count(one_word)
  end

  return hash
end

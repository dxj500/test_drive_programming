class GrammarStats
  def initialize
    @count = 0.0
    @count_tests_true = 0.0
  end

  def check(text) # text is a string
    @count += 1
    remove_spaces_text = text.delete(" ")
    if remove_spaces_text[0] == text[0].upcase && (remove_spaces_text[-1].match? /[[:punct:]]/)
      @count_tests_true += 1
    end
    
    remove_spaces_text[0] == text[0].upcase && (remove_spaces_text[-1].match? /[[:punct:]]/)
      return true
  end

  def percentage_good
   total_counts = @count
    percentage  = (@count_tests_true / @count) * 100
    return percentage.round
  end

end
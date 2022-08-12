require "grammer_stats.rb"

# check(text) Returns true or false depending on whether the 
  #text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

# perc_good Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.

  RSpec.describe GrammarStats do

    it "returns true if text starts with a capital letter and ends with a punct" do 
      new_check = GrammarStats.new
      result = new_check.check("First step.")
      expect(result).to eq true
    end

    # it "returns true if text ends with a sentence ending punctuation mark" do
    #   new_check = GrammarStats.new
    #   result = new_check.check("First Step.")
    #   expect(result).to eq true
    # end

    #returns one true result as %
    
    describe "percentage_good" do
      it "returns a number for a true entry" do
        new_percentage = GrammarStats.new
        new_percentage.check("Bears!")
        result = new_percentage.percentage_good
        expect(result).to eq 100
      end
  

      it "returns 33 for 1 passed and 2 failed tests" do
        new_percentage = GrammarStats.new
        new_percentage.check("Bears!")
        new_percentage.check("bears!")
        new_percentage.check("Bears")
        result = new_percentage.percentage_good
        expect(result).to eq 33
      end

      it "returns 50% for 4 tests, 2 true 2 false" do
      new_percentage = GrammarStats.new
        new_percentage.check("Bears!")
        new_percentage.check("bears!")
        new_percentage.check("Bears")
        new_percentage.check("Pears?")
        result = new_percentage.percentage_good
        expect(result).to eq 50
      end
    end
 end

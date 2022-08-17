require 'diary_entry_new.rb'

RSpec.describe DiaryEntry do

  it "constructs" do
    diary_entry_new = DiaryEntry.new("my_title", "my_contents")
    expect(diary_entry_new.title).to eq "my_title"
    expect(diary_entry_new.contents).to eq "my_contents"
  end

  describe "#count_words" do
    it "returns zero if contents are empty  " do
      diary_entry_new = DiaryEntry.new("my_title", "")
      expect(diary_entry_new.count_words).to eq 0
    end

    it "counts the number of words in the content" do
      diary_entry_new = DiaryEntry.new("my_title", "one two three four")
      expect(diary_entry_new.count_words).to eq 4
    end
  end

  describe "#reading time" do

    it "fails if the wpm is zero" do
      diary_entry_new = DiaryEntry.new("my_title", "hello world")
      expect { diary_entry_new.reading_time(0) }.to raise_error "WPM must be greater then zero"
    end

    it "returns zero if contents are empty  " do
      diary_entry_new = DiaryEntry.new("my_title", "")
      expect(diary_entry_new.reading_time(2)).to eq 0
    end

    it "returns one if contents are one word" do
      diary_entry_new = DiaryEntry.new("my_title", "one")
      expect(diary_entry_new.reading_time(2)).to eq 1
    end

    it "returns a reading time for the conteents" do
      diary_entry_new = DiaryEntry.new("my_title", "one two three four five")
      expect(diary_entry_new.reading_time(2)).to eq 3
    end
  end


end

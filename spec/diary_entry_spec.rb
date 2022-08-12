require "diary_entry.rb"

RSpec.describe DiaryEntry do

  it "adds a title and content of text" do
    new_title = DiaryEntry.new("Today's Diary Entry", "Today was the introduction into object orientated design")
    expect(new_title.title).to eq "Today's Diary Entry"
    expect(new_title.contents).to eq "Today was the introduction into object orientated design"
  end

  it "will return the number of words in the content as a number" do
    new_count_words = DiaryEntry.new("Today's Diary Entry", "Today was the introduction into object orientated design")
    expect(new_count_words.count_words).to eq 8
  end

  it "returns the length of time that could be taken to read the content based on the number of words the user can read per minute" do
    new_reading_time = DiaryEntry.new("Today's Diary Entry", "Today was the introduction into object orientated design")
    result = new_reading_time.reading_time(200)
    expect(result).to eq 1
  end

  describe "reading_chunk" do
    context "with a text readable within the given minutes" do
      it "returns the full text" do
        diary_entry = DiaryEntry.new("new title", "one two three four")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "one two three four"
      end
    end

    context "with a contents unreadable within the time" do
      it "returns a readable chunk" do
        diary_entry = DiaryEntry.new("new title", "one two three four")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end
    end

    context "next time we have time to read" do
      it "returns the next chunk" do
        diary_entry = DiaryEntry.new("new title", "one two three four")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "three four"
      end
    end
  end
end


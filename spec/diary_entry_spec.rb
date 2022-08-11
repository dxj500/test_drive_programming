require "diary_entry.rb"

RSpec.describe DiaryEntry do

  it "adds a title of text" do
    new_title = DiaryEntry.new
    result = new_title.title("Today's Diary Entry")
    expect(result).to eq "Today's Diary Entry"
  end

  it "adds the content of text" do
    new_content = DiaryEntry.new 
    result = new_content.contents("Today was the introduction into object orientated design")
    expect(result).to eq "Today was the introduction into object orientated design"
  end

  it "will return the number of words in the content as a number" do
    new_count_words = DiaryEntry.new
    new_count_words = content.length
    result = new_count_words
    expect(result).to eq (8)
  end

  it "returns the length of time that could be taken to read the content based on the number of words the user can read per minute" do
    new_reading_time = DiaryEntry.new
    new_reading_time = content / reading_time(200)
    result = new_reading_time
    expect(result).to eq (1)
  end

  it "lets the user see the content that they can read in the spare time they have" do
    new_reading_chunk = DiaryEntry.new
    new_reading_chunk.reading_chunk(200, 5)
    #take the content eg 2000 words 
    #use wpm to calc how long to read if wpm = 200 with content 10 mins to read it all
    #show the amoount of words from content based on spare time, if 5 mins then will show 50% of content
    



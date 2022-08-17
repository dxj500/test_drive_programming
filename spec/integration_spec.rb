require 'diary.rb'
require 'diary_entry_new'

RSpec.describe "integration" do
  context "after adding some diary entries" do
    it "lists the diary entries added" do
      diary = Diary.new 
      diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry_new_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_new_1)
      diary.add(diary_entry_new_2 )
      expect(diary.all).to eq [diary_entry_new_1, diary_entry_new_2]
    end

  describe "word counting behaviour" do
    it "counts the words in all diary entries" do
      diary = Diary.new 
      diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry_new_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_new_1)
      diary.add(diary_entry_new_2 )
      expect(diary.count_words).to eq 6
    end
  end

  describe "reading time behaviour" do

    it "fails where wpm is zero" do
      diary = Diary.new
      diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary.add(diary_entry_new_1)
      expect { diary.reading_time(0) }.to raise_error "WPM must be greater then zero"
    end

    it "calculates reading time for all entries where it fits exaclty" do
      diary = Diary.new 
      diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents 1")
      diary_entry_new_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_new_1)
      diary.add(diary_entry_new_2)
      expect(diary.reading_time(2)).to eq 3
    end

    it "calculates reading time for all entries where it falls over a minute " do
      diary = Diary.new 
      diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents")
      diary_entry_new_2 = DiaryEntry.new("my title 2", "my contents 2")
      diary.add(diary_entry_new_1)
      diary.add(diary_entry_new_2)
      expect(diary.reading_time(2)).to eq 3
    end
  end

  describe "best reading time entry behaviour" do
    it "fails where wpm is zero" do
      diary = Diary.new
        diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents")
        diary.add(diary_entry_new_1)
        expect { diary.find_best_entry_for_reading_time(0, 1) }.to raise_error(
          "WPM must be greater then zero"
        )
    end


    context "where we have just one entry and it is readable in the time" do
      it "returns that entry" do
        diary = Diary.new
        diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents")
        diary.add(diary_entry_new_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq diary_entry_new_1
      end
    end

    context "where we have just one entry and it is unreadable in the time" do
      it "returns nil" do
        diary = Diary.new
        diary_entry_new_1 = DiaryEntry.new("my title 1", "my contents longer")
        diary.add(diary_entry_new_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context "where we have multiple entries" do
      it "returns the longest entry the user could read in the time" do
        diary = Diary.new
        best_entry = DiaryEntry.new("my title", "one two")
        diary.add(DiaryEntry.new("my title", "one"))
        diary.add(best_entry)
        diary.add(DiaryEntry.new("my title", "one two three"))
        diary.add(DiaryEntry.new("my title", "one two three four"))
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end
end

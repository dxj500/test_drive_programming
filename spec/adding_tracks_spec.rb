require "adding_tracks.rb"

RSpec.describe AddMusic do

  context "new list is available" do
    it "check for a new list" do
      new_track = AddMusic.new
      expect(new_track.music_list).to eq []
    end
  end

  context "after listening to a new music track" do
    it "add the track to the list" do
      new_track = AddMusic.new
      result = new_track.add_tracks("Movin On Up")
      expect(result).to eq ["Movin On Up"]
    end
  end

  context "if the list of tracks is to be reviewed" do
    it "returns the list" do
    new_track = AddMusic.new
    new_track.add_tracks("Movin On Up")
    new_track.add_tracks("Wake Up")
    new_track.add_tracks("Life is a rollercoaster")
    expect(new_track.music_list).to eq ["Movin On Up", "Wake Up", "Life is a rollercoaster"]
  end
end

  context "the list should not hold duplicate track lists" do
    it "returns the list with no duplicates" do
      new_track = AddMusic.new
      new_track.add_tracks("Movin On Up")
      new_track.add_tracks("Movin On Up")
      expect(new_track.music_list).to eq ["Movin On Up"]
    end
  end



end

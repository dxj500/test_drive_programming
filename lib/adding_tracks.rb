class AddMusic

  def initialize
    @music_list = []
  end

  def add_tracks(track)
    @music_list << track
    @music_list.uniq!
    return @music_list
  end



  def music_list
    return @music_list
  end












end
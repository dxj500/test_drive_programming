Add Music Tracks to a List

1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

2. Design the Class Interface

class AddMusic
end

def music_list
end

def add_tracks(track)
end

3. Create Examples as Tests

#1 (check for empty list)
new_check = AddMusic.new
result []

#2 (add track)
new_check = AddMusic.new
result ["Movin On Up"]

#3 (see list)
new_check = AddMusic.new
add_tracks ["Moving On Up"]
add_tracks ["Wake Up"]
result ["Movin On Up", "Wake Up"]

#4 (no duplicates)
new_check = AddMusic.new
add_tracks ["Moving On Up"]
add_tracks ["Moving On Up"]
result ["Movin On Up"]
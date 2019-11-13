class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists


    def activity
        puts "\nWhich of the following describes the type of activity for which you want to create a playlist?\n
        a. Casual walk
        b. Vigorous walk
        c. Steady-pace run
        d. Sprints or other high-intensity intervals\n"

        activity_input = gets.chomp
        puts "\n"
        # List song choices to be added to playlist
        # Add songs to playlist
        # Tell user to get moving


    # Links user's input (a-d) with a preset BPM range. 
    # Establishes min and max values for #playlist_creation below

        if activity_input.downcase == "a"
            puts "Take a leisurely stroll with songs in the 130-140 BPM range." 
            return playlist_creation(130, 140)
        end
        if activity_input.downcase == "b"
            puts "Speed Walker!\nWe'll pull together a list of songs within the 140-150 BPM range."
            return playlist_creation(140, 150)       
        end
        if activity_input.downcase == "c"
            puts "It's a marathon and not a sprint!\nKeep a steady pace with songs in the 150-160 BPM range." 
            return playlist_creation(150, 160)      
        end
        if activity_input.downcase == "d"
            puts "Hope you're ready to sweat!\nSongs with 160-180 BPM should keep your heart rate up!"
            return playlist_creation(160, 180)       
        end
    end



    def self.get_130_140_songs
        get_songs = []
        self.all.select do |song|
        if song.tempo >= 130 && song.tempo <= 140
            song << get_songs
        end
        end  
        get_songs
    end

end


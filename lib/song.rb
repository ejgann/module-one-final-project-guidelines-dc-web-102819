class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists


    #################################################
#   #Song class variables/methods
    #################################################

    @@tempo_assignment = ""
    def self.tempo_assignment
        @@tempo_assignment
    end
    # creates a Song class variable and method for tempo_assignment


    ########################################
   


end


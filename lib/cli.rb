require_relative '../config/environment.rb'
require_relative '../lib/song.rb'
require_relative '../lib/playlist.rb'


class Cli

    # def title
    #     # will contain CLI art and title of application
    # end

    def greeting
        puts "\nWelcome to Workout Beats! Create a music playlist based on songs' beats per minute to inspire you while working out. Give us an idea of what type of exercise you'll be doing, and we will create a playlist customized just for you that contain songs with similar beats per minute (BPM) that will power your workout.\n"
    end

    #################################################
    # Restart Loop -- allows user to restart the app 
    # or exit the program
    #################################################

    def loop_method
        puts "Would you like to run this app again? (yes | no)"
        restart = gets.chomp
        puts "\n"
        if restart == "no"
            puts "Thank you for using Workout Beats!"
        elsif restart == "yes"
            until restart == "yes" || restart == "no" do
                puts "That is not an option, please type 'yes' or 'no'"
                puts "Would you like to run this app again? (yes | no)"

                restart = gets.chomp
                puts "\n"
            end
        end
        return restart
    end

# ####### Asks for user's desired exercise level #########

    def activity
        puts "\nWhich of the following describes the type of activity for which you want to create a playlist?\n
        a. Casual walk
        b. Vigorous walk
        c. Steady-pace run
        d. Sprints or other high-intensity intervals\n"

        activity_input = gets.chomp
        puts "\n"

        if activity_input.downcase == "a"
            puts "Take a leisurely stroll with songs in the 130-140 BPM range." 
            
            puts "\nWhat would you like to name your playlist?"

            title = gets.chomp 
            min_tempo = 130
            max_tempo = 140


            puts "\nGreat! Your '#{title}' playlist will contain songs with a minimum tempo of #{min_tempo} BPM and a maximum tempo of #{max_tempo} BPM."


            return Playlist.create(title, min_tempo, max_tempo)
                playlist_a = []
                song_130_140 = Song.all.select do |song|
                    if song.min_tempo >= 130 && song.max <= 140
                        playlist_a << song_130_140
                    end
            # playlist_name(130, 140)
                    end
                end

        if activity_input.downcase == "b"
            puts "Speed Walker!\nWe'll pull together a list of songs within the 140-150 BPM range."
            return playlist_name(140, 150)       
        end
        if activity_input.downcase == "c"
            puts "It's a marathon and not a sprint!\nKeep a steady pace with songs in the 150-160 BPM range." 
            return playlist_name(150, 160)      
        end
        if activity_input.downcase == "d"
            puts "Hope you're ready to sweat!\nSongs with 160-180 BPM should keep your heart rate up!"
            return playlist_name(160, 180)       
        end
    end


    #################################################
    # playlist_name -- asks user for playlist name and creates a playlist using that name as title and passing in min and max from #tempo_assignment
    #################################################

    # def playlist_name(min_tempo, max_tempo)
        # puts "\nWhat would you like to name your playlist?"
        # title = gets.chomp 
        # puts "\nGreat! Your '#{title}' playlist will contain songs with a minimum tempo of #{min_tempo} BPM and a maximum tempo of #{max_tempo} BPM."


        #  Playlist.create(title: "#{title}")
    # end




    # def create_playlists(min_tempo, max_tempo)
    #     playlist_1 = []
    #     song_130_140 = Song.all.select do |song|
    #         if song.min_tempo >= 130 && song.max <= 140
    #             playlist_name(130, 140) << song_130_140
    #         end   
    # end

    # # METHODS TO RETRIEVE SONGS BY RANGE FROM DB

    # def get_130_140_songs(tempo)
    #     where(tempo: 130...140)
    # end

    # def get_140_150_songs(tempo)
    #     where(tempo: 140...150)
    # end

    # def get_150_160_songs(tempo)
    #     where(tempo: 150...160)
    # end

    # def get_160_180_songs(tempo)
    #     where(tempo: 160...180)
    # end

end

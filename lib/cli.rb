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

    #################################################
    # Playlist creation -- asks user for playlist name
    # and creates a playlist using that name as title
    # and passing in min and max from #tempo_assignment
    #################################################

    def playlist_creation(min_tempo, max_tempo)
        # Ask the user what they want to name their playlist, then pass in to create the playlist
        puts "What would you like to name your playlist?"
        title = gets.chomp 
        puts "Great! Your #{title} playlist will contain songs whose minimum tempo is #{min_tempo} BPM and whose maximum tempo is #{max_tempo} BPM."
        return Playlist.create(title: "#{title}", min_tempo: "#{min_tempo}", max_tempo: "#{max_tempo}")
        
    end

    
    

    
        
    

end
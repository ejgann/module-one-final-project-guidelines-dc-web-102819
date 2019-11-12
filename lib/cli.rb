require_relative '../config/environment.rb'
require_relative '../lib/song.rb'
require_relative '../lib/playlist.rb'


class Cli

    # def title
    #     # will contain CLI art and title of application
    # end

    def greeting
        puts "\nWelcome to Workout Beats! Create a music playlist based on songs' beats per minute to inspire you while working out. Once you specify your desired BPM, we will create a playlist customized just for you.\n"
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


    #################################################
    # Activity Question -- activity puts question/answer
    # options and captures user's answer, which is 
    # assigned to "activity_input" variable
    #################################################

    def activity
        puts "\nWhich of the following describes the type of activity for which you want to create a playlist?\n
        a. Casual walk
        b. Vigorous walk
        c. Steady-pace run
        d. Sprints or other high-intensity intervals\n"

        activity_input = gets.chomp
        puts "\n"
        new_playlist = tempo_assignment(activity_input)
        # List song choices to be added to playlist
        # Add songs to playlist
        # Tell user to get moving
    end


    #################################################
    # Tempo assignment -- links user's input (a-d)
    # with a preset BPM range. Establishes min and
    # max values for #playlist_creation below
    #################################################

    def tempo_assignment(activity_input)
        if activity_input.downcase == "a"
            puts "Take a stroll with songs in the 130-140 BPM range." 
            return playlist_creation(130, 140)
        end
        if activity_input.downcase == "b"
            puts "Speed Walker! We'll pull together a list of songs within the 140-150 BPM range."
            return playlist_creation(140, 150)       
        end
        if activity_input.downcase == "c"
            puts "It's a marathon and not a sprint! Keep a steady pace with songs in the 150-160 BPM range." 
            return playlist_creation(150, 160)      
        end
        if activity_input.downcase == "d"
            puts "Hope you're ready to sweat! Let's queue up a playlist of songs with 160-180 BPM."
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
        puts "Your playlist called #{title} has been created. The songs included will range from #{min_tempo} to #{max_tempo} BPM."
        return Playlist.create(title, min_tempo, max_tempo) 
        
    end
        
    

end
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


    #################################################
    # Activity Question -- activity puts question/answer options and captures user's answer, which is assigned to "activity_input" variable
    #################################################

    
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
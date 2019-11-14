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

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo)

            puts new_playlist.name = "#{title.upcase}"
        end
    end




end

        if activity_input.downcase == "b"
            puts "Speed Walker!\nWe'll pull together a list of songs within the 140-150 BPM range."

            puts "\nWhat would you like to name your playlist?"
            
            title = gets.chomp 
            min_tempo = 140
            max_tempo = 150

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo)
        end

        if activity_input.downcase == "c"
            puts "It's a marathon and not a sprint!\nKeep a steady pace with songs in the 150-160 BPM range." 
            # return playlist_name(150, 160) 
            
            puts "\nWhat would you like to name your playlist?"
            
            title = gets.chomp 
            min_tempo = 150
            max_tempo = 160

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo)

        end
        if activity_input.downcase == "d"
            puts "Hope you're ready to sweat!\nSongs with 160-180 BPM should keep your heart rate up!"
            # return playlist_name(160, 180)   
            
            puts "\nWhat would you like to name your playlist?"
            
            title = gets.chomp 
            min_tempo = 160
            max_tempo = 180

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo)

        end
 




    # # METHODS TO RETRIEVE SONGS BY RANGE FROM DB

    # def get_130_140_songs(tempo)
    #     where(tempo: 130...140)
    # end



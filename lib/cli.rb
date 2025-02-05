require_relative '../config/environment.rb'
require_relative '../lib/song.rb'
require_relative '../lib/playlist.rb'


class Cli

    def name_art
        puts "\n\n\n\n\n
                                                                                                                                      
                                                                                                                                      
        BBBBBBBBBBBBBBBBB                                                  tttt                    IIIIIIIIII         tttt                !!! 
        B::::::::::::::::B                                              ttt:::t                    I::::::::I      ttt:::t               !!:!!
        B::::::BBBBBB:::::B                                             t:::::t                    I::::::::I      t:::::t               !:::!
        BB:::::B     B:::::B                                            t:::::t                    II::::::II      t:::::t               !:::!
          B::::B     B:::::B    eeeeeeeeeeee      aaaaaaaaaaaaa   ttttttt:::::ttttttt                I::::I  ttttttt:::::ttttttt         !:::!
          B::::B     B:::::B  ee::::::::::::ee    a::::::::::::a  t:::::::::::::::::t                I::::I  t:::::::::::::::::t         !:::!
          B::::BBBBBB:::::B  e::::::eeeee:::::ee  aaaaaaaaa:::::a t:::::::::::::::::t                I::::I  t:::::::::::::::::t         !:::!
          B:::::::::::::BB  e::::::e     e:::::e           a::::a tttttt:::::::tttttt                I::::I  tttttt:::::::tttttt         !:::!
          B::::BBBBBB:::::B e:::::::eeeee::::::e    aaaaaaa:::::a       t:::::t                      I::::I        t:::::t               !:::!
          B::::B     B:::::Be:::::::::::::::::e   aa::::::::::::a       t:::::t                      I::::I        t:::::t               !:::!
          B::::B     B:::::Be::::::eeeeeeeeeee   a::::aaaa::::::a       t:::::t                      I::::I        t:::::t               !!:!!
          B::::B     B:::::Be:::::::e           a::::a    a:::::a       t:::::t    tttttt            I::::I        t:::::t    tttttt      !!! 
        BB:::::BBBBBB::::::Be::::::::e          a::::a    a:::::a       t::::::tttt:::::t          II::::::II      t::::::tttt:::::t          
        B:::::::::::::::::B  e::::::::eeeeeeee  a:::::aaaa::::::a       tt::::::::::::::t          I::::::::I      tt::::::::::::::t      !!! 
        B::::::::::::::::B    ee:::::::::::::e   a::::::::::aa:::a        tt:::::::::::tt          I::::::::I        tt:::::::::::tt     !!:!!
        BBBBBBBBBBBBBBBBB       eeeeeeeeeeeeee    aaaaaaaaaa  aaaa          ttttttttttt            IIIIIIIIII          ttttttttttt        !!! 
                                                                                                                                              
                                                                                                                                              
                                                                                                                                              
                                                                                                                                              
                                                                                                                                              
                                                                                                                                              
                                                                                                                                              
        "
    end

    def greeting
        puts "\nWelcome to Beat It! Create a music playlist based on songs' beats per minute to inspire you while working out. Plug in your activity level and get a playlist containing songs with similar beats per minute (BPM) that will power your workout.\n"
    end

    #################################################
    # Restart Loop -- allows user to restart the app 
    # or exit the program
    #################################################

    

# ####### Asks for user's desired exercise level #########

    def activity
        puts "\nWhat type of activity will you be doing?\n
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
            # produces an array of song objects within the 130-140 range

            song_list = new_playlist.map {|song| song.title}

            puts song_list
            
        end

        if activity_input.downcase == "b"
            puts "Speed Walker!\nWe'll pull together a list of songs within the 140-150 BPM range."

            puts "\nWhat would you like to name your playlist?"
            
            title = gets.chomp 
            min_tempo = 140
            max_tempo = 150

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo)

            song_list = new_playlist.map {|song| song.title}

            puts song_list
        end

        if activity_input.downcase == "c"
            puts "It's a marathon and not a sprint!\nKeep a steady pace with songs in the 150-160 BPM range." 
     
            puts "\nWhat would you like to name your playlist?"
            
            title = gets.chomp 
            min_tempo = 150
            max_tempo = 160

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo) 
            
            song_list = new_playlist.map {|song| song.title}

            puts song_list
        end

        if activity_input.downcase == "d"
            puts "Hope you're ready to sweat!\nSongs with 160-180 BPM should keep your heart rate up!"   
            
            puts "\nWhat would you like to name your playlist?"
            
            title = gets.chomp 
            min_tempo = 160
            max_tempo = 180

            puts "\nGreat! Your '#{title}' playlist contains songs with #{min_tempo} to #{max_tempo} BPM.\n\n\n"
            new_playlist = Playlist.create_playlist(title, min_tempo, max_tempo)

            song_list = new_playlist.map {|song| song.title}

            puts song_list
        end
    end

    def loop_method
        puts "Would you like to create a different playlist? (yes | no)"
        restart = gets.chomp
        puts "\n"
        if restart == "no"
            puts "Thank you for using Beat It!"
        elsif restart == "yes"
            until restart == "yes" || restart == "no" do
                puts "That is not an option, please type 'yes' or 'no'"
                puts "Would you like to create a different playlist? (yes | no)"

                restart = gets.chomp
                puts "\n"
            end
        end
        return restart
    end

end



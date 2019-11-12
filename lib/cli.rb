require_relative '../config/environment.rb'
require_relative '../lib/song.rb'


class Cli

    # def title
    #     # will contain CLI art and title of application
    # end

    def greeting
        puts "\nWelcome to Workout Beats! Create a music playlist based on songs' beats per minute to inspire you while working out. Once you specify your desired BPM, we will create a playlist customized just for you.\n"
    end

    #################################################
    # Restart Loop
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
    # Activity Question
    #################################################

    # activity puts question/answer options and captures user's answer, which is assigned to "activity_input" variable
    def activity
        puts "\nWhich of the following describes the type of activity for which you want to create a playlist?\n
        a. Casual walk
        b. Vigorous walk
        c. Steady-pace run
        d. Sprints or other high-intensity intervals\n"

        activity_input = gets.chomp
        puts "\n"
        tempo_assignment(activity_input)
    end


    #################################################
    # Tempo assignment
    #################################################

    # tempo_assignment method connects "activity_input" variable defined in #activity method
    # and assigns each input option (a-d) to a bpm range 
    def tempo_assignment(activity_input)
        if activity_input.downcase == "a"
            tempo_range = (130...140)
            puts "Great! It sounds like the 130-140 BPM range might work well.\n Here's a playlist of songs you might enjoy."       
        end
        if activity_input.downcase == "b"
            tempo_range = (140...150)
            puts "Speed Walker! Check out this playlist of songs within the 140-150 BPM range."       
        end
        if activity_input.downcase == "c"
            tempo_range = (150...160)
            puts "It's a marathon and not a sprint! Keep a steady pace with these songs in the 150-160 BPM range."       
        end
        if activity_input.downcase == "d"
            tempo_range = (160...180)
            puts "Hope you're ready to sweat! Queue up this playlist of songs with 160-180 BPM."       
        end
    end

    #################################################
    # Playlist creation
    #################################################

    def playlist_creation
        Playlist.create(title, min_tempo, max_tempo)  
    end


            
            
        # # if "b", set to (140...150)        
        # elsif activity_input.downcase == "b"
        #     @@tempo_assignment = (140...150)
        #     self.tempo_assignment = (140...150)
        #     self.save

        # # if "c", set to (150...160)
        # elsif activity_input.downcase == "c"
        #     @@tempo_assignment = (150...160)
        #     self.tempo_assignment = (150...160)
        #     self.save

        # # if "d", set to (160...180)
        # elsif activity_input.downcase == "d"
        #     @@tempo_assignment = (160...180)
        #     self.tempo_assignment = (160...180)
        #     self.save 
            

    

end
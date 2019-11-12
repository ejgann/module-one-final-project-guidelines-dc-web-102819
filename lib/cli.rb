require_relative '../config/environment.rb'
require_relative '../lib/song.rb'



class Cli

    # def title
    #     # will contain CLI art and title of application
    # end

    def greeting
        puts "\nWelcome to Beat It! Create a music playlist based on songs' beats per minute to inspire you during your workouts or through the most tedious tasks. Once you specify your desired BPM, Beat It will create a playlist customized just for you.\n"
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
        d. Sprints or high-intensity intervals\n"

        activity_input = gets.chomp
        puts "\n"
        tempo_assignment(activity_input)
    end

    # tempo_assignment method takes "activity_input" variable defined in #activity method
    # and connects each possible input option (a-d) to its string assignment within class variable and method
    def tempo_assignment(activity_input)
        # if "a", links user input to BPM range and links song class method to same range; saves
        if activity_input.downcase == "a"
            @@tempo_assignment = (130...140)
            self.tempo_assignment = (130...140)
                self.save
                # .save saves this for activerecord purposes
            
        # if "b", set to (140...150)        
        elsif activity_input.downcase == "b"
            @@tempo_assignment = (140...150)
            self.tempo_assignment = (140...150)
            self.save

        # if "c", set to (150...160)
        elsif activity_input.downcase == "c"
            @@tempo_assignment = (150...160)
            self.tempo_assignment = (150...160)
            self.save

        # if "d", set to (160...180)
        elsif activity_input.downcase == "d"
            @@tempo_assignment = (160...180)
            self.tempo_assignment = (160...180)
            self.save 
            
        else 
            puts "If you want to create a playlist, select a letter to get started."
                activity

                # #### Need way out of loop? ###
        end
     
    end
    #tempo_assignment takes the "activity_input" variable provided by user in #activity method





end
class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists


    #################################################
#   #Song class variables/methods
    #################################################

    @@act_assignment = ""
    def self.activity_assignment
        @@act_assignment
    end
    # creates a Song class variable and method for activity_assignment


    #################################################
    # Activity_level Question
    #################################################

    def activity_level
        puts "Which of the following describes the type of activity for which you want to create a playlist?\n
        a. Casual walk
        b. Vigorous walk
        c. Steady-pace run
        d. Sprints or high-intensity intervals"

        activity_input = gets.chomp
        puts "\n"
        activity_assignment(activity_input)
    end
    # activity_question puts question/answer options and captures user's answer, which is assigned to "activity_input" variable


    def activity_assignment(activity_input)
        # if "a", set song's class var to "Casual walk" and links it to song class method; saves
        if activity_input.downcase == "a"
            @@act_assignment = "Casual walk"

            self.activity_assignment = "Casual walk"
                self.save
                # .save saves this for activerecord purposes
            
        # if "b", set to "Vigorous walk"        
        elsif activity_input.downcase == "b"
            @@act_assignment = "Vigorous walk"

            self.activity_assignment = "Vigorous walk"
            self.save

        # if "c", set to Steady-pace run"
        elsif activity_input.downcase == "c"
            @@act_assignment = "Steady-pace run"

            self.activity_assignment = "Steady-pace run"
            self.save

        # if "d", set to "Sprints or high-intensity intervals"
        elsif activity_input.downcase == "d"
            @@act_assignment = "Sprints or high-intensity intervals"

            self.activity_assignment = "Sprints or high-intensity intervals"
            self.save 
            
        end

        
     
    end
    #activity_assignment takes the "activity_input" variable provided by user in #activity_level method




end


class Song < ActiveRecord::Base

    has_many :song_playlists
    has_many :playlists, through: :song_playlists


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
    # activity_question prints question and captures user's answer


    def activity_assignment(activity_input)

    end
    #activity_assignment takes the "activity_input" variable provided by user in #activity_level method




end

